.class public abstract Lcom/oneplus/api/OneplusRequest;
.super Ljava/lang/Object;
.source "OneplusRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/oneplus/api/OneplusResponse;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x647669bcb9b9120fL


# instance fields
.field private cookies:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private method:Lcom/oneplus/api/constants/RequestMethod;

.field private params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/oneplus/api/constants/RequestMethod;)V
    .locals 1
    .param p1, "method"    # Lcom/oneplus/api/constants/RequestMethod;

    .prologue
    .line 54
    .local p0, "this":Lcom/oneplus/api/OneplusRequest;, "Lcom/oneplus/api/OneplusRequest<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/api/OneplusRequest;->params:Ljava/util/Map;

    .line 43
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/api/OneplusRequest;->headers:Ljava/util/Map;

    .line 48
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/api/OneplusRequest;->cookies:Ljava/util/Map;

    .line 55
    iput-object p1, p0, Lcom/oneplus/api/OneplusRequest;->method:Lcom/oneplus/api/constants/RequestMethod;

    .line 56
    return-void
.end method


# virtual methods
.method public addCookie(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 115
    .local p0, "this":Lcom/oneplus/api/OneplusRequest;, "Lcom/oneplus/api/OneplusRequest<TT;>;"
    iget-object v0, p0, Lcom/oneplus/api/OneplusRequest;->cookies:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    return-void
.end method

.method public addParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 105
    .local p0, "this":Lcom/oneplus/api/OneplusRequest;, "Lcom/oneplus/api/OneplusRequest<TT;>;"
    iget-object v0, p0, Lcom/oneplus/api/OneplusRequest;->params:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    return-void
.end method

.method public addheader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 125
    .local p0, "this":Lcom/oneplus/api/OneplusRequest;, "Lcom/oneplus/api/OneplusRequest<TT;>;"
    iget-object v0, p0, Lcom/oneplus/api/OneplusRequest;->headers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    return-void
.end method

.method public checkBaseRequest()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oneplus/api/exception/ApiException;
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "this":Lcom/oneplus/api/OneplusRequest;, "Lcom/oneplus/api/OneplusRequest<TT;>;"
    iget-object v0, p0, Lcom/oneplus/api/OneplusRequest;->method:Lcom/oneplus/api/constants/RequestMethod;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/oneplus/api/exception/ApiException;

    sget-object v1, Lcom/oneplus/api/constants/MessageCodes;->METHOD_NULL:Lcom/oneplus/api/constants/MessageCodes;

    invoke-direct {v0, v1}, Lcom/oneplus/api/exception/ApiException;-><init>(Lcom/oneplus/api/constants/MessageCodes;)V

    throw v0

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/api/OneplusRequest;->checkRequest()V

    .line 68
    return-void
.end method

.method protected abstract checkRequest()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oneplus/api/exception/ApiException;
        }
    .end annotation
.end method

.method public getCookies()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 174
    .local p0, "this":Lcom/oneplus/api/OneplusRequest;, "Lcom/oneplus/api/OneplusRequest<TT;>;"
    iget-object v0, p0, Lcom/oneplus/api/OneplusRequest;->cookies:Ljava/util/Map;

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    .local p0, "this":Lcom/oneplus/api/OneplusRequest;, "Lcom/oneplus/api/OneplusRequest<TT;>;"
    iget-object v0, p0, Lcom/oneplus/api/OneplusRequest;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public getMethod()Lcom/oneplus/api/constants/RequestMethod;
    .locals 1

    .prologue
    .line 88
    .local p0, "this":Lcom/oneplus/api/OneplusRequest;, "Lcom/oneplus/api/OneplusRequest<TT;>;"
    iget-object v0, p0, Lcom/oneplus/api/OneplusRequest;->method:Lcom/oneplus/api/constants/RequestMethod;

    return-object v0
.end method

.method public getParamsWithGet()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 133
    .local p0, "this":Lcom/oneplus/api/OneplusRequest;, "Lcom/oneplus/api/OneplusRequest<TT;>;"
    iget-object v4, p0, Lcom/oneplus/api/OneplusRequest;->params:Ljava/util/Map;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/oneplus/api/OneplusRequest;->params:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    if-gtz v4, :cond_1

    .line 134
    :cond_0
    const-string v4, ""

    .line 141
    :goto_0
    return-object v4

    .line 136
    :cond_1
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 137
    .local v2, "sb":Ljava/lang/StringBuffer;
    iget-object v4, p0, Lcom/oneplus/api/OneplusRequest;->params:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 138
    .local v1, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/oneplus/api/OneplusRequest;->params:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 139
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 141
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public getParamsWithPost()[Lorg/apache/commons/httpclient/NameValuePair;
    .locals 7

    .prologue
    .line 148
    .local p0, "this":Lcom/oneplus/api/OneplusRequest;, "Lcom/oneplus/api/OneplusRequest<TT;>;"
    iget-object v6, p0, Lcom/oneplus/api/OneplusRequest;->params:Ljava/util/Map;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/oneplus/api/OneplusRequest;->params:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    if-gtz v6, :cond_2

    .line 149
    :cond_0
    const/4 v4, 0x0

    .line 160
    :cond_1
    return-object v4

    .line 151
    :cond_2
    iget-object v6, p0, Lcom/oneplus/api/OneplusRequest;->params:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    new-array v4, v6, [Lorg/apache/commons/httpclient/NameValuePair;

    .line 152
    .local v4, "nvps":[Lorg/apache/commons/httpclient/NameValuePair;
    const/4 v3, 0x0

    .line 153
    .local v3, "nvp":Lorg/apache/commons/httpclient/NameValuePair;
    const/4 v0, 0x0

    .line 154
    .local v0, "i":I
    iget-object v6, p0, Lcom/oneplus/api/OneplusRequest;->params:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 155
    .local v2, "key":Ljava/lang/String;
    iget-object v6, p0, Lcom/oneplus/api/OneplusRequest;->params:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 156
    .local v5, "value":Ljava/lang/String;
    new-instance v3, Lorg/apache/commons/httpclient/NameValuePair;

    .end local v3    # "nvp":Lorg/apache/commons/httpclient/NameValuePair;
    invoke-direct {v3, v2, v5}, Lorg/apache/commons/httpclient/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .restart local v3    # "nvp":Lorg/apache/commons/httpclient/NameValuePair;
    aput-object v3, v4, v0

    .line 158
    add-int/lit8 v0, v0, 0x1

    .line 159
    goto :goto_0
.end method

.method public abstract getResponseClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end method

.method public setMethod(Lcom/oneplus/api/constants/RequestMethod;)V
    .locals 0
    .param p1, "method"    # Lcom/oneplus/api/constants/RequestMethod;

    .prologue
    .line 95
    .local p0, "this":Lcom/oneplus/api/OneplusRequest;, "Lcom/oneplus/api/OneplusRequest<TT;>;"
    iput-object p1, p0, Lcom/oneplus/api/OneplusRequest;->method:Lcom/oneplus/api/constants/RequestMethod;

    .line 96
    return-void
.end method
