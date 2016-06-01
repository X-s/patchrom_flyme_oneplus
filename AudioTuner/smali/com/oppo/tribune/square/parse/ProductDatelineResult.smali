.class public Lcom/oppo/tribune/square/parse/ProductDatelineResult;
.super Lcom/oppo/tribune/square/parse/BasePostResult;
.source "ProductDatelineResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oppo/tribune/square/parse/BasePostResult",
        "<",
        "Lcom/oppo/tribune/parse/LocalThread;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private final mPageSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/oppo/tribune/square/parse/ProductDatelineResult;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oppo/tribune/square/parse/ProductDatelineResult;->TAG:Ljava/lang/String;

    return-void
.end method

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
    .line 37
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/parse/LocalThread;>;"
    invoke-direct {p0, p2, p3}, Lcom/oppo/tribune/square/parse/BasePostResult;-><init>(ILjava/util/List;)V

    .line 39
    iput p4, p0, Lcom/oppo/tribune/square/parse/ProductDatelineResult;->mPageSize:I

    .line 40
    return-void
.end method

.method private static getServerUrl(Landroid/content/Context;II)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fid"    # I
    .param p2, "page"    # I

    .prologue
    .line 73
    const-string v1, "http://bbs2.wanyol.com/forum.php?mod=forumdisplay&fid=%d&filter=player&orderby=dateline&page=%d"

    .line 75
    .local v1, "format":Ljava/lang/String;
    const/16 v2, 0xcb

    if-ne p1, v2, :cond_0

    .line 79
    const-string v1, "http://bbs2.wanyol.com/forum.php?mod=forumdisplay&fid=%d&filter=typeid&typeid=303&filter=player&orderby=dateline&page=%d"

    .line 82
    :cond_0
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

    .line 83
    .local v0, "b":Ljava/lang/StringBuilder;
    invoke-static {p0}, Lcom/oppo/tribune/square/resdown/util/ServerAuthorize;->getSuffix(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static parse(Landroid/content/Context;II)Lcom/oppo/tribune/square/parse/ProductDatelineResult;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fid"    # I
    .param p2, "page"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 54
    invoke-static {p0, p1, p2}, Lcom/oppo/tribune/square/parse/ProductDatelineResult;->getServerUrl(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, "url":Ljava/lang/String;
    new-instance v0, Lcom/oppo/tribune/parse/handler/ForumThreadDefaultHandler;

    invoke-direct {v0, p2, p1}, Lcom/oppo/tribune/parse/handler/ForumThreadDefaultHandler;-><init>(II)V

    .line 56
    .local v0, "dh":Lcom/oppo/tribune/parse/handler/ForumThreadDefaultHandler;
    invoke-static {p0, v1, v3, v3, v0}, Lcom/oppo/tribune/util/Utils;->saxParse(Landroid/content/Context;Ljava/lang/String;ZZLorg/xml/sax/helpers/DefaultHandler;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 57
    invoke-virtual {v0}, Lcom/oppo/tribune/parse/handler/ForumThreadDefaultHandler;->getTpp()I

    move-result v3

    if-gtz v3, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-object v2

    .line 61
    :cond_1
    invoke-virtual {v0}, Lcom/oppo/tribune/parse/handler/ForumThreadDefaultHandler;->getContent()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 65
    new-instance v2, Lcom/oppo/tribune/square/parse/ProductDatelineResult;

    invoke-virtual {v0}, Lcom/oppo/tribune/parse/handler/ForumThreadDefaultHandler;->getContent()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0}, Lcom/oppo/tribune/parse/handler/ForumThreadDefaultHandler;->getTpp()I

    move-result v4

    invoke-direct {v2, p1, p2, v3, v4}, Lcom/oppo/tribune/square/parse/ProductDatelineResult;-><init>(IILjava/util/List;I)V

    goto :goto_0
.end method


# virtual methods
.method public final getPageSize()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/oppo/tribune/square/parse/ProductDatelineResult;->mPageSize:I

    return v0
.end method

.method public writeToDatabase(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method
