.class public Lcom/oneplus/settings/electroniccard/OneplusServiceTools;
.super Ljava/lang/Object;
.source "OneplusServiceTools.java"


# static fields
.field public static final ElectronicCardUrl:Ljava/lang/String; = "https://api.oneplus.cn/service/router?method=%s&format=%s&access_token=%s&imei=%s&currentLanguage=%s"

.field public static final OpenBaseUri:Ljava/lang/String; = "https://api.oneplus.cn/"

.field public static final ServiceUrl:Ljava/lang/String; = "https://api.oneplus.cn/service/router?method=%s&format=%s&access_token=%s"

.field private static final TAG:Ljava/lang/String; = "OneplusServiceTools"

.field public static final TokenUrl:Ljava/lang/String; = "https://api.oneplus.cn/oauth/token?client_id=%s&grant_type=%s&scope=%s&client_secret=%s"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static elecEnsurance(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p0, "imei"    # Ljava/lang/String;

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 40
    const/4 v3, 0x0

    .line 41
    .local v3, "resp":Ljava/lang/String;
    const-string/jumbo v2, "open.CS.km.getWarrantyInfo"

    .line 42
    .local v2, "method":Ljava/lang/String;
    const/4 v5, 0x6

    invoke-static {v5}, Lcom/oneplus/settings/electroniccard/OneplusServiceTools;->getAccessToken(I)Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "accessToken":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 44
    return-object v9

    .line 46
    :cond_0
    const-string/jumbo v5, "https://api.oneplus.cn/service/router?method=%s&format=%s&access_token=%s&imei=%s&currentLanguage=%s"

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    const-string/jumbo v7, "open.CS.km.getWarrantyInfo"

    aput-object v7, v6, v10

    const-string/jumbo v7, "json"

    aput-object v7, v6, v11

    aput-object v0, v6, v12

    aput-object p0, v6, v13

    const-string/jumbo v7, "en_US"

    const/4 v8, 0x4

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 47
    .local v4, "url":Ljava/lang/String;
    const/4 v1, 0x0

    .line 48
    .local v1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "imei"

    aput-object v6, v5, v10

    aput-object p0, v5, v11

    const-string/jumbo v6, "currentLanguage"

    aput-object v6, v5, v12

    const-string/jumbo v6, "en_US"

    aput-object v6, v5, v13

    invoke-static {v5}, Lcom/oneplus/settings/electroniccard/OPHutil;->$m([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    .line 49
    .local v1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {v4, v1}, Lcom/oneplus/settings/electroniccard/OneplusServiceTools;->getHttpPostResp(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    .line 50
    .local v3, "resp":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 51
    return-object v9

    .line 54
    :cond_1
    const-string/jumbo v5, "OneplusServiceTools"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "elecEnsurance--resp:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return-object v3
.end method

.method public static getAccessToken(I)Ljava/lang/String;
    .locals 15
    .param p0, "type"    # I

    .prologue
    const/4 v14, 0x3

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 65
    invoke-static {p0}, Lcom/oneplus/settings/electroniccard/OPScopeInfoGen;->getScopeInfo(I)[Ljava/lang/String;

    move-result-object v5

    .line 66
    .local v5, "scopeInfoArray":[Ljava/lang/String;
    aget-object v0, v5, v10

    .line 67
    .local v0, "client_id":Ljava/lang/String;
    aget-object v2, v5, v12

    .line 68
    .local v2, "grant_type":Ljava/lang/String;
    aget-object v4, v5, v13

    .line 69
    .local v4, "scope":Ljava/lang/String;
    aget-object v1, v5, v14

    .line 70
    .local v1, "client_secret":Ljava/lang/String;
    const-string/jumbo v8, "https://api.oneplus.cn/oauth/token?client_id=%s&grant_type=%s&scope=%s&client_secret=%s"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v0, v9, v10

    aput-object v2, v9, v12

    aput-object v4, v9, v13

    aput-object v1, v9, v14

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 71
    .local v7, "url":Ljava/lang/String;
    const-string/jumbo v8, "OneplusServiceTools"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getAccessToken type = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", url = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-static {v7, v11}, Lcom/oneplus/settings/electroniccard/OneplusServiceTools;->getHttpPostResp(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    .line 73
    .local v3, "resp":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 74
    const-string/jumbo v8, "OneplusServiceTools"

    const-string/jumbo v9, "getAccessToken resp is null, return null"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return-object v11

    .line 77
    :cond_0
    invoke-static {v3}, Lcom/oneplus/settings/electroniccard/OPTokenInfo;->parse(Ljava/lang/String;)Lcom/oneplus/settings/electroniccard/OPTokenInfo;

    move-result-object v6

    .line 78
    .local v6, "tokenInfo":Lcom/oneplus/settings/electroniccard/OPTokenInfo;
    if-nez v6, :cond_1

    .line 79
    const-string/jumbo v8, "OneplusServiceTools"

    const-string/jumbo v9, "getAccessToken tokenInfo is null, return null"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    return-object v11

    .line 82
    :cond_1
    const-string/jumbo v8, "OneplusServiceTools"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getAccessToken type result = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Lcom/oneplus/settings/electroniccard/OPTokenInfo;->getAccessToken()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-virtual {v6}, Lcom/oneplus/settings/electroniccard/OPTokenInfo;->getAccessToken()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method public static getHttpPostResp(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 7
    .param p0, "urlString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, "paramsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "none"

    .line 90
    .local v1, "result":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 93
    .local v2, "url":Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    .line 96
    .local v3, "urlConn":Ljava/net/HttpURLConnection;
    const/16 v4, 0x2710

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 98
    const/16 v4, 0x2710

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 100
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 102
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 104
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 106
    const-string/jumbo v4, "POST"

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 113
    const-string/jumbo v4, "Accept"

    const-string/jumbo v5, "*/*"

    invoke-virtual {v3, v4, v5}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string/jumbo v4, "Accept-Encoding"

    const-string/jumbo v5, "gzip, deflate"

    invoke-virtual {v3, v4, v5}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string/jumbo v4, "Accept-Language"

    const-string/jumbo v5, "zh-CN,zh;q=0.8,en-US;q=0.5,en;q=0.3"

    invoke-virtual {v3, v4, v5}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string/jumbo v4, "Content-Type"

    const-string/jumbo v5, "application/json;charset=UTF-8"

    invoke-virtual {v3, v4, v5}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string/jumbo v4, "User-Agent"

    const-string/jumbo v5, "Mozilla/5.0 (Windows NT 6.1; WOW64; rv:48.0) Gecko/20100101 Firefox/48.0"

    invoke-virtual {v3, v4, v5}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    .line 141
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_0

    .line 143
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-static {v4}, Lcom/oneplus/settings/electroniccard/OneplusServiceTools;->streamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 144
    const-string/jumbo v4, "OneplusServiceTools"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getHttpPostResp success\uff0cresult--->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :goto_0
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 154
    .end local v2    # "url":Ljava/net/URL;
    .end local v3    # "urlConn":Ljava/net/HttpURLConnection;
    :goto_1
    return-object v1

    .line 146
    .restart local v2    # "url":Ljava/net/URL;
    .restart local v3    # "urlConn":Ljava/net/HttpURLConnection;
    :cond_0
    const-string/jumbo v4, "OneplusServiceTools"

    const-string/jumbo v5, "getHttpPostResp faild"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 150
    .end local v2    # "url":Ljava/net/URL;
    .end local v3    # "urlConn":Ljava/net/HttpURLConnection;
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "OneplusServiceTools"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static streamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 7
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    .line 158
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 159
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/16 v5, 0x400

    new-array v1, v5, [B

    .line 160
    .local v1, "buffer":[B
    const/4 v4, 0x0

    .line 161
    .local v4, "len":I
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 162
    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 168
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "buffer":[B
    .end local v4    # "len":I
    :catch_0
    move-exception v3

    .line 169
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "OneplusServiceTools"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const/4 v5, 0x0

    return-object v5

    .line 164
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "buffer":[B
    .restart local v4    # "len":I
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 165
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 166
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 167
    .local v2, "byteArray":[B
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v5
.end method
