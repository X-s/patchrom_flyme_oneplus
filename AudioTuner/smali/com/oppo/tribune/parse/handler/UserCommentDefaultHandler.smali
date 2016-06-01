.class public Lcom/oppo/tribune/parse/handler/UserCommentDefaultHandler;
.super Lcom/oppo/tribune/parse/handler/BaseDefaultHandler;
.source "UserCommentDefaultHandler.java"


# instance fields
.field private final mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/parse/UserThread;",
            ">;"
        }
    .end annotation
.end field

.field private final mPage:I

.field private mThread:Lcom/oppo/tribune/parse/UserThread;

.field private final mUid:J


# direct methods
.method public constructor <init>(JI)V
    .locals 1
    .param p1, "uid"    # J
    .param p3, "page"    # I

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/oppo/tribune/parse/handler/BaseDefaultHandler;-><init>()V

    .line 30
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/parse/handler/UserCommentDefaultHandler;->mList:Ljava/util/List;

    .line 35
    iput-wide p1, p0, Lcom/oppo/tribune/parse/handler/UserCommentDefaultHandler;->mUid:J

    .line 36
    iput p3, p0, Lcom/oppo/tribune/parse/handler/UserCommentDefaultHandler;->mPage:I

    .line 37
    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-super {p0, p1, p2, p3}, Lcom/oppo/tribune/parse/handler/BaseDefaultHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/oppo/tribune/parse/handler/UserCommentDefaultHandler;->mThread:Lcom/oppo/tribune/parse/UserThread;

    if-nez v0, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    const-string v0, "thread"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 63
    iget-object v0, p0, Lcom/oppo/tribune/parse/handler/UserCommentDefaultHandler;->mList:Ljava/util/List;

    iget-object v1, p0, Lcom/oppo/tribune/parse/handler/UserCommentDefaultHandler;->mThread:Lcom/oppo/tribune/parse/UserThread;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/tribune/parse/handler/UserCommentDefaultHandler;->mThread:Lcom/oppo/tribune/parse/UserThread;

    goto :goto_0

    .line 68
    :cond_2
    const-string v0, "cid"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 69
    iget-object v0, p0, Lcom/oppo/tribune/parse/handler/UserCommentDefaultHandler;->mThread:Lcom/oppo/tribune/parse/UserThread;

    invoke-virtual {p0}, Lcom/oppo/tribune/parse/handler/UserCommentDefaultHandler;->getInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/parse/UserThread;->setCid(I)V

    goto :goto_0

    .line 70
    :cond_3
    const-string v0, "tid"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 71
    iget-object v0, p0, Lcom/oppo/tribune/parse/handler/UserCommentDefaultHandler;->mThread:Lcom/oppo/tribune/parse/UserThread;

    invoke-virtual {p0}, Lcom/oppo/tribune/parse/handler/UserCommentDefaultHandler;->getInt()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/oppo/tribune/parse/UserThread;->setTid(J)V

    goto :goto_0

    .line 72
    :cond_4
    const-string v0, "fid"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 73
    iget-object v0, p0, Lcom/oppo/tribune/parse/handler/UserCommentDefaultHandler;->mThread:Lcom/oppo/tribune/parse/UserThread;

    invoke-virtual {p0}, Lcom/oppo/tribune/parse/handler/UserCommentDefaultHandler;->getInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/parse/UserThread;->setFid(I)V

    goto :goto_0

    .line 74
    :cond_5
    const-string v0, "pid"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 75
    iget-object v0, p0, Lcom/oppo/tribune/parse/handler/UserCommentDefaultHandler;->mThread:Lcom/oppo/tribune/parse/UserThread;

    invoke-virtual {p0}, Lcom/oppo/tribune/parse/handler/UserCommentDefaultHandler;->getInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/parse/UserThread;->setPid(I)V

    goto :goto_0

    .line 76
    :cond_6
    const-string v0, "id"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 77
    iget-object v0, p0, Lcom/oppo/tribune/parse/handler/UserCommentDefaultHandler;->mThread:Lcom/oppo/tribune/parse/UserThread;

    invoke-virtual {p0}, Lcom/oppo/tribune/parse/handler/UserCommentDefaultHandler;->getInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/parse/UserThread;->setId(I)V

    goto :goto_0

    .line 78
    :cond_7
    const-string v0, "typeid"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 79
    iget-object v0, p0, Lcom/oppo/tribune/parse/handler/UserCommentDefaultHandler;->mThread:Lcom/oppo/tribune/parse/UserThread;

    invoke-virtual {p0}, Lcom/oppo/tribune/parse/handler/UserCommentDefaultHandler;->getInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/parse/UserThread;->setTypeId(I)V

    goto :goto_0

    .line 80
    :cond_8
    const-string v0, "author"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 81
    iget-object v0, p0, Lcom/oppo/tribune/parse/handler/UserCommentDefaultHandler;->mThread:Lcom/oppo/tribune/parse/UserThread;

    invoke-virtual {p0}, Lcom/oppo/tribune/parse/handler/UserCommentDefaultHandler;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/parse/UserThread;->setAuthor(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 82
    :cond_9
    const-string v0, "authorid"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 83
    iget-object v0, p0, Lcom/oppo/tribune/parse/handler/UserCommentDefaultHandler;->mThread:Lcom/oppo/tribune/parse/UserThread;

    invoke-virtual {p0}, Lcom/oppo/tribune/parse/handler/UserCommentDefaultHandler;->getLong()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/oppo/tribune/parse/UserThread;->setAuthorId(J)V

    goto/16 :goto_0

    .line 84
    :cond_a
    const-string v0, "subject"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 85
    iget-object v0, p0, Lcom/oppo/tribune/parse/handler/UserCommentDefaultHandler;->mThread:Lcom/oppo/tribune/parse/UserThread;

    invoke-virtual {p0}, Lcom/oppo/tribune/parse/handler/UserCommentDefaultHandler;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/parse/UserThread;->setSubject(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 86
    :cond_b
    const-string v0, "dateline"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 87
    iget-object v0, p0, Lcom/oppo/tribune/parse/handler/UserCommentDefaultHandler;->mThread:Lcom/oppo/tribune/parse/UserThread;

    invoke-virtual {p0}, Lcom/oppo/tribune/parse/handler/UserCommentDefaultHandler;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/parse/UserThread;->setDateline(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 88
    :cond_c
    const-string v0, "lastpost"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 89
    iget-object v0, p0, Lcom/oppo/tribune/parse/handler/UserCommentDefaultHandler;->mThread:Lcom/oppo/tribune/parse/UserThread;

    invoke-virtual {p0}, Lcom/oppo/tribune/parse/handler/UserCommentDefaultHandler;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/parse/UserThread;->setLastpost(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 90
    :cond_d
    const-string v0, "lastposter"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 91
    iget-object v0, p0, Lcom/oppo/tribune/parse/handler/UserCommentDefaultHandler;->mThread:Lcom/oppo/tribune/parse/UserThread;

    invoke-virtual {p0}, Lcom/oppo/tribune/parse/handler/UserCommentDefaultHandler;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/parse/UserThread;->setLastposter(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 92
    :cond_e
    const-string v0, "views"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 93
    iget-object v0, p0, Lcom/oppo/tribune/parse/handler/UserCommentDefaultHandler;->mThread:Lcom/oppo/tribune/parse/UserThread;

    invoke-virtual {p0}, Lcom/oppo/tribune/parse/handler/UserCommentDefaultHandler;->getInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/parse/UserThread;->setViews(I)V

    goto/16 :goto_0

    .line 94
    :cond_f
    const-string v0, "replies"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 95
    iget-object v0, p0, Lcom/oppo/tribune/parse/handler/UserCommentDefaultHandler;->mThread:Lcom/oppo/tribune/parse/UserThread;

    invoke-virtual {p0}, Lcom/oppo/tribune/parse/handler/UserCommentDefaultHandler;->getInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/parse/UserThread;->setReplies(I)V

    goto/16 :goto_0

    .line 96
    :cond_10
    const-string v0, "attachment"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 97
    iget-object v0, p0, Lcom/oppo/tribune/parse/handler/UserCommentDefaultHandler;->mThread:Lcom/oppo/tribune/parse/UserThread;

    invoke-virtual {p0}, Lcom/oppo/tribune/parse/handler/UserCommentDefaultHandler;->getInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/parse/UserThread;->setAttachment(I)V

    goto/16 :goto_0

    .line 98
    :cond_11
    const-string v0, "invisible"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 99
    iget-object v0, p0, Lcom/oppo/tribune/parse/handler/UserCommentDefaultHandler;->mThread:Lcom/oppo/tribune/parse/UserThread;

    invoke-virtual {p0}, Lcom/oppo/tribune/parse/handler/UserCommentDefaultHandler;->getInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/parse/UserThread;->setInvisibile(I)V

    goto/16 :goto_0

    .line 100
    :cond_12
    const-string v0, "closed"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 104
    iget-object v0, p0, Lcom/oppo/tribune/parse/handler/UserCommentDefaultHandler;->mThread:Lcom/oppo/tribune/parse/UserThread;

    invoke-virtual {p0}, Lcom/oppo/tribune/parse/handler/UserCommentDefaultHandler;->getInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/parse/UserThread;->setInvisibile(I)V

    goto/16 :goto_0

    .line 105
    :cond_13
    const-string v0, "message"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 106
    iget-object v0, p0, Lcom/oppo/tribune/parse/handler/UserCommentDefaultHandler;->mThread:Lcom/oppo/tribune/parse/UserThread;

    invoke-virtual {p0}, Lcom/oppo/tribune/parse/handler/UserCommentDefaultHandler;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/parse/UserThread;->setMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 107
    :cond_14
    const-string v0, "forumname"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 108
    iget-object v0, p0, Lcom/oppo/tribune/parse/handler/UserCommentDefaultHandler;->mThread:Lcom/oppo/tribune/parse/UserThread;

    invoke-virtual {p0}, Lcom/oppo/tribune/parse/handler/UserCommentDefaultHandler;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/parse/UserThread;->setForumName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 109
    :cond_15
    const-string v0, "comment"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 110
    iget-object v0, p0, Lcom/oppo/tribune/parse/handler/UserCommentDefaultHandler;->mThread:Lcom/oppo/tribune/parse/UserThread;

    invoke-virtual {p0}, Lcom/oppo/tribune/parse/handler/UserCommentDefaultHandler;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/parse/UserThread;->setComment(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 111
    :cond_16
    const-string v0, "displayorder"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 112
    iget-object v0, p0, Lcom/oppo/tribune/parse/handler/UserCommentDefaultHandler;->mThread:Lcom/oppo/tribune/parse/UserThread;

    invoke-virtual {p0}, Lcom/oppo/tribune/parse/handler/UserCommentDefaultHandler;->getInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/parse/UserThread;->setDisplayOrder(I)V

    goto/16 :goto_0

    .line 113
    :cond_17
    const-string v0, "android_subject"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 114
    iget-object v0, p0, Lcom/oppo/tribune/parse/handler/UserCommentDefaultHandler;->mThread:Lcom/oppo/tribune/parse/UserThread;

    invoke-virtual {p0}, Lcom/oppo/tribune/parse/handler/UserCommentDefaultHandler;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/parse/UserThread;->setAndroidSubject(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 115
    :cond_18
    const-string v0, "android_summary"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/oppo/tribune/parse/handler/UserCommentDefaultHandler;->mThread:Lcom/oppo/tribune/parse/UserThread;

    invoke-virtual {p0}, Lcom/oppo/tribune/parse/handler/UserCommentDefaultHandler;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/parse/UserThread;->setAndroidSummary(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public getContent()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/parse/UserThread;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oppo/tribune/parse/handler/UserCommentDefaultHandler;->mList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

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
    const/4 v1, 0x0

    .line 42
    invoke-super {p0, p1, p2, p3, p4}, Lcom/oppo/tribune/parse/handler/BaseDefaultHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 44
    const-string v0, "home"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    iget-object v0, p0, Lcom/oppo/tribune/parse/handler/UserCommentDefaultHandler;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    const-string v0, "thread"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    new-instance v0, Lcom/oppo/tribune/parse/UserThread;

    iget-wide v2, p0, Lcom/oppo/tribune/parse/handler/UserCommentDefaultHandler;->mUid:J

    invoke-direct {v0, v2, v3}, Lcom/oppo/tribune/parse/UserThread;-><init>(J)V

    iput-object v0, p0, Lcom/oppo/tribune/parse/handler/UserCommentDefaultHandler;->mThread:Lcom/oppo/tribune/parse/UserThread;

    .line 48
    iget-object v0, p0, Lcom/oppo/tribune/parse/handler/UserCommentDefaultHandler;->mThread:Lcom/oppo/tribune/parse/UserThread;

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/parse/UserThread;->setRead(I)V

    .line 49
    iget-object v0, p0, Lcom/oppo/tribune/parse/handler/UserCommentDefaultHandler;->mThread:Lcom/oppo/tribune/parse/UserThread;

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/parse/UserThread;->setRecommmended(I)V

    .line 50
    iget-object v0, p0, Lcom/oppo/tribune/parse/handler/UserCommentDefaultHandler;->mThread:Lcom/oppo/tribune/parse/UserThread;

    iget v1, p0, Lcom/oppo/tribune/parse/handler/UserCommentDefaultHandler;->mPage:I

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/parse/UserThread;->setPage(I)V

    goto :goto_0
.end method
