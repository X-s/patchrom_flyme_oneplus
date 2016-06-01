.class public abstract Lcom/oppo/tribune/parse/handler/AbstractDefaultHandler;
.super Lcom/oppo/tribune/parse/handler/BaseDefaultHandler;
.source "AbstractDefaultHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/oppo/tribune/parse/handler/BaseDefaultHandler;"
    }
.end annotation


# instance fields
.field private mItem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mItemName:Ljava/lang/String;

.field protected final mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mStartName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .local p0, "this":Lcom/oppo/tribune/parse/handler/AbstractDefaultHandler;, "Lcom/oppo/tribune/parse/handler/AbstractDefaultHandler<TT;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 35
    invoke-direct {p0}, Lcom/oppo/tribune/parse/handler/BaseDefaultHandler;-><init>()V

    .line 31
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/tribune/parse/handler/AbstractDefaultHandler;->mList:Ljava/util/List;

    .line 36
    invoke-virtual {p0}, Lcom/oppo/tribune/parse/handler/AbstractDefaultHandler;->onInitStartName()Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 38
    iput-object v0, p0, Lcom/oppo/tribune/parse/handler/AbstractDefaultHandler;->mStartName:Ljava/lang/String;

    .line 40
    invoke-virtual {p0}, Lcom/oppo/tribune/parse/handler/AbstractDefaultHandler;->onInitItemName()Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :goto_1
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 42
    iput-object v0, p0, Lcom/oppo/tribune/parse/handler/AbstractDefaultHandler;->mItemName:Ljava/lang/String;

    .line 43
    return-void

    :cond_0
    move v1, v3

    .line 37
    goto :goto_0

    :cond_1
    move v2, v3

    .line 41
    goto :goto_1
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
    .line 91
    .local p0, "this":Lcom/oppo/tribune/parse/handler/AbstractDefaultHandler;, "Lcom/oppo/tribune/parse/handler/AbstractDefaultHandler<TT;>;"
    invoke-super {p0, p1, p2, p3}, Lcom/oppo/tribune/parse/handler/BaseDefaultHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v1, p0, Lcom/oppo/tribune/parse/handler/AbstractDefaultHandler;->mItem:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 94
    invoke-virtual {p0, p2}, Lcom/oppo/tribune/parse/handler/AbstractDefaultHandler;->onEndOtherElement(Ljava/lang/String;)V

    .line 107
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/oppo/tribune/parse/handler/AbstractDefaultHandler;->mItemName:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 99
    iget-object v1, p0, Lcom/oppo/tribune/parse/handler/AbstractDefaultHandler;->mItem:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/oppo/tribune/parse/handler/AbstractDefaultHandler;->onEndItem(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 100
    .local v0, "item":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_1

    .line 101
    iget-object v1, p0, Lcom/oppo/tribune/parse/handler/AbstractDefaultHandler;->mList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oppo/tribune/parse/handler/AbstractDefaultHandler;->mItem:Ljava/lang/Object;

    .line 106
    .end local v0    # "item":Ljava/lang/Object;, "TT;"
    :cond_2
    iget-object v1, p0, Lcom/oppo/tribune/parse/handler/AbstractDefaultHandler;->mItem:Ljava/lang/Object;

    invoke-virtual {p0, v1, p2}, Lcom/oppo/tribune/parse/handler/AbstractDefaultHandler;->onEndItemElement(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getContent()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lcom/oppo/tribune/parse/handler/AbstractDefaultHandler;, "Lcom/oppo/tribune/parse/handler/AbstractDefaultHandler<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oppo/tribune/parse/handler/AbstractDefaultHandler;->mList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method protected abstract onCreateNew()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected onEndItem(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Lcom/oppo/tribune/parse/handler/AbstractDefaultHandler;, "Lcom/oppo/tribune/parse/handler/AbstractDefaultHandler<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    return-object p1
.end method

.method protected abstract onEndItemElement(Ljava/lang/Object;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method protected onEndOtherElement(Ljava/lang/String;)V
    .locals 0
    .param p1, "localName"    # Ljava/lang/String;

    .prologue
    .line 68
    .local p0, "this":Lcom/oppo/tribune/parse/handler/AbstractDefaultHandler;, "Lcom/oppo/tribune/parse/handler/AbstractDefaultHandler<TT;>;"
    return-void
.end method

.method protected abstract onInitItemName()Ljava/lang/String;
.end method

.method protected abstract onInitStartName()Ljava/lang/String;
.end method

.method protected onStartItemElement(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .param p2, "localName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lcom/oppo/tribune/parse/handler/AbstractDefaultHandler;, "Lcom/oppo/tribune/parse/handler/AbstractDefaultHandler<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    return-void
.end method

.method protected onStartOtherElement(Ljava/lang/String;)V
    .locals 0
    .param p1, "localName"    # Ljava/lang/String;

    .prologue
    .line 63
    .local p0, "this":Lcom/oppo/tribune/parse/handler/AbstractDefaultHandler;, "Lcom/oppo/tribune/parse/handler/AbstractDefaultHandler<TT;>;"
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1
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
    .line 73
    .local p0, "this":Lcom/oppo/tribune/parse/handler/AbstractDefaultHandler;, "Lcom/oppo/tribune/parse/handler/AbstractDefaultHandler<TT;>;"
    invoke-super {p0, p1, p2, p3, p4}, Lcom/oppo/tribune/parse/handler/BaseDefaultHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 75
    iget-object v0, p0, Lcom/oppo/tribune/parse/handler/AbstractDefaultHandler;->mStartName:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/oppo/tribune/parse/handler/AbstractDefaultHandler;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 81
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/oppo/tribune/parse/handler/AbstractDefaultHandler;->mItem:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 82
    iget-object v0, p0, Lcom/oppo/tribune/parse/handler/AbstractDefaultHandler;->mItem:Ljava/lang/Object;

    invoke-virtual {p0, v0, p2}, Lcom/oppo/tribune/parse/handler/AbstractDefaultHandler;->onStartItemElement(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    :goto_1
    return-void

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/oppo/tribune/parse/handler/AbstractDefaultHandler;->mItemName:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/oppo/tribune/parse/handler/AbstractDefaultHandler;->onCreateNew()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/parse/handler/AbstractDefaultHandler;->mItem:Ljava/lang/Object;

    goto :goto_0

    .line 84
    :cond_2
    invoke-virtual {p0, p2}, Lcom/oppo/tribune/parse/handler/AbstractDefaultHandler;->onStartOtherElement(Ljava/lang/String;)V

    goto :goto_1
.end method
