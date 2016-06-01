.class public abstract Lcom/oneplus/api/AbstractOneplusClient;
.super Ljava/lang/Object;
.source "AbstractOneplusClient.java"

# interfaces
.implements Lcom/oneplus/api/OneplusClient;


# instance fields
.field private host:Ljava/lang/String;

.field private port:I

.field protected url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 53
    .local v0, "u":Ljava/net/URL;
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/api/AbstractOneplusClient;->host:Ljava/lang/String;

    .line 54
    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v1

    iput v1, p0, Lcom/oneplus/api/AbstractOneplusClient;->port:I

    .line 55
    iput-object p1, p0, Lcom/oneplus/api/AbstractOneplusClient;->url:Ljava/lang/String;

    .line 56
    return-void
.end method

.method private doExecute(Lcom/oneplus/api/OneplusRequest;)Lcom/oneplus/api/OneplusResponse;
    .locals 3
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
    .line 80
    .local p1, "request":Lcom/oneplus/api/OneplusRequest;, "Lcom/oneplus/api/OneplusRequest<TT;>;"
    invoke-virtual {p1}, Lcom/oneplus/api/OneplusRequest;->checkBaseRequest()V

    .line 83
    const/4 v1, 0x0

    .line 85
    .local v1, "response":Lcom/oneplus/api/OneplusResponse;, "TT;"
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/oneplus/api/AbstractOneplusClient;->doRequest(Lcom/oneplus/api/OneplusRequest;)Lcom/oneplus/api/OneplusResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 89
    return-object v1

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/oneplus/api/exception/ApiException;

    invoke-direct {v2, v0}, Lcom/oneplus/api/exception/ApiException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private getResponseContent(Lorg/apache/commons/httpclient/HttpMethod;)Ljava/lang/String;
    .locals 9
    .param p1, "httpMethod"    # Lorg/apache/commons/httpclient/HttpMethod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 149
    const/4 v4, 0x0

    .line 150
    .local v4, "is":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 151
    .local v5, "isr":Ljava/io/InputStreamReader;
    const/4 v0, 0x0

    .line 153
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getResponseBodyAsStream()Ljava/io/InputStream;

    move-result-object v4

    .line 154
    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    .end local v5    # "isr":Ljava/io/InputStreamReader;
    .local v6, "isr":Ljava/io/InputStreamReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 156
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_2
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 157
    .local v2, "buffer":Ljava/lang/StringBuffer;
    const-string v7, ""

    .line 158
    .local v7, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 159
    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 161
    .end local v2    # "buffer":Ljava/lang/StringBuffer;
    .end local v7    # "line":Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .line 162
    .end local v6    # "isr":Ljava/io/InputStreamReader;
    .local v3, "e":Ljava/lang/Exception;
    .restart local v5    # "isr":Ljava/io/InputStreamReader;
    :goto_1
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 164
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    .line 165
    :goto_2
    if-eqz v0, :cond_0

    .line 166
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 168
    :cond_0
    if-eqz v5, :cond_1

    .line 169
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V

    .line 171
    :cond_1
    if-eqz v4, :cond_2

    .line 172
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 175
    :cond_2
    throw v8

    .line 165
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v5    # "isr":Ljava/io/InputStreamReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "buffer":Ljava/lang/StringBuffer;
    .restart local v6    # "isr":Ljava/io/InputStreamReader;
    .restart local v7    # "line":Ljava/lang/String;
    :cond_3
    if-eqz v1, :cond_4

    .line 166
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 168
    :cond_4
    if-eqz v6, :cond_5

    .line 169
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V

    .line 171
    :cond_5
    if-eqz v4, :cond_6

    .line 172
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 178
    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 174
    :catch_1
    move-exception v3

    .line 175
    .restart local v3    # "e":Ljava/lang/Exception;
    throw v3

    .line 174
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v2    # "buffer":Ljava/lang/StringBuffer;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v6    # "isr":Ljava/io/InputStreamReader;
    .end local v7    # "line":Ljava/lang/String;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "isr":Ljava/io/InputStreamReader;
    :catch_2
    move-exception v3

    .line 175
    .restart local v3    # "e":Ljava/lang/Exception;
    throw v3

    .line 164
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "isr":Ljava/io/InputStreamReader;
    .restart local v6    # "isr":Ljava/io/InputStreamReader;
    :catchall_1
    move-exception v8

    move-object v5, v6

    .end local v6    # "isr":Ljava/io/InputStreamReader;
    .restart local v5    # "isr":Ljava/io/InputStreamReader;
    goto :goto_2

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v5    # "isr":Ljava/io/InputStreamReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "isr":Ljava/io/InputStreamReader;
    :catchall_2
    move-exception v8

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "isr":Ljava/io/InputStreamReader;
    .restart local v5    # "isr":Ljava/io/InputStreamReader;
    goto :goto_2

    .line 161
    :catch_3
    move-exception v3

    goto :goto_1

    .end local v5    # "isr":Ljava/io/InputStreamReader;
    .restart local v6    # "isr":Ljava/io/InputStreamReader;
    :catch_4
    move-exception v3

    move-object v5, v6

    .end local v6    # "isr":Ljava/io/InputStreamReader;
    .restart local v5    # "isr":Ljava/io/InputStreamReader;
    goto :goto_1
.end method


