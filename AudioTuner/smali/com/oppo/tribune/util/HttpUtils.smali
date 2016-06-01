.class public Lcom/oppo/tribune/util/HttpUtils;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# static fields
.field public static final NETWORK_TYPE_2G:I = 0x3

.field public static final NETWORK_TYPE_3G:I = 0x2

.field public static final NETWORK_TYPE_NONE:I = 0x0

.field public static final NETWORK_TYPE_WIFI:I = 0x1

.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/oppo/tribune/util/HttpUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oppo/tribune/util/HttpUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 35
    return-void
.end method

.method public static getHumanNetworkType(Landroid/content/Context;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 54
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 56
    .local v2, "mgr":Landroid/net/ConnectivityManager;
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 57
    .local v0, "info":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-nez v6, :cond_2

    :cond_0
    move v4, v5

    .line 121
    :cond_1
    :goto_0
    return v4

    .line 61
    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    .line 62
    .local v3, "type":I
    if-eq v3, v4, :cond_1

    .line 66
    if-nez v3, :cond_4

    .line 67
    const/4 v1, 0x0

    .line 69
    .local v1, "isNetworkFast":Z
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 115
    const/4 v1, 0x0

    .line 118
    :goto_1
    if-eqz v1, :cond_3

    const/4 v4, 0x2

    goto :goto_0

    .line 71
    :pswitch_0
    const/4 v1, 0x0

    .line 72
    goto :goto_1

    .line 75
    :pswitch_1
    const/4 v1, 0x0

    .line 76
    goto :goto_1

    .line 79
    :pswitch_2
    const/4 v1, 0x0

    .line 80
    goto :goto_1

    .line 83
    :pswitch_3
    const/4 v1, 0x1

    .line 84
    goto :goto_1

    .line 87
    :pswitch_4
    const/4 v1, 0x1

    .line 88
    goto :goto_1

    .line 91
    :pswitch_5
    const/4 v1, 0x0

    .line 92
    goto :goto_1

    .line 95
    :pswitch_6
    const/4 v1, 0x1

    .line 96
    goto :goto_1

    .line 99
    :pswitch_7
    const/4 v1, 0x1

    .line 100
    goto :goto_1

    .line 103
    :pswitch_8
    const/4 v1, 0x1

    .line 104
    goto :goto_1

    .line 107
    :pswitch_9
    const/4 v1, 0x1

    .line 108
    goto :goto_1

    .line 111
    :pswitch_a
    const/4 v1, 0x0

    .line 112
    goto :goto_1

    .line 118
    :cond_3
    const/4 v4, 0x3

    goto :goto_0

    .end local v1    # "isNetworkFast":Z
    :cond_4
    move v4, v5

    .line 121
    goto :goto_0

    .line 69
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_5
        :pswitch_2
        :pswitch_9
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method public static isGzipHttpEntity(Lorg/apache/http/HttpEntity;)Z
    .locals 5
    .param p0, "entity"    # Lorg/apache/http/HttpEntity;

    .prologue
    .line 125
    const/4 v1, 0x0

    .line 126
    .local v1, "isGzip":Z
    if-nez p0, :cond_0

    move v2, v1

    .line 143
    .end local v1    # "isGzip":Z
    .local v2, "isGzip":I
    :goto_0
    return v2

    .line 130
    .end local v2    # "isGzip":I
    .restart local v1    # "isGzip":Z
    :cond_0
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v0

    .line 131
    .local v0, "header":Lorg/apache/http/Header;
    if-nez v0, :cond_1

    move v2, v1

    .line 132
    .restart local v2    # "isGzip":I
    goto :goto_0

    .line 135
    .end local v2    # "isGzip":I
    :cond_1
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 136
    .local v3, "value":Ljava/lang/String;
    if-nez v3, :cond_2

    move v2, v1

    .line 137
    .restart local v2    # "isGzip":I
    goto :goto_0

    .line 140
    .end local v2    # "isGzip":I
    :cond_2
    const-string v4, "gzip"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 141
    const/4 v1, 0x1

    :cond_3
    move v2, v1

    .line 143
    .restart local v2    # "isGzip":I
    goto :goto_0
.end method

.method public static parseConnection(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 172
    invoke-static {p0, p1, v0, v0}, Lcom/oppo/tribune/util/HttpUtils;->parseConnection(Landroid/content/Context;Ljava/lang/String;ZZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static parseConnection(Landroid/content/Context;Ljava/lang/String;ZZ)[B
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "readCookie"    # Z
    .param p3, "writeCookie"    # Z

    .prologue
    .line 148
    new-instance v0, Lcom/oppo/tribune/util/connection/GetMethod;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/oppo/tribune/util/connection/GetMethod;-><init>(Landroid/content/Context;Ljava/lang/String;ZZ)V

    .line 149
    .local v0, "method":Lcom/oppo/tribune/util/connection/GetMethod;
    invoke-virtual {v0}, Lcom/oppo/tribune/util/connection/GetMethod;->execute()[B

    move-result-object v1

    return-object v1
.end method

.method public static parseConnectionWithMd5c(Landroid/content/Context;Ljava/lang/String;ZZLjava/lang/String;)[B
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "readCookie"    # Z
    .param p3, "writeCookie"    # Z
    .param p4, "md5cKey"    # Ljava/lang/String;

    .prologue
    .line 154
    new-instance v2, Lcom/oppo/tribune/util/connection/GetMethod;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/oppo/tribune/util/connection/GetMethod;-><init>(Landroid/content/Context;Ljava/lang/String;ZZ)V

    .line 155
    .local v2, "method":Lcom/oppo/tribune/util/connection/GetMethod;
    const-string v3, ""

    invoke-static {p0, p4, v3}, Lcom/oppo/tribune/square/resdown/parse/ResUrlUtil;->getMd5c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, "md5c":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 158
    invoke-virtual {v2, v1}, Lcom/oppo/tribune/util/connection/GetMethod;->setMd5c(Ljava/lang/String;)V

    .line 161
    :cond_0
    invoke-virtual {v2}, Lcom/oppo/tribune/util/connection/GetMethod;->execute()[B

    move-result-object v0

    .line 163
    .local v0, "bytes":[B
    invoke-virtual {v2}, Lcom/oppo/tribune/util/connection/GetMethod;->getMd5c()Ljava/lang/String;

    move-result-object v1

    .line 165
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 166
    invoke-virtual {v2}, Lcom/oppo/tribune/util/connection/GetMethod;->getMd5c()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, p4, v3}, Lcom/oppo/tribune/square/resdown/parse/ResUrlUtil;->setMd5c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :cond_1
    return-object v0
.end method
