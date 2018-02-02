.class public Lcom/adobe/xmp/impl/XMPIteratorImpl;
.super Ljava/lang/Object;
.source "XMPIteratorImpl.java"

# interfaces
.implements Lcom/adobe/xmp/XMPIterator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;,
        Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIteratorChildren;
    }
.end annotation


# instance fields
.field private baseNS:Ljava/lang/String;

.field private nodeIterator:Ljava/util/Iterator;

.field private options:Lcom/adobe/xmp/options/IteratorOptions;

.field protected skipSiblings:Z

.field protected skipSubtree:Z


# direct methods
.method public constructor <init>(Lcom/adobe/xmp/impl/XMPMetaImpl;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/IteratorOptions;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object v4, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl;->baseNS:Ljava/lang/String;

    .line 41
    iput-boolean v2, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl;->skipSiblings:Z

    .line 43
    iput-boolean v2, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl;->skipSubtree:Z

    .line 45
    iput-object v4, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl;->nodeIterator:Ljava/util/Iterator;

    .line 61
    if-nez p4, :cond_0

    new-instance p4, Lcom/adobe/xmp/options/IteratorOptions;

    invoke-direct {p4}, Lcom/adobe/xmp/options/IteratorOptions;-><init>()V

    :cond_0
    iput-object p4, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl;->options:Lcom/adobe/xmp/options/IteratorOptions;

    .line 66
    if-nez p2, :cond_6

    :cond_1
    move v0, v2

    .line 67
    :goto_0
    if-nez p3, :cond_7

    :cond_2
    move v3, v2

    .line 69
    :goto_1
    if-eqz v0, :cond_8

    .line 74
    :cond_3
    if-nez v0, :cond_9

    .line 90
    :cond_4
    if-nez v0, :cond_b

    .line 98
    :cond_5
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Schema namespace URI is required"

    const/16 v2, 0x65

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 66
    :cond_6
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    move v0, v1

    goto :goto_0

    .line 67
    :cond_7
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    move v3, v1

    goto :goto_1

    .line 69
    :cond_8
    if-nez v3, :cond_3

    .line 72
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPMetaImpl;->getRoot()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    move-object v2, v0

    move-object v0, v4

    .line 103
    :goto_2
    if-nez v2, :cond_c

    .line 117
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl;->nodeIterator:Ljava/util/Iterator;

    .line 119
    :goto_3
    return-void

    .line 74
    :cond_9
    if-eqz v3, :cond_4

    .line 77
    invoke-static {p2, p3}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->expandXPath(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/impl/xpath/XMPPath;

    move-result-object v3

    .line 80
    new-instance v5, Lcom/adobe/xmp/impl/xpath/XMPPath;

    invoke-direct {v5}, Lcom/adobe/xmp/impl/xpath/XMPPath;-><init>()V

    move v0, v2

    .line 81
    :goto_4
    invoke-virtual {v3}, Lcom/adobe/xmp/impl/xpath/XMPPath;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v0, v6, :cond_a

    .line 83
    invoke-virtual {v3, v0}, Lcom/adobe/xmp/impl/xpath/XMPPath;->getSegment(I)Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/adobe/xmp/impl/xpath/XMPPath;->add(Lcom/adobe/xmp/impl/xpath/XMPPathSegment;)V

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 86
    :cond_a
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPMetaImpl;->getRoot()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    invoke-static {v0, v3, v2, v4}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findNode(Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/xpath/XMPPath;ZLcom/adobe/xmp/options/PropertyOptions;)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v2

    .line 87
    iput-object p2, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl;->baseNS:Ljava/lang/String;

    .line 88
    invoke-virtual {v5}, Lcom/adobe/xmp/impl/xpath/XMPPath;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 90
    :cond_b
    if-nez v3, :cond_5

    .line 93
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPMetaImpl;->getRoot()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    invoke-static {v0, p2, v2}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findSchemaNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    move-object v2, v0

    move-object v0, v4

    .line 94
    goto :goto_2

    .line 105
    :cond_c
    iget-object v3, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl;->options:Lcom/adobe/xmp/options/IteratorOptions;

    invoke-virtual {v3}, Lcom/adobe/xmp/options/IteratorOptions;->isJustChildren()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 111
    new-instance v1, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIteratorChildren;

    invoke-direct {v1, p0, v2, v0}, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIteratorChildren;-><init>(Lcom/adobe/xmp/impl/XMPIteratorImpl;Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl;->nodeIterator:Ljava/util/Iterator;

    goto :goto_3

    .line 107
    :cond_d
    new-instance v3, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;

    invoke-direct {v3, p0, v2, v0, v1}, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;-><init>(Lcom/adobe/xmp/impl/XMPIteratorImpl;Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;I)V

    iput-object v3, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl;->nodeIterator:Ljava/util/Iterator;

    goto :goto_3
.end method


# virtual methods
.method protected getBaseNS()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl;->baseNS:Ljava/lang/String;

    return-object v0
.end method

.method protected getOptions()Lcom/adobe/xmp/options/IteratorOptions;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl;->options:Lcom/adobe/xmp/options/IteratorOptions;

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl;->nodeIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl;->nodeIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 164
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "The XMPIterator does not support remove()."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected setBaseNS(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl;->baseNS:Ljava/lang/String;

    .line 192
    return-void
.end method

.method public skipSiblings()V
    .locals 1

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPIteratorImpl;->skipSubtree()V

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl;->skipSiblings:Z

    .line 138
    return-void
.end method

.method public skipSubtree()V
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl;->skipSubtree:Z

    .line 128
    return-void
.end method
