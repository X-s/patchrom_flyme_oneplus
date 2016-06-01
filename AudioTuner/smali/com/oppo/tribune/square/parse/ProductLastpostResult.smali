.class public Lcom/oppo/tribune/square/parse/ProductLastpostResult;
.super Lcom/oppo/tribune/square/parse/BasePostResult;
.source "ProductLastpostResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oppo/tribune/square/parse/BasePostResult",
        "<",
        "Lcom/oppo/tribune/parse/LocalThread;",
        ">;"
    }
.end annotation


# instance fields
.field private final mFid:I

.field private final mPageSize:I


# direct methods
.method private constructor <init>(IILjava/util/List;I)V
    .locals 0
    .param p1, "fid"    # I
    .param p2, "page"    # I
    .param p4, "pageSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/parse/LocalThread;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/parse/LocalThread;>;"
    invoke-direct {p0, p2, p3}, Lcom/oppo/tribune/square/parse/BasePostResult;-><init>(ILjava/util/List;)V

    .line 36
    iput p1, p0, Lcom/oppo/tribune/square/parse/ProductLastpostResult;->mFid:I

    .line 37
    iput p4, p0, Lcom/oppo/tribune/square/parse/ProductLastpostResult;->mPageSize:I

    .line 38
    return-void
.end method

.method private static getServerUrl(Landroid/content/Context;II)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fid"    # I
    .param p2, "page"    # I

    .prologue
    .line 71
    const-string v1, "http://bbs2.wanyol.com/forum.php?mod=forumdisplay&fid=%d&page=%d"

    .line 73
    .local v1, "format":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .local v0, "b":Ljava/lang/StringBuilder;
    invoke-static {p0}, Lcom/oppo/tribune/square/resdown/util/ServerAuthorize;->getSuffix(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getServerUrl(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "page"    # I

    .prologue
    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "&page="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    invoke-static {p0}, Lcom/oppo/tribune/square/resdown/util/ServerAuthorize;->getSuffix(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static parse(Landroid/content/Context;II)Lcom/oppo/tribune/square/parse/ProductLastpostResult;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fid"    # I
    .param p2, "page"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 52
    invoke-static {p0, p1, p2}, Lcom/oppo/tribune/square/parse/ProductLastpostResult;->getServerUrl(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "url":Ljava/lang/String;
    new-instance v0, Lcom/oppo/tribune/parse/handler/ForumThreadDefaultHandler;

    invoke-direct {v0, p2, p1}, Lcom/oppo/tribune/parse/handler/ForumThreadDefaultHandler;-><init>(II)V

    .line 54
    .local v0, "dh":Lcom/oppo/tribune/parse/handler/ForumThreadDefaultHandler;
    invoke-static {p0, v1, v3, v3, v0}, Lcom/oppo/tribune/util/Utils;->saxParse(Landroid/content/Context;Ljava/lang/String;ZZLorg/xml/sax/helpers/DefaultHandler;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 55
    invoke-virtual {v0}, Lcom/oppo/tribune/parse/handler/ForumThreadDefaultHandler;->getTpp()I

    move-result v3

    if-gtz v3, :cond_1

    .line 67
    :cond_0
    :goto_0
    return-object v2

    .line 59
    :cond_1
    invoke-virtual {v0}, Lcom/oppo/tribune/parse/handler/ForumThreadDefaultHandler;->getContent()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 63
    new-instance v2, Lcom/oppo/tribune/square/parse/ProductLastpostResult;

    invoke-virtual {v0}, Lcom/oppo/tribune/parse/handler/ForumThreadDefaultHandler;->getContent()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0}, Lcom/oppo/tribune/parse/handler/ForumThreadDefaultHandler;->getTpp()I

    move-result v4

    invoke-direct {v2, p1, p2, v3, v4}, Lcom/oppo/tribune/square/parse/ProductLastpostResult;-><init>(IILjava/util/List;I)V

    goto :goto_0
.end method


# virtual methods
.method public final getPageSize()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/oppo/tribune/square/parse/ProductLastpostResult;->mPageSize:I

    return v0
.end method

.method public writeToDatabase(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method
