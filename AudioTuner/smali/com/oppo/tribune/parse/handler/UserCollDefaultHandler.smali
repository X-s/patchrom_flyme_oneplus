.class public Lcom/oppo/tribune/parse/handler/UserCollDefaultHandler;
.super Lcom/oppo/tribune/parse/handler/BaseDefaultHandler;
.source "UserCollDefaultHandler.java"


# instance fields
.field private mItem:Lcom/oppo/tribune/parse/UserCollPost;

.field private final mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/parse/UserCollPost;",
            ">;"
        }
    .end annotation
.end field

.field private mMessage:Ljava/lang/String;

.field private final mPage:I

.field private final mUid:J


# direct methods
.method public constructor <init>(JI)V
    .locals 1
    .param p1, "uid"    # J
    .param p3, "page"    # I

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/oppo/tribune/parse/handler/BaseDefaultHandler;-><init>()V

    .line 31
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/parse/handler/UserCollDefaultHandler;->mList:Ljava/util/List;

    .line 37
    iput-wide p1, p0, Lcom/oppo/tribune/parse/handler/UserCollDefaultHandler;->mUid:J

    .line 38
    iput p3, p0, Lcom/oppo/tribune/parse/handler/UserCollDefaultHandler;->mPage:I

    .line 39
    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-super {p0, p1, p2, p3}, Lcom/oppo/tribune/parse/handler/BaseDefaultHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v0, "message"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/oppo/tribune/parse/handler/UserCollDefaultHandler;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/parse/handler/UserCollDefaultHandler;->mMessage:Ljava/lang/String;

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/parse/handler/UserCollDefaultHandler;->mItem:Lcom/oppo/tribune/parse/UserCollPost;

    if-nez v0, :cond_2

    .line 99
    :cond_1
    :goto_0
    return-void

    .line 81
    :cond_2
    const-string v0, "item"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 82
    iget-object v0, p0, Lcom/oppo/tribune/parse/handler/UserCollDefaultHandler;->mList:Ljava/util/List;

    iget-object v1, p0, Lcom/oppo/tribune/parse/handler/UserCollDefaultHandler;->mItem:Lcom/oppo/tribune/parse/UserCollPost;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/tribune/parse/handler/UserCollDefaultHandler;->mItem:Lcom/oppo/tribune/parse/UserCollPost;

    .line 86
    :cond_3
    const-string v0, "url"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 87
    iget-object v0, p0, Lcom/oppo/tribune/parse/handler/UserCollDefaultHandler;->mItem:Lcom/oppo/tribune/parse/UserCollPost;

    invoke-virtual {p0}, Lcom/oppo/tribune/parse/handler/UserCollDefaultHandler;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/parse/UserCollPost;->setUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 88
    :cond_4
    const-string v0, "title"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 89
    iget-object v0, p0, Lcom/oppo/tribune/parse/handler/UserCollDefaultHandler;->mItem:Lcom/oppo/tribune/parse/UserCollPost;

    invoke-virtual {p0}, Lcom/oppo/tribune/parse/handler/UserCollDefaultHandler;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/parse/UserCollPost;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 90
    :cond_5
    const-string v0, "description"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 91
    iget-object v0, p0, Lcom/oppo/tribune/parse/handler/UserCollDefaultHandler;->mItem:Lcom/oppo/tribune/parse/UserCollPost;

    invoke-virtual {p0}, Lcom/oppo/tribune/parse/handler/UserCollDefaultHandler;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/parse/UserCollPost;->setDescription(Ljava/lang/String;)V

    goto :goto_0

    .line 92
    :cond_6
    const-string v0, "dataline"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 93
    iget-object v0, p0, Lcom/oppo/tribune/parse/handler/UserCollDefaultHandler;->mItem:Lcom/oppo/tribune/parse/UserCollPost;

    invoke-virtual {p0}, Lcom/oppo/tribune/parse/handler/UserCollDefaultHandler;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/parse/UserCollPost;->setDateline(Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :cond_7
    const-string v0, "durl"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 95
    iget-object v0, p0, Lcom/oppo/tribune/parse/handler/UserCollDefaultHandler;->mItem:Lcom/oppo/tribune/parse/UserCollPost;

    invoke-virtual {p0}, Lcom/oppo/tribune/parse/handler/UserCollDefaultHandler;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/parse/UserCollPost;->setDurl(Ljava/lang/String;)V

    goto :goto_0

    .line 96
    :cond_8
    const-string v0, "dtitle"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/oppo/tribune/parse/handler/UserCollDefaultHandler;->mItem:Lcom/oppo/tribune/parse/UserCollPost;

    invoke-virtual {p0}, Lcom/oppo/tribune/parse/handler/UserCollDefaultHandler;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/parse/UserCollPost;->setDtitle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getContent()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/parse/UserCollPost;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/oppo/tribune/parse/handler/UserCollDefaultHandler;->mMessage:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oppo/tribune/parse/handler/UserCollDefaultHandler;->mList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 49
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/oppo/tribune/parse/handler/UserCollDefaultHandler;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-super {p0, p1, p2, p3, p4}, Lcom/oppo/tribune/parse/handler/BaseDefaultHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 57
    const-string v0, "favorite"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    iget-object v0, p0, Lcom/oppo/tribune/parse/handler/UserCollDefaultHandler;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    const-string v0, "item"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    new-instance v0, Lcom/oppo/tribune/parse/UserCollPost;

    iget-wide v2, p0, Lcom/oppo/tribune/parse/handler/UserCollDefaultHandler;->mUid:J

    invoke-direct {v0, v2, v3}, Lcom/oppo/tribune/parse/UserCollPost;-><init>(J)V

    iput-object v0, p0, Lcom/oppo/tribune/parse/handler/UserCollDefaultHandler;->mItem:Lcom/oppo/tribune/parse/UserCollPost;

    .line 61
    iget-object v0, p0, Lcom/oppo/tribune/parse/handler/UserCollDefaultHandler;->mItem:Lcom/oppo/tribune/parse/UserCollPost;

    iget v1, p0, Lcom/oppo/tribune/parse/handler/UserCollDefaultHandler;->mPage:I

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/parse/UserCollPost;->setPage(I)V

    goto :goto_0
.end method