# virtual methods
.method protected abstract doRequest(Lcom/oneplus/api/OneplusRequest;)Lcom/oneplus/api/OneplusResponse;
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
.end method

.method public execute(Lcom/oneplus/api/OneplusRequest;)Lcom/oneplus/api/OneplusResponse;
    .locals 2
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
    .line 63
    .local p1, "request":Lcom/oneplus/api/OneplusRequest;, "Lcom/oneplus/api/OneplusRequest<TT;>;"
    if-nez p1, :cond_0

    .line 64
    new-instance v0, Lcom/oneplus/api/exception/ApiException;

    sget-object v1, Lcom/oneplus/api/constants/MessageCodes;->REQUEST_NULL:Lcom/oneplus/api/constants/MessageCodes;

    invoke-direct {v0, v1}, Lcom/oneplus/api/exception/ApiException;-><init>(Lcom/oneplus/api/constants/MessageCodes;)V

    throw v0

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/oneplus/api/AbstractOneplusClient;->url:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, ""

    iget-object v1, p0, Lcom/oneplus/api/AbstractOneplusClient;->url:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 66
    :cond_1
    new-instance v0, Lcom/oneplus/api/exception/ApiException;

    sget-object v1, Lcom/oneplus/api/constants/MessageCodes;->URL_NULL:Lcom/oneplus/api/constants/MessageCodes;

    invoke-direct {v0, v1}, Lcom/oneplus/api/exception/ApiException;-><init>(Lcom/oneplus/api/constants/MessageCodes;)V

    throw v0

    .line 68
    :cond_2
    invoke-direct {p0, p1}, Lcom/oneplus/api/AbstractOneplusClient;->doExecute(Lcom/oneplus/api/OneplusRequest;)Lcom/oneplus/api/OneplusResponse;

    move-result-object v0

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/oneplus/api/AbstractOneplusClient;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lcom/oneplus/api/AbstractOneplusClient;->port:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/oneplus/api/AbstractOneplusClient;->url:Ljava/lang/String;

    return-object v0
.end method

.method protected parseResponse(Lorg/apache/commons/httpclient/HttpMethod;Ljava/lang/Class;)Lcom/oneplus/api/OneplusResponse;
    .locals 6
    .param p1, "httpMethod"    # Lorg/apache/commons/httpclient/HttpMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/oneplus/api/OneplusResponse;",
            ">(",
            "Lorg/apache/commons/httpclient/HttpMethod;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 110
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v3, 0x0

    .line 112
    .local v3, "response":Lcom/oneplus/api/OneplusResponse;, "TT;"
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "response":Lcom/oneplus/api/OneplusResponse;, "TT;"
    check-cast v3, Lcom/oneplus/api/OneplusResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .restart local v3    # "response":Lcom/oneplus/api/OneplusResponse;, "TT;"
    if-nez v3, :cond_0

    .line 117
    new-instance v4, Lcom/oneplus/api/exception/ApiException;

    sget-object v5, Lcom/oneplus/api/constants/MessageCodes;->RESPONSE_NEWINSTALL:Lcom/oneplus/api/constants/MessageCodes;

    invoke-direct {v4, v5}, Lcom/oneplus/api/exception/ApiException;-><init>(Lcom/oneplus/api/constants/MessageCodes;)V

    throw v4

    .line 113
    .end local v3    # "response":Lcom/oneplus/api/OneplusResponse;, "TT;"
    :catch_0
    move-exception v1

    .line 114
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Lcom/oneplus/api/exception/ApiException;

    invoke-direct {v4, v1}, Lcom/oneplus/api/exception/ApiException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 121
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "response":Lcom/oneplus/api/OneplusResponse;, "TT;"
    :cond_0
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getStatusCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/oneplus/api/OneplusResponse;->setHttpStatus(Ljava/lang/Integer;)V

    .line 122
    invoke-direct {p0, p1}, Lcom/oneplus/api/AbstractOneplusClient;->getResponseContent(Lorg/apache/commons/httpclient/HttpMethod;)Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, "reponseBody":Ljava/lang/String;
    invoke-virtual {v3, v2}, Lcom/oneplus/api/OneplusResponse;->setResponseBody(Ljava/lang/String;)V

    .line 126
    const/16 v4, 0xc8

    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getStatusCode()I

    move-result v5

    if-eq v4, v5, :cond_1

    .line 137
    :goto_0
    return-object v3

    .line 132
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Lcom/oneplus/api/OneplusResponse;->getDataType()Lcom/oneplus/api/constants/ResponseDataType;

    move-result-object v4

    invoke-static {v4}, Lcom/oneplus/api/parsers/ConverterFactory;->newConverter(Lcom/oneplus/api/constants/ResponseDataType;)Lcom/oneplus/api/parsers/Converter;

    move-result-object v0

    .line 133
    .local v0, "converter":Lcom/oneplus/api/parsers/Converter;
    invoke-interface {v0, v2, v3}, Lcom/oneplus/api/parsers/Converter;->parse(Ljava/lang/String;Lcom/oneplus/api/OneplusResponse;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 134
    .end local v0    # "converter":Lcom/oneplus/api/parsers/Converter;
    :catch_1
    move-exception v1

    .line 135
    .restart local v1    # "e":Ljava/lang/Exception;
    new-instance v4, Lcom/oneplus/api/exception/ApiException;

    invoke-direct {v4, v1}, Lcom/oneplus/api/exception/ApiException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method
