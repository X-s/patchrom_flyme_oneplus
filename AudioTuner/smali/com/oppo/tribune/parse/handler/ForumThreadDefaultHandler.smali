.class public Lcom/oppo/tribune/parse/handler/ForumThreadDefaultHandler;
.super Lcom/oppo/tribune/parse/handler/AbstractDefaultHandler;
.source "ForumThreadDefaultHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oppo/tribune/parse/handler/AbstractDefaultHandler",
        "<",
        "Lcom/oppo/tribune/parse/LocalThread;",
        ">;"
    }
.end annotation


# instance fields
.field private final mFidType:I

.field private final mPage:I

.field private mTpp:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "page"    # I

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/oppo/tribune/parse/handler/AbstractDefaultHandler;-><init>()V

    .line 30
    iput p1, p0, Lcom/oppo/tribune/parse/handler/ForumThreadDefaultHandler;->mPage:I

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/parse/handler/ForumThreadDefaultHandler;->mFidType:I

    .line 32
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "page"    # I
    .param p2, "fidType"    # I

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/oppo/tribune/parse/handler/AbstractDefaultHandler;-><init>()V

    .line 36
    iput p1, p0, Lcom/oppo/tribune/parse/handler/ForumThreadDefaultHandler;->mPage:I

    .line 37
    iput p2, p0, Lcom/oppo/tribune/parse/handler/ForumThreadDefaultHandler;->mFidType:I

    .line 38
    return-void
.end method

