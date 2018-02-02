.class Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIteratorChildren;
.super Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;
.source "XMPIteratorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/xmp/impl/XMPIteratorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NodeIteratorChildren"
.end annotation


# instance fields
.field private childrenIterator:Ljava/util/Iterator;

.field private index:I

.field private parentPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/adobe/xmp/impl/XMPIteratorImpl;


# direct methods
.method public constructor <init>(Lcom/adobe/xmp/impl/XMPIteratorImpl;Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 538
    iput-object p1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIteratorChildren;->this$0:Lcom/adobe/xmp/impl/XMPIteratorImpl;

    .line 537
    invoke-direct {p0, p1}, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;-><init>(Lcom/adobe/xmp/impl/XMPIteratorImpl;)V

    .line 529
    iput v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIteratorChildren;->index:I

    .line 539
    invoke-virtual {p2}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/xmp/options/PropertyOptions;->isSchemaNode()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    const/4 v0, 0x1

    .line 543
    invoke-virtual {p0, p2, p3, v0}, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIteratorChildren;->accumulatePath(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIteratorChildren;->parentPath:Ljava/lang/String;

    .line 545
    invoke-virtual {p2}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIteratorChildren;->childrenIterator:Ljava/util/Iterator;

    .line 546
    return-void

    .line 541
    :cond_0
    invoke-virtual {p2}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/adobe/xmp/impl/XMPIteratorImpl;->setBaseNS(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public hasNext()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 556
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIteratorChildren;->getReturnProperty()Lcom/adobe/xmp/properties/XMPPropertyInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIteratorChildren;->this$0:Lcom/adobe/xmp/impl/XMPIteratorImpl;

    iget-boolean v0, v0, Lcom/adobe/xmp/impl/XMPIteratorImpl;->skipSiblings:Z

    if-nez v0, :cond_1

    .line 565
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIteratorChildren;->childrenIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 594
    return v2

    .line 559
    :cond_0
    return v4

    .line 563
    :cond_1
    return v2

    .line 567
    :cond_2
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIteratorChildren;->childrenIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/xmp/impl/XMPNode;

    .line 568
    iget v2, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIteratorChildren;->index:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIteratorChildren;->index:I

    .line 571
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/xmp/options/PropertyOptions;->isSchemaNode()Z

    move-result v2

    if-nez v2, :cond_4

    .line 575
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getParent()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v2

    if-nez v2, :cond_5

    .line 582
    :goto_0
    iget-object v2, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIteratorChildren;->this$0:Lcom/adobe/xmp/impl/XMPIteratorImpl;

    invoke-virtual {v2}, Lcom/adobe/xmp/impl/XMPIteratorImpl;->getOptions()Lcom/adobe/xmp/options/IteratorOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/xmp/options/IteratorOptions;->isJustLeafnodes()Z

    move-result v2

    if-nez v2, :cond_6

    .line 584
    :cond_3
    iget-object v2, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIteratorChildren;->this$0:Lcom/adobe/xmp/impl/XMPIteratorImpl;

    invoke-virtual {v2}, Lcom/adobe/xmp/impl/XMPIteratorImpl;->getBaseNS()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2, v1}, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIteratorChildren;->createPropertyInfo(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPPropertyInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIteratorChildren;->setReturnProperty(Lcom/adobe/xmp/properties/XMPPropertyInfo;)V

    .line 585
    return v4

    .line 573
    :cond_4
    iget-object v2, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIteratorChildren;->this$0:Lcom/adobe/xmp/impl/XMPIteratorImpl;

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/adobe/xmp/impl/XMPIteratorImpl;->setBaseNS(Ljava/lang/String;)V

    goto :goto_0

    .line 578
    :cond_5
    iget-object v1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIteratorChildren;->parentPath:Ljava/lang/String;

    iget v2, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIteratorChildren;->index:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIteratorChildren;->accumulatePath(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 582
    :cond_6
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->hasChildren()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 589
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIteratorChildren;->hasNext()Z

    move-result v0

    return v0
.end method
