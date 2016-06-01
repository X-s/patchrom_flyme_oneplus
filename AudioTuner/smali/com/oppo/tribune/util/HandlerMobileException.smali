.class public Lcom/oppo/tribune/util/HandlerMobileException;
.super Ljava/lang/Object;
.source "HandlerMobileException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/util/HandlerMobileException$1;,
        Lcom/oppo/tribune/util/HandlerMobileException$ContentNode;
    }
.end annotation


# instance fields
.field private mResult:Ljava/lang/String;

.field private mSrcString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/oppo/tribune/util/HandlerMobileException;->mSrcString:Ljava/lang/String;

    .line 33
    return-void
.end method

.method private handleElement(Lorg/jsoup/nodes/Document;)Ljava/lang/String;
    .locals 11
    .param p1, "document"    # Lorg/jsoup/nodes/Document;

    .prologue
    .line 64
    if-nez p1, :cond_1

    .line 65
    iget-object v5, p0, Lcom/oppo/tribune/util/HandlerMobileException;->mSrcString:Ljava/lang/String;

    .line 108
    :cond_0
    :goto_0
    return-object v5

    .line 67
    :cond_1
    const/4 v5, 0x0

    .line 68
    .local v5, "result":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/jsoup/nodes/Document;->text()Ljava/lang/String;

    move-result-object v8

    .line 69
    .local v8, "text":Ljava/lang/String;
    move-object v7, v8

    .line 70
    .local v7, "temp":Ljava/lang/String;
    const/4 v3, 0x0

    .line 71
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/util/HandlerMobileException$ContentNode;>;"
    :goto_1
    const-string v9, "{"

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v9, "}"

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 72
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 73
    new-instance v4, Lcom/oppo/tribune/util/HandlerMobileException$ContentNode;

    const/4 v9, 0x0

    invoke-direct {v4, p0, v9}, Lcom/oppo/tribune/util/HandlerMobileException$ContentNode;-><init>(Lcom/oppo/tribune/util/HandlerMobileException;Lcom/oppo/tribune/util/HandlerMobileException$1;)V

    .line 74
    .local v4, "node":Lcom/oppo/tribune/util/HandlerMobileException$ContentNode;
    const-string v9, "{"

    invoke-virtual {v7, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 75
    .local v6, "start":I
    const-string v9, "}"

    invoke-virtual {v7, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 76
    .local v1, "end":I
    :goto_2
    if-ge v1, v6, :cond_2

    .line 77
    const/4 v9, 0x0

    invoke-virtual {v7, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 78
    const-string v9, "{"

    invoke-virtual {v7, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 79
    const-string v9, "}"

    invoke-virtual {v7, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    goto :goto_2

    .line 81
    :cond_2
    const-string v9, "{"

    invoke-virtual {v7, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    iput v9, v4, Lcom/oppo/tribune/util/HandlerMobileException$ContentNode;->startIndex:I

    .line 82
    const-string v9, "}"

    invoke-virtual {v7, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    iput v9, v4, Lcom/oppo/tribune/util/HandlerMobileException$ContentNode;->endIndex:I

    .line 83
    add-int/lit8 v9, v1, 0x1

    invoke-virtual {v7, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Lcom/oppo/tribune/util/HandlerMobileException$ContentNode;->content:Ljava/lang/String;

    .line 84
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v7, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 86
    goto :goto_1

    .line 88
    .end local v1    # "end":I
    .end local v4    # "node":Lcom/oppo/tribune/util/HandlerMobileException$ContentNode;
    .end local v6    # "start":I
    :cond_3
    invoke-static {v3}, Lcom/oppo/tribune/util/Utils;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 89
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/util/HandlerMobileException$ContentNode;

    .line 90
    .local v0, "contentNode":Lcom/oppo/tribune/util/HandlerMobileException$ContentNode;
    if-eqz v0, :cond_4

    iget-object v9, v0, Lcom/oppo/tribune/util/HandlerMobileException$ContentNode;->content:Ljava/lang/String;

    const-string v10, "resultId"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, v0, Lcom/oppo/tribune/util/HandlerMobileException$ContentNode;->content:Ljava/lang/String;

    const-string v10, "result"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, v0, Lcom/oppo/tribune/util/HandlerMobileException$ContentNode;->content:Ljava/lang/String;

    const-string v10, "adddata"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, v0, Lcom/oppo/tribune/util/HandlerMobileException$ContentNode;->content:Ljava/lang/String;

    const-string v10, "userid"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, v0, Lcom/oppo/tribune/util/HandlerMobileException$ContentNode;->content:Ljava/lang/String;

    const-string v10, "username"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, v0, Lcom/oppo/tribune/util/HandlerMobileException$ContentNode;->content:Ljava/lang/String;

    const-string v10, "email"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, v0, Lcom/oppo/tribune/util/HandlerMobileException$ContentNode;->content:Ljava/lang/String;

    const-string v10, "mobile"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, v0, Lcom/oppo/tribune/util/HandlerMobileException$ContentNode;->content:Ljava/lang/String;

    const-string v10, "opposid"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 99
    iget-object v5, v0, Lcom/oppo/tribune/util/HandlerMobileException$ContentNode;->content:Ljava/lang/String;

    .line 105
    .end local v0    # "contentNode":Lcom/oppo/tribune/util/HandlerMobileException$ContentNode;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_5
    if-nez v5, :cond_0

    .line 108
    iget-object v5, p0, Lcom/oppo/tribune/util/HandlerMobileException;->mSrcString:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private handleHtml(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "html"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-static {p1}, Lorg/jsoup/Jsoup;->parse(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    .line 56
    .local v0, "document":Lorg/jsoup/nodes/Document;
    if-nez v0, :cond_0

    .line 60
    .end local p1    # "html":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "html":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, v0}, Lcom/oppo/tribune/util/HandlerMobileException;->handleElement(Lorg/jsoup/nodes/Document;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private handlerResult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/oppo/tribune/util/HandlerMobileException;->mSrcString:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/oppo/tribune/util/HandlerMobileException;->handleHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/util/HandlerMobileException;->mResult:Ljava/lang/String;

    .line 46
    iget-object v0, p0, Lcom/oppo/tribune/util/HandlerMobileException;->mResult:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getHandlerResult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/oppo/tribune/util/HandlerMobileException;->mSrcString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/oppo/tribune/util/HandlerMobileException;->mSrcString:Ljava/lang/String;

    .line 39
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/oppo/tribune/util/HandlerMobileException;->handlerResult()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
