.class public abstract Lcom/oppo/tribune/util/connection/HttpMethod;
.super Ljava/lang/Object;
.source "HttpMethod.java"


# static fields
.field private static final LOCAL_PATTERN:Ljava/util/regex/Pattern;

.field public static final TRIBUNE_HTTPSTAT:Ljava/lang/String; = "Sys-extra"

.field public static final TRIBUNE_LAST_MD5Code:Ljava/lang/String; = "MD5C"

.field public static final TRIBUNE_TASK_REWARD:Ljava/lang/String; = "task-reward"

.field public static final USER_AGENT:Ljava/lang/String; = "Mozilla/5.0 (Linux; U; Android 2.2; zh-cn; Desire_A8181 Build/FRF91) AppleWebKit/533.1 (KHTML, like Gecko) Version/4.0 Mobile Safari/533.1"


# instance fields
.field protected final mConn:Ljava/net/HttpURLConnection;

.field protected final mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-string v0, "([^=]+)=([^;]+);"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/oppo/tribune/util/connection/HttpMethod;->LOCAL_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "extra"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/tribune/util/connection/HttpMethod;->mUrl:Ljava/lang/String;

    .line 57
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/util/connection/HttpMethod;->createConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/oppo/tribune/util/connection/HttpMethod;->mConn:Ljava/net/HttpURLConnection;

    .line 58
    invoke-virtual {p0, p2}, Lcom/oppo/tribune/util/connection/HttpMethod;->setHeaderExtra(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/oppo/tribune/util/connection/HttpMethod;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/util/connection/HttpMethod;->onInitConnection(Ljava/net/HttpURLConnection;)V

    .line 60
    return-void
.end method

.method public static formatCookieList(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/cookie/Cookie;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 213
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 214
    :cond_0
    const-string v4, ""

    .line 228
    :goto_0
    return-object v4

    .line 217
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 218
    .local v0, "b":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/cookie/Cookie;

    .line 219
    .local v1, "cookie":Lorg/apache/http/cookie/Cookie;
    invoke-interface {v1}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Lorg/apache/http/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    const-string v4, "; "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 223
    .end local v1    # "cookie":Lorg/apache/http/cookie/Cookie;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    .line 224
    .local v3, "len":I
    const/4 v4, 0x2

    if-lt v3, v4, :cond_3

    .line 225
    add-int/lit8 v4, v3, -0x2

    invoke-virtual {v0, v4, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 228
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static final getCookie(Ljava/net/HttpURLConnection;)Ljava/util/List;
    .locals 10
    .param p0, "conn"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/cookie/Cookie;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v8

    .line 147
    .local v8, "r":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    const/4 v7, 0x0

    .line 149
    .local v7, "maps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 153
    :goto_0
    if-eqz v7, :cond_2

    .line 154
    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 155
    .local v5, "key":Ljava/lang/String;
    const-string v9, "Set-Cookie"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 159
    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 160
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    .line 161
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 162
    .local v0, "cookie":Ljava/lang/String;
    invoke-static {v0}, Lcom/oppo/tribune/util/connection/HttpMethod;->newBasicClientCookie(Ljava/lang/String;)Lorg/apache/http/impl/cookie/BasicClientCookie;

    move-result-object v4

    .line 163
    .local v4, "item":Lorg/apache/http/impl/cookie/BasicClientCookie;
    if-eqz v4, :cond_1

    .line 164
    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 150
    .end local v0    # "cookie":Ljava/lang/String;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "item":Lorg/apache/http/impl/cookie/BasicClientCookie;
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 151
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 171
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    return-object v8
.end method

.method private static newBasicClientCookie(Ljava/lang/String;)Lorg/apache/http/impl/cookie/BasicClientCookie;
    .locals 4
    .param p0, "cookie"    # Ljava/lang/String;

    .prologue
    .line 175
    sget-object v1, Lcom/oppo/tribune/util/connection/HttpMethod;->LOCAL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 176
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    new-instance v1, Lorg/apache/http/impl/cookie/BasicClientCookie;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/impl/cookie/BasicClientCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected createConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 78
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 80
    .local v0, "conn":Ljava/net/HttpURLConnection;
    const-string v2, "Accept"

    const-string v3, "*/*"

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v2, "Accept-Language"

    const-string v3, "zh-cn"

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v2, "Accept-Charset"

    const-string v3, "utf-8"

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v2, "Accept-Encoding"

    const-string v3, "gzip, deflate"

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v2, "User-Agent"

    const-string v3, "Mozilla/5.0 (Linux; U; Android 2.2; zh-cn; Desire_A8181 Build/FRF91) AppleWebKit/533.1 (KHTML, like Gecko) Version/4.0 Mobile Safari/533.1"

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v2, "Connection"

    const-string v3, "close"

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 86
    return-object v0

    .line 87
    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    :catch_0
    move-exception v1

    .line 88
    .local v1, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 89
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 90
    .end local v1    # "e":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v1

    .line 91
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 92
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2
.end method

.method public execute(Ljava/io/OutputStream;)Z
    .locals 6
    .param p1, "output"    # Ljava/io/OutputStream;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 281
    :try_start_0
    iget-object v4, p0, Lcom/oppo/tribune/util/connection/HttpMethod;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {p0, v4}, Lcom/oppo/tribune/util/connection/HttpMethod;->onDoOutput(Ljava/net/HttpURLConnection;)V

    .line 283
    iget-object v4, p0, Lcom/oppo/tribune/util/connection/HttpMethod;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v4

    const/16 v5, 0xc8

    if-eq v4, v5, :cond_0

    .line 312
    iget-object v3, p0, Lcom/oppo/tribune/util/connection/HttpMethod;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 314
    :goto_0
    return v2

    .line 293
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/oppo/tribune/util/connection/HttpMethod;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {p0, v4}, Lcom/oppo/tribune/util/connection/HttpMethod;->wrapInputStream(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 296
    .local v1, "input":Ljava/io/InputStream;
    :try_start_2
    invoke-static {v1, p1}, Lcom/oppo/tribune/util/FileUtils;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 300
    iget-object v4, p0, Lcom/oppo/tribune/util/connection/HttpMethod;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {p0, v4}, Lcom/oppo/tribune/util/connection/HttpMethod;->onFinishInput(Ljava/net/HttpURLConnection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 303
    const/4 v4, 0x1

    :try_start_3
    invoke-static {v1, v4}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 312
    iget-object v2, p0, Lcom/oppo/tribune/util/connection/HttpMethod;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    move v2, v3

    goto :goto_0

    .line 303
    :catchall_0
    move-exception v3

    const/4 v4, 0x1

    :try_start_4
    invoke-static {v1, v4}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    throw v3
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 305
    .end local v1    # "input":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 306
    .local v0, "e":Ljava/net/SocketTimeoutException;
    :try_start_5
    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 312
    iget-object v3, p0, Lcom/oppo/tribune/util/connection/HttpMethod;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 307
    .end local v0    # "e":Ljava/net/SocketTimeoutException;
    :catch_1
    move-exception v0

    .line 308
    .local v0, "e":Ljava/net/SocketException;
    :try_start_6
    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 312
    iget-object v3, p0, Lcom/oppo/tribune/util/connection/HttpMethod;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 309
    .end local v0    # "e":Ljava/net/SocketException;
    :catch_2
    move-exception v0

    .line 310
    .local v0, "e":Ljava/io/IOException;
    :try_start_7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 312
    iget-object v3, p0, Lcom/oppo/tribune/util/connection/HttpMethod;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v2

    iget-object v3, p0, Lcom/oppo/tribune/util/connection/HttpMethod;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v2
.end method

.method public execute()[B
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 236
    :try_start_0
    iget-object v5, p0, Lcom/oppo/tribune/util/connection/HttpMethod;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {p0, v5}, Lcom/oppo/tribune/util/connection/HttpMethod;->onDoOutput(Ljava/net/HttpURLConnection;)V

    .line 238
    iget-object v5, p0, Lcom/oppo/tribune/util/connection/HttpMethod;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->connect()V

    .line 240
    iget-object v5, p0, Lcom/oppo/tribune/util/connection/HttpMethod;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v1

    .line 242
    .local v1, "code":I
    const/16 v5, 0xc8

    if-eq v1, v5, :cond_0

    .line 271
    iget-object v5, p0, Lcom/oppo/tribune/util/connection/HttpMethod;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v0, v4

    .line 273
    .end local v1    # "code":I
    :goto_0
    return-object v0

    .line 252
    .restart local v1    # "code":I
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/oppo/tribune/util/connection/HttpMethod;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {p0, v5}, Lcom/oppo/tribune/util/connection/HttpMethod;->wrapInputStream(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 254
    .local v3, "input":Ljava/io/InputStream;
    :try_start_2
    invoke-static {v3}, Lcom/oppo/tribune/util/FileUtils;->input2byte(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 259
    .local v0, "buf":[B
    iget-object v5, p0, Lcom/oppo/tribune/util/connection/HttpMethod;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {p0, v5}, Lcom/oppo/tribune/util/connection/HttpMethod;->onFinishInput(Ljava/net/HttpURLConnection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 262
    const/4 v5, 0x1

    :try_start_3
    invoke-static {v3, v5}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 271
    iget-object v4, p0, Lcom/oppo/tribune/util/connection/HttpMethod;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 262
    .end local v0    # "buf":[B
    :catchall_0
    move-exception v5

    const/4 v6, 0x1

    :try_start_4
    invoke-static {v3, v6}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    throw v5
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 264
    .end local v1    # "code":I
    .end local v3    # "input":Ljava/io/InputStream;
    :catch_0
    move-exception v2

    .line 265
    .local v2, "e":Ljava/net/SocketTimeoutException;
    :try_start_5
    invoke-virtual {v2}, Ljava/net/SocketTimeoutException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 271
    iget-object v5, p0, Lcom/oppo/tribune/util/connection/HttpMethod;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .end local v2    # "e":Ljava/net/SocketTimeoutException;
    :goto_1
    move-object v0, v4

    .line 273
    goto :goto_0

    .line 266
    :catch_1
    move-exception v2

    .line 267
    .local v2, "e":Ljava/net/SocketException;
    :try_start_6
    invoke-virtual {v2}, Ljava/net/SocketException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 271
    iget-object v5, p0, Lcom/oppo/tribune/util/connection/HttpMethod;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    .line 268
    .end local v2    # "e":Ljava/net/SocketException;
    :catch_2
    move-exception v2

    .line 269
    .local v2, "e":Ljava/io/IOException;
    :try_start_7
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 271
    iget-object v5, p0, Lcom/oppo/tribune/util/connection/HttpMethod;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    .end local v2    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v4

    iget-object v5, p0, Lcom/oppo/tribune/util/connection/HttpMethod;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v4
.end method

.method public final getCookie()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/cookie/Cookie;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lcom/oppo/tribune/util/connection/HttpMethod;->mConn:Ljava/net/HttpURLConnection;

    invoke-static {v0}, Lcom/oppo/tribune/util/connection/HttpMethod;->getCookie(Ljava/net/HttpURLConnection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getLastModified()J
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/oppo/tribune/util/connection/HttpMethod;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getLastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getMd5c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/oppo/tribune/util/connection/HttpMethod;->mConn:Ljava/net/HttpURLConnection;

    const-string v1, "MD5C"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getMethodName()Ljava/lang/String;
.end method

.method public final getResponseCode()I
    .locals 2

    .prologue
    .line 193
    :try_start_0
    iget-object v1, p0, Lcom/oppo/tribune/util/connection/HttpMethod;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 197
    :goto_0
    return v1

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 197
    const/16 v1, 0x194

    goto :goto_0
.end method

.method public final hasNoContent()Z
    .locals 2

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/oppo/tribune/util/connection/HttpMethod;->getResponseCode()I

    move-result v0

    const/16 v1, 0xcc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasNoPermission()Z
    .locals 2

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/oppo/tribune/util/connection/HttpMethod;->getResponseCode()I

    move-result v0

    const/16 v1, 0x190

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isNotModified()Z
    .locals 2

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/oppo/tribune/util/connection/HttpMethod;->getResponseCode()I

    move-result v0

    const/16 v1, 0x130

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract onDoOutput(Ljava/net/HttpURLConnection;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract onFinishInput(Ljava/net/HttpURLConnection;)V
.end method

.method protected onInitConnection(Ljava/net/HttpURLConnection;)V
    .locals 2
    .param p1, "conn"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 64
    :try_start_0
    invoke-virtual {p0}, Lcom/oppo/tribune/util/connection/HttpMethod;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    return-void

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/net/ProtocolException;
    invoke-virtual {v0}, Ljava/net/ProtocolException;->printStackTrace()V

    .line 67
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    goto :goto_0
.end method

.method public final setConnectTimeout(I)V
    .locals 1
    .param p1, "timeout"    # I

    .prologue
    .line 104
    iget-object v0, p0, Lcom/oppo/tribune/util/connection/HttpMethod;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 105
    return-void
.end method

.method public final setCookie(Ljava/lang/String;)V
    .locals 2
    .param p1, "cookie"    # Ljava/lang/String;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/oppo/tribune/util/connection/HttpMethod;->mConn:Ljava/net/HttpURLConnection;

    const-string v1, "Cookie"

    invoke-virtual {v0, v1, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public final setCookie(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/cookie/Cookie;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 116
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    invoke-static {p1}, Lcom/oppo/tribune/util/connection/HttpMethod;->formatCookieList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/util/connection/HttpMethod;->setCookie(Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public final setHeaderExtra(Ljava/lang/String;)V
    .locals 3
    .param p1, "extra"    # Ljava/lang/String;

    .prologue
    .line 97
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    .line 98
    :cond_0
    invoke-static {p1}, Lcom/oppo/tribune/CommunityApplication;->checkAndUpdateExtra(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/oppo/tribune/util/connection/HttpMethod;->mConn:Ljava/net/HttpURLConnection;

    const-string v1, "Sys-extra"

    invoke-static {}, Lcom/oppo/tribune/CommunityApplication;->getStatInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public final setIfModifiedSince(J)V
    .locals 1
    .param p1, "millis"    # J

    .prologue
    .line 184
    iget-object v0, p0, Lcom/oppo/tribune/util/connection/HttpMethod;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setIfModifiedSince(J)V

    .line 185
    return-void
.end method

.method public final setMd5c(Ljava/lang/String;)V
    .locals 2
    .param p1, "md5c"    # Ljava/lang/String;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/oppo/tribune/util/connection/HttpMethod;->mConn:Ljava/net/HttpURLConnection;

    const-string v1, "MD5C"

    invoke-virtual {v0, v1, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public final setReadTimeout(I)V
    .locals 1
    .param p1, "timeout"    # I

    .prologue
    .line 108
    iget-object v0, p0, Lcom/oppo/tribune/util/connection/HttpMethod;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 109
    return-void
.end method

.method protected wrapInputStream(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    .locals 3
    .param p1, "conn"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 324
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    .line 325
    .local v0, "encoding":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "gzip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 326
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 328
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    goto :goto_0
.end method