.method private formatDateline(J)Ljava/lang/String;
    .locals 3
    .param p1, "millis"    # J

    .prologue
    .line 119
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 120
    .local v1, "time":Ljava/util/GregorianCalendar;
    invoke-virtual {v1, p1, p2}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 122
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 123
    .local v0, "format":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getTime()Ljava/lang/String;
    .locals 4

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/oppo/tribune/parse/handler/ForumThreadDefaultHandler;->getLong()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/oppo/tribune/parse/handler/ForumThreadDefaultHandler;->formatDateline(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getTpp()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/oppo/tribune/parse/handler/ForumThreadDefaultHandler;->mTpp:I

    return v0
.end method

.method protected onCreateNew()Lcom/oppo/tribune/parse/LocalThread;
    .locals 2

    .prologue
    .line 56
    new-instance v0, Lcom/oppo/tribune/parse/LocalThread;

    invoke-direct {v0}, Lcom/oppo/tribune/parse/LocalThread;-><init>()V

    .line 57
    .local v0, "thread":Lcom/oppo/tribune/parse/LocalThread;
    iget v1, p0, Lcom/oppo/tribune/parse/handler/ForumThreadDefaultHandler;->mPage:I

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/parse/LocalThread;->setPage(I)V

    .line 58
    iget v1, p0, Lcom/oppo/tribune/parse/handler/ForumThreadDefaultHandler;->mFidType:I

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/parse/LocalThread;->setFidType(I)V

    .line 59
    return-object v0
.end method

.method protected bridge synthetic onCreateNew()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/oppo/tribune/parse/handler/ForumThreadDefaultHandler;->onCreateNew()Lcom/oppo/tribune/parse/LocalThread;

    move-result-object v0

    return-object v0
.end method

.method protected onEndItemElement(Lcom/oppo/tribune/parse/LocalThread;Ljava/lang/String;)V
    .locals 2
    .param p1, "item"    # Lcom/oppo/tribune/parse/LocalThread;
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    .line 64
    const-string v0, "author"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    invoke-virtual {p0}, Lcom/oppo/tribune/parse/handler/ForumThreadDefaultHandler;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oppo/tribune/parse/LocalThread;->setAuthor(Ljava/lang/String;)V

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    const-string v0, "authorid"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 67
    invoke-virtual {p0}, Lcom/oppo/tribune/parse/handler/ForumThreadDefaultHandler;->getLong()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/oppo/tribune/parse/LocalThread;->setAuthorId(J)V

    goto :goto_0

    .line 68
    :cond_2
    const-string v0, "groupid"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 69
    invoke-virtual {p0}, Lcom/oppo/tribune/parse/handler/ForumThreadDefaultHandler;->getInt()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/oppo/tribune/parse/LocalThread;->setGroupId(I)V

    goto :goto_0

    .line 70
    :cond_3
    const-string v0, "subject"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 71
    invoke-virtual {p0}, Lcom/oppo/tribune/parse/handler/ForumThreadDefaultHandler;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oppo/tribune/parse/LocalThread;->setSubject(Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :cond_4
    const-string v0, "summary"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 73
    invoke-virtual {p0}, Lcom/oppo/tribune/parse/handler/ForumThreadDefaultHandler;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oppo/tribune/parse/LocalThread;->setSummary(Ljava/lang/String;)V

    goto :goto_0

    .line 74
    :cond_5
    const-string v0, "dateline"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 75
    invoke-direct {p0}, Lcom/oppo/tribune/parse/handler/ForumThreadDefaultHandler;->getTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oppo/tribune/parse/LocalThread;->setDateline(Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :cond_6
    const-string v0, "replies"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 77
    invoke-virtual {p0}, Lcom/oppo/tribune/parse/handler/ForumThreadDefaultHandler;->getInt()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/oppo/tribune/parse/LocalThread;->setReplies(I)V

    goto :goto_0

    .line 78
    :cond_7
    const-string v0, "hot"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 79
    invoke-virtual {p0}, Lcom/oppo/tribune/parse/handler/ForumThreadDefaultHandler;->getInt()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/oppo/tribune/parse/LocalThread;->setHot(I)V

    goto :goto_0

    .line 80
    :cond_8
    const-string v0, "attachment"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 81
    invoke-virtual {p0}, Lcom/oppo/tribune/parse/handler/ForumThreadDefaultHandler;->getInt()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/oppo/tribune/parse/LocalThread;->setAttachment(I)V

    goto :goto_0

    .line 82
    :cond_9
    const-string v0, "tid"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 83
    invoke-virtual {p0}, Lcom/oppo/tribune/parse/handler/ForumThreadDefaultHandler;->getInt()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/oppo/tribune/parse/LocalThread;->setTid(J)V

    goto/16 :goto_0

    .line 84
    :cond_a
    const-string v0, "typename"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 85
    invoke-virtual {p0}, Lcom/oppo/tribune/parse/handler/ForumThreadDefaultHandler;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oppo/tribune/parse/LocalThread;->setTypeName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 86
    :cond_b
    const-string v0, "typeid"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 87
    invoke-virtual {p0}, Lcom/oppo/tribune/parse/handler/ForumThreadDefaultHandler;->getInt()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/oppo/tribune/parse/LocalThread;->setTypeId(I)V

    goto/16 :goto_0

    .line 88
    :cond_c
    const-string v0, "fid"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 89
    invoke-virtual {p0}, Lcom/oppo/tribune/parse/handler/ForumThreadDefaultHandler;->getInt()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/oppo/tribune/parse/LocalThread;->setFid(I)V

    goto/16 :goto_0

    .line 90
    :cond_d
    const-string v0, "lastpost"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 91
    invoke-direct {p0}, Lcom/oppo/tribune/parse/handler/ForumThreadDefaultHandler;->getTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oppo/tribune/parse/LocalThread;->setLastpost(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 92
    :cond_e
    const-string v0, "lastposter"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 93
    invoke-virtual {p0}, Lcom/oppo/tribune/parse/handler/ForumThreadDefaultHandler;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oppo/tribune/parse/LocalThread;->setLastposter(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 94
    :cond_f
    const-string v0, "views"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 95
    invoke-virtual {p0}, Lcom/oppo/tribune/parse/handler/ForumThreadDefaultHandler;->getInt()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/oppo/tribune/parse/LocalThread;->setViews(I)V

    goto/16 :goto_0

    .line 96
    :cond_10
    const-string v0, "visibility"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 97
    invoke-virtual {p0}, Lcom/oppo/tribune/parse/handler/ForumThreadDefaultHandler;->getInt()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/oppo/tribune/parse/LocalThread;->setVisibility(I)V

    goto/16 :goto_0

    .line 98
    :cond_11
    const-string v0, "position"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 99
    invoke-virtual {p0}, Lcom/oppo/tribune/parse/handler/ForumThreadDefaultHandler;->getInt()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/oppo/tribune/parse/LocalThread;->setPosition(I)V

    goto/16 :goto_0

    .line 100
    :cond_12
    const-string v0, "displayorder"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/oppo/tribune/parse/handler/ForumThreadDefaultHandler;->getInt()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/oppo/tribune/parse/LocalThread;->setDisplayOrder(I)V

    goto/16 :goto_0
.end method

.method protected bridge synthetic onEndItemElement(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/String;

    .prologue
    .line 21
    check-cast p1, Lcom/oppo/tribune/parse/LocalThread;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/parse/handler/ForumThreadDefaultHandler;->onEndItemElement(Lcom/oppo/tribune/parse/LocalThread;Ljava/lang/String;)V

    return-void
.end method

.method protected onEndOtherElement(Ljava/lang/String;)V
    .locals 1
    .param p1, "localName"    # Ljava/lang/String;

    .prologue
    .line 107
    invoke-super {p0, p1}, Lcom/oppo/tribune/parse/handler/AbstractDefaultHandler;->onEndOtherElement(Ljava/lang/String;)V

    .line 109
    const-string v0, "tpp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/oppo/tribune/parse/handler/ForumThreadDefaultHandler;->getInt()I

    move-result v0

    iput v0, p0, Lcom/oppo/tribune/parse/handler/ForumThreadDefaultHandler;->mTpp:I

    .line 112
    :cond_0
    return-void
.end method

.method protected onInitItemName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    const-string v0, "thread"

    return-object v0
.end method

.method protected onInitStartName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    const-string v0, "forum"

    return-object v0
.end method
