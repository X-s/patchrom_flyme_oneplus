.class public abstract Lcom/oppo/tribune/util/connection/AbstractHttpMethod;
.super Lcom/oppo/tribune/util/connection/HttpMethod;
.source "AbstractHttpMethod.java"


# static fields
.field public static final DEFAULT_CONN_TIMEOUT:I = 0x7530

.field public static final DEFAULT_READ_TIMEOUT:I = 0x7530


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mWriteCookie:Z


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 35
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/oppo/tribune/util/connection/AbstractHttpMethod;-><init>(Landroid/content/Context;Ljava/lang/String;ZZLjava/lang/String;)V

    .line 36
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "extra"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 39
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/oppo/tribune/util/connection/AbstractHttpMethod;-><init>(Landroid/content/Context;Ljava/lang/String;ZZLjava/lang/String;)V

    .line 40
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;ZZ)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "readCookie"    # Z
    .param p4, "writeCookie"    # Z

    .prologue
    const/4 v3, 0x1

    .line 44
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/oppo/tribune/util/connection/AbstractHttpMethod;-><init>(Landroid/content/Context;Ljava/lang/String;ZZLjava/lang/String;)V

    .line 45
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
    .line 49
    invoke-direct {p0, p2, p5}, Lcom/oppo/tribune/util/connection/HttpMethod;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iput-object p1, p0, Lcom/oppo/tribune/util/connection/AbstractHttpMethod;->mContext:Landroid/content/Context;

    .line 51
    invoke-virtual {p0, p3}, Lcom/oppo/tribune/util/connection/AbstractHttpMethod;->setReadCookie(Z)V

    .line 52
    invoke-virtual {p0, p4}, Lcom/oppo/tribune/util/connection/AbstractHttpMethod;->setWriteCookie(Z)V

    .line 53
    return-void
.end method


# virtual methods
.method protected onDoOutput(Ljava/net/HttpURLConnection;)V
    .locals 0
    .param p1, "conn"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    return-void
.end method

.method protected onFinishInput(Ljava/net/HttpURLConnection;)V
    .locals 2
    .param p1, "conn"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 86
    iget-boolean v1, p0, Lcom/oppo/tribune/util/connection/AbstractHttpMethod;->mWriteCookie:Z

    if-eqz v1, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/oppo/tribune/util/connection/AbstractHttpMethod;->getCookie()Ljava/util/List;

    move-result-object v0

    .line 88
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    iget-object v1, p0, Lcom/oppo/tribune/util/connection/AbstractHttpMethod;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v0}, Lcom/oppo/tribune/util/connection/AbstractHttpMethod;->writeCookie(Landroid/content/Context;Ljava/util/List;)V

    .line 90
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    :cond_0
    return-void
.end method

.method protected onInitConnection(Ljava/net/HttpURLConnection;)V
    .locals 1
    .param p1, "conn"    # Ljava/net/HttpURLConnection;

    .prologue
    const/16 v0, 0x7530

    .line 57
    invoke-super {p0, p1}, Lcom/oppo/tribune/util/connection/HttpMethod;->onInitConnection(Ljava/net/HttpURLConnection;)V

    .line 61
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 62
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 63
    return-void
.end method

.method protected readCookie(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 93
    invoke-static {p1}, Lcom/oppo/tribune/LoginUtils;->readCookie(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setReadCookie(Z)V
    .locals 2
    .param p1, "read"    # Z

    .prologue
    .line 69
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/oppo/tribune/util/connection/AbstractHttpMethod;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/oppo/tribune/util/connection/AbstractHttpMethod;->readCookie(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "cookie":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/oppo/tribune/util/connection/AbstractHttpMethod;->setCookie(Ljava/lang/String;)V

    .line 71
    return-void

    .line 69
    .end local v0    # "cookie":Ljava/lang/String;
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public setWriteCookie(Z)V
    .locals 0
    .param p1, "write"    # Z

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/oppo/tribune/util/connection/AbstractHttpMethod;->mWriteCookie:Z

    .line 78
    return-void
.end method

.method protected writeCookie(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/cookie/Cookie;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 97
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    invoke-static {p1, p2}, Lcom/oppo/tribune/LoginUtils;->writeCookie(Landroid/content/Context;Ljava/util/List;)V

    .line 98
    return-void
.end method
