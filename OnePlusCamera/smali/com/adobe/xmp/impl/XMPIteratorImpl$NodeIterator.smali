.class Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;
.super Ljava/lang/Object;
.source "XMPIteratorImpl.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/xmp/impl/XMPIteratorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NodeIterator"
.end annotation


# static fields
.field protected static final ITERATE_CHILDREN:I = 0x1

.field protected static final ITERATE_NODE:I = 0x0

.field protected static final ITERATE_QUALIFIER:I = 0x2


# instance fields
.field private childrenIterator:Ljava/util/Iterator;

.field private index:I

.field private path:Ljava/lang/String;

.field private returnProperty:Lcom/adobe/xmp/properties/XMPPropertyInfo;

.field private state:I

.field private subIterator:Ljava/util/Iterator;

.field final synthetic this$0:Lcom/adobe/xmp/impl/XMPIteratorImpl;

.field private visitedNode:Lcom/adobe/xmp/impl/XMPNode;


# direct methods
.method public constructor <init>(Lcom/adobe/xmp/impl/XMPIteratorImpl;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 234
    iput-object p1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->this$0:Lcom/adobe/xmp/impl/XMPIteratorImpl;

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    iput v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->state:I

    .line 221
    iput-object v1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->childrenIterator:Ljava/util/Iterator;

    .line 223
    iput v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->index:I

    .line 225
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->subIterator:Ljava/util/Iterator;

    .line 227
    iput-object v1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->returnProperty:Lcom/adobe/xmp/properties/XMPPropertyInfo;

    .line 236
    return-void
.end method

.method public constructor <init>(Lcom/adobe/xmp/impl/XMPIteratorImpl;Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 246
    iput-object p1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->this$0:Lcom/adobe/xmp/impl/XMPIteratorImpl;

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    iput v1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->state:I

    .line 221
    iput-object v2, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->childrenIterator:Ljava/util/Iterator;

    .line 223
    iput v1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->index:I

    .line 225
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->subIterator:Ljava/util/Iterator;

    .line 227
    iput-object v2, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->returnProperty:Lcom/adobe/xmp/properties/XMPPropertyInfo;

    .line 247
    iput-object p2, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->visitedNode:Lcom/adobe/xmp/impl/XMPNode;

    .line 248
    iput v1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->state:I

    .line 249
    invoke-virtual {p2}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/xmp/options/PropertyOptions;->isSchemaNode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 255
    :goto_0
    invoke-virtual {p0, p2, p3, p4}, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->accumulatePath(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->path:Ljava/lang/String;

    .line 256
    return-void

    .line 251
    :cond_0
    invoke-virtual {p2}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/adobe/xmp/impl/XMPIteratorImpl;->setBaseNS(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private iterateChildren(Ljava/util/Iterator;)Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 333
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->this$0:Lcom/adobe/xmp/impl/XMPIteratorImpl;

    iget-boolean v0, v0, Lcom/adobe/xmp/impl/XMPIteratorImpl;->skipSiblings:Z

    if-nez v0, :cond_1

    .line 342
    :goto_0
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->subIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 349
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->subIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 356
    return v5

    .line 336
    :cond_1
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->this$0:Lcom/adobe/xmp/impl/XMPIteratorImpl;

    iput-boolean v5, v0, Lcom/adobe/xmp/impl/XMPIteratorImpl;->skipSiblings:Z

    .line 337
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->subIterator:Ljava/util/Iterator;

    goto :goto_0

    .line 342
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/xmp/impl/XMPNode;

    .line 345
    iget v1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->index:I

    .line 346
    new-instance v1, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;

    iget-object v2, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->this$0:Lcom/adobe/xmp/impl/XMPIteratorImpl;

    iget-object v3, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->path:Ljava/lang/String;

    iget v4, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->index:I

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;-><init>(Lcom/adobe/xmp/impl/XMPIteratorImpl;Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->subIterator:Ljava/util/Iterator;

    goto :goto_1

    .line 351
    :cond_3
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->subIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/xmp/properties/XMPPropertyInfo;

    iput-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->returnProperty:Lcom/adobe/xmp/properties/XMPPropertyInfo;

    .line 352
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method protected accumulatePath(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 403
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getParent()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    if-nez v0, :cond_1

    .line 405
    :cond_0
    return-object v1

    .line 403
    :cond_1
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/xmp/options/PropertyOptions;->isSchemaNode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 407
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getParent()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/xmp/options/PropertyOptions;->isArray()Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v1, "/"

    .line 415
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v0

    .line 419
    :goto_0
    if-nez p2, :cond_4

    .line 421
    :cond_2
    return-object v0

    :cond_3
    const-string/jumbo v1, ""

    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "["

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 419
    :cond_4
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    .line 423
    iget-object v2, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->this$0:Lcom/adobe/xmp/impl/XMPIteratorImpl;

    invoke-virtual {v2}, Lcom/adobe/xmp/impl/XMPIteratorImpl;->getOptions()Lcom/adobe/xmp/options/IteratorOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/xmp/options/IteratorOptions;->isJustLeafname()Z

    move-result v2

    if-nez v2, :cond_5

    .line 431
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    const-string/jumbo v1, "?"

    .line 425
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    .line 427
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 425
    :cond_6
    return-object v0
.end method

.method protected createPropertyInfo(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPPropertyInfo;
    .locals 6

    .prologue
    .line 446
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/xmp/options/PropertyOptions;->isSchemaNode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 448
    :goto_0
    new-instance v0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator$1;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator$1;-><init>(Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/impl/XMPNode;)V

    return-object v0

    :cond_0
    const/4 v4, 0x0

    .line 446
    goto :goto_0
.end method

.method protected getChildrenIterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->childrenIterator:Ljava/util/Iterator;

    return-object v0
.end method

.method protected getReturnProperty()Lcom/adobe/xmp/properties/XMPPropertyInfo;
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->returnProperty:Lcom/adobe/xmp/properties/XMPPropertyInfo;

    return-object v0
.end method

.method public hasNext()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 266
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->returnProperty:Lcom/adobe/xmp/properties/XMPPropertyInfo;

    if-nez v0, :cond_0

    .line 273
    iget v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->state:I

    if-eqz v0, :cond_1

    .line 277
    iget v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->state:I

    if-eq v0, v1, :cond_2

    .line 296
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->childrenIterator:Ljava/util/Iterator;

    if-eqz v0, :cond_6

    .line 301
    :goto_0
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->childrenIterator:Ljava/util/Iterator;

    invoke-direct {p0, v0}, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->iterateChildren(Ljava/util/Iterator;)Z

    move-result v0

    return v0

    .line 269
    :cond_0
    return v1

    .line 275
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->reportNode()Z

    move-result v0

    return v0

    .line 279
    :cond_2
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->childrenIterator:Ljava/util/Iterator;

    if-eqz v0, :cond_4

    .line 284
    :goto_1
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->childrenIterator:Ljava/util/Iterator;

    invoke-direct {p0, v0}, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->iterateChildren(Ljava/util/Iterator;)Z

    move-result v0

    .line 286
    if-eqz v0, :cond_5

    .line 292
    :cond_3
    :goto_2
    return v0

    .line 281
    :cond_4
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->visitedNode:Lcom/adobe/xmp/impl/XMPNode;

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->childrenIterator:Ljava/util/Iterator;

    goto :goto_1

    .line 286
    :cond_5
    iget-object v1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->visitedNode:Lcom/adobe/xmp/impl/XMPNode;

    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->hasQualifier()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->this$0:Lcom/adobe/xmp/impl/XMPIteratorImpl;

    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPIteratorImpl;->getOptions()Lcom/adobe/xmp/options/IteratorOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/xmp/options/IteratorOptions;->isOmitQualifiers()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v0, 0x2

    .line 288
    iput v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->state:I

    .line 289
    iput-object v2, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->childrenIterator:Ljava/util/Iterator;

    .line 290
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->hasNext()Z

    move-result v0

    goto :goto_2

    .line 298
    :cond_6
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->visitedNode:Lcom/adobe/xmp/impl/XMPNode;

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->iterateQualifier()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->childrenIterator:Ljava/util/Iterator;

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 370
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 378
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string/jumbo v1, "There are no more nodes to return"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->returnProperty:Lcom/adobe/xmp/properties/XMPPropertyInfo;

    const/4 v1, 0x0

    .line 373
    iput-object v1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->returnProperty:Lcom/adobe/xmp/properties/XMPPropertyInfo;

    .line 374
    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 389
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected reportNode()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 312
    iput v3, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->state:I

    .line 313
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->visitedNode:Lcom/adobe/xmp/impl/XMPNode;

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getParent()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    if-nez v0, :cond_0

    .line 321
    :goto_0
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->hasNext()Z

    move-result v0

    return v0

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->this$0:Lcom/adobe/xmp/impl/XMPIteratorImpl;

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPIteratorImpl;->getOptions()Lcom/adobe/xmp/options/IteratorOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/xmp/options/IteratorOptions;->isJustLeafnodes()Z

    move-result v0

    if-nez v0, :cond_2

    .line 316
    :cond_1
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->visitedNode:Lcom/adobe/xmp/impl/XMPNode;

    iget-object v1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->this$0:Lcom/adobe/xmp/impl/XMPIteratorImpl;

    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPIteratorImpl;->getBaseNS()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->path:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->createPropertyInfo(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPPropertyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->returnProperty:Lcom/adobe/xmp/properties/XMPPropertyInfo;

    .line 317
    return v3

    .line 314
    :cond_2
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->visitedNode:Lcom/adobe/xmp/impl/XMPNode;

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->hasChildren()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0
.end method

.method protected setChildrenIterator(Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 493
    iput-object p1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->childrenIterator:Ljava/util/Iterator;

    .line 494
    return-void
.end method

.method protected setReturnProperty(Lcom/adobe/xmp/properties/XMPPropertyInfo;)V
    .locals 0

    .prologue
    .line 511
    iput-object p1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->returnProperty:Lcom/adobe/xmp/properties/XMPPropertyInfo;

    .line 512
    return-void
.end method
