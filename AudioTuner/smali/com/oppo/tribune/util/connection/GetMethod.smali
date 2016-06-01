.class public Lcom/oppo/tribune/util/connection/GetMethod;
.super Lcom/oppo/tribune/util/connection/AbstractHttpMethod;
.source "GetMethod.java"


# static fields
.field public static final METHOD_NAME:Ljava/lang/String; = "GET"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/oppo/tribune/util/connection/AbstractHttpMethod;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "extra"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/tribune/util/connection/AbstractHttpMethod;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ZZ)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "readCookie"    # Z
    .param p4, "writeCookie"    # Z

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oppo/tribune/util/connection/AbstractHttpMethod;-><init>(Landroid/content/Context;Ljava/lang/String;ZZ)V

    .line 35
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
    .line 39
    invoke-direct/range {p0 .. p5}, Lcom/oppo/tribune/util/connection/AbstractHttpMethod;-><init>(Landroid/content/Context;Ljava/lang/String;ZZLjava/lang/String;)V

    .line 40
    return-void
.end method


# virtual methods
.method protected getMethodName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    const-string v0, "GET"

    return-object v0
.end method

.method protected onInitConnection(Ljava/net/HttpURLConnection;)V
    .locals 1
    .param p1, "conn"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/oppo/tribune/util/connection/AbstractHttpMethod;->onInitConnection(Ljava/net/HttpURLConnection;)V

    .line 45
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 46
    return-void
.end method
