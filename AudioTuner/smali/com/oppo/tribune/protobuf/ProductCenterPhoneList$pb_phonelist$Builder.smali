.class public final Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "ProductCenterPhoneList.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelistOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;",
        ">;",
        "Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelistOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private page_:I

.field private perpage_:I

.field private phonelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;",
            "Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;",
            "Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetailOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private phonelist_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;",
            ">;"
        }
    .end annotation
.end field

.field private total_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 326
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 533
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->phonelist_:Ljava/util/List;

    .line 327
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->maybeForceBuilderInitialization()V

    .line 328
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 331
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 533
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->phonelist_:Ljava/util/List;

    .line 332
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->maybeForceBuilderInitialization()V

    .line 333
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$1;

    .prologue
    .line 312
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;)Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 312
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;
    .locals 1

    .prologue
    .line 312
    invoke-static {}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->create()Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 386
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;

    move-result-object v0

    .line 387
    .local v0, "result":Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 388
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 391
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;
    .locals 1

    .prologue
    .line 342
    new-instance v0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;-><init>()V

    return-object v0
.end method

.method private ensurePhonelistIsMutable()V
    .locals 2

    .prologue
    .line 537
    iget v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 538
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->phonelist_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->phonelist_:Ljava/util/List;

    .line 540
    iget v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->bitField0_:I

    .line 542
    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 317
    # getter for: Lcom/oppo/tribune/protobuf/ProductCenterPhoneList;->internal_static_pb_phonelist_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getPhonelistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;",
            "Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;",
            "Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetailOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 735
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->phonelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_0

    .line 736
    new-instance v1, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v2, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->phonelist_:Ljava/util/List;

    iget v3, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v0, :cond_1

    :goto_0
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->isClean()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v1, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->phonelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 740
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->phonelist_:Ljava/util/List;

    .line 742
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->phonelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 736
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 336
    # getter for: Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->getPhonelistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 339
    :cond_0
    return-void
.end method


# virtual methods
.method public addAllPhonelist(Ljava/lang/Iterable;)Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;",
            ">;)",
            "Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;"
        }
    .end annotation

    .prologue
    .line 660
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;>;"
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->phonelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 661
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->ensurePhonelistIsMutable()V

    .line 662
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->phonelist_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 663
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->onChanged()V

    .line 667
    :goto_0
    return-object p0

    .line 665
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->phonelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addPhonelist(ILcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;)Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;

    .prologue
    .line 647
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->phonelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 648
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->ensurePhonelistIsMutable()V

    .line 649
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->phonelist_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->build()Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 650
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->onChanged()V

    .line 655
    :goto_0
    return-object p0

    .line 652
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->phonelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->build()Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addPhonelist(ILcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;)Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;

    .prologue
    .line 619
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->phonelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 620
    if-nez p2, :cond_0

    .line 621
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 623
    :cond_0
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->ensurePhonelistIsMutable()V

    .line 624
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->phonelist_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 625
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->onChanged()V

    .line 629
    :goto_0
    return-object p0

    .line 627
    :cond_1
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->phonelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addPhonelist(Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;)Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;

    .prologue
    .line 634
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->phonelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 635
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->ensurePhonelistIsMutable()V

    .line 636
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->phonelist_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->build()Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 637
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->onChanged()V

    .line 641
    :goto_0
    return-object p0

    .line 639
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->phonelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->build()Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addPhonelist(Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;)Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;
    .locals 1
    .param p1, "value"    # Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;

    .prologue
    .line 603
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->phonelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 604
    if-nez p1, :cond_0

    .line 605
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 607
    :cond_0
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->ensurePhonelistIsMutable()V

    .line 608
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->phonelist_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 609
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->onChanged()V

    .line 613
    :goto_0
    return-object p0

    .line 611
    :cond_1
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->phonelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addPhonelistBuilder()Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;
    .locals 2

    .prologue
    .line 715
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->getPhonelistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;

    return-object v0
.end method

.method public addPhonelistBuilder(I)Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 723
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->getPhonelistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->build()Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->build()Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;
    .locals 2

    .prologue
    .line 377
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;

    move-result-object v0

    .line 378
    .local v0, "result":Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 379
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 381
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;
    .locals 5

    .prologue
    .line 395
    new-instance v1, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;-><init>(Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$1;)V

    .line 397
    .local v1, "result":Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;
    iget v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->bitField0_:I

    .line 398
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 399
    .local v2, "to_bitField0_":I
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->phonelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v3, :cond_4

    .line 400
    iget v3, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 401
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->phonelist_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->phonelist_:Ljava/util/List;

    .line 403
    iget v3, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->bitField0_:I

    .line 405
    :cond_0
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->phonelist_:Ljava/util/List;

    # setter for: Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->phonelist_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->access$702(Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;Ljava/util/List;)Ljava/util/List;

    .line 409
    :goto_0
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 410
    or-int/lit8 v2, v2, 0x1

    .line 412
    :cond_1
    iget v3, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->page_:I

    # setter for: Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->page_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->access$802(Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;I)I

    .line 413
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 414
    or-int/lit8 v2, v2, 0x2

    .line 416
    :cond_2
    iget v3, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->perpage_:I

    # setter for: Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->perpage_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->access$902(Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;I)I

    .line 417
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 418
    or-int/lit8 v2, v2, 0x4

    .line 420
    :cond_3
    iget v3, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->total_:I

    # setter for: Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->total_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->access$1002(Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;I)I

    .line 421
    # setter for: Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->bitField0_:I
    invoke-static {v1, v2}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->access$1102(Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;I)I

    .line 422
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->onBuilt()V

    .line 423
    return-object v1

    .line 407
    :cond_4
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->phonelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v3

    # setter for: Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->phonelist_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->access$702(Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;Ljava/util/List;)Ljava/util/List;

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->clear()Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->clear()Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->clear()Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->clear()Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 346
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 347
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->phonelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 348
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->phonelist_:Ljava/util/List;

    .line 349
    iget v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->bitField0_:I

    .line 353
    :goto_0
    iput v1, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->page_:I

    .line 354
    iget v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->bitField0_:I

    .line 355
    iput v1, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->perpage_:I

    .line 356
    iget v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->bitField0_:I

    .line 357
    iput v1, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->total_:I

    .line 358
    iget v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->bitField0_:I

    .line 359
    return-object p0

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->phonelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearPage()Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;
    .locals 1

    .prologue
    .line 764
    iget v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->bitField0_:I

    .line 765
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->page_:I

    .line 766
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->onChanged()V

    .line 767
    return-object p0
.end method

.method public clearPerpage()Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;
    .locals 1

    .prologue
    .line 789
    iget v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->bitField0_:I

    .line 790
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->perpage_:I

    .line 791
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->onChanged()V

    .line 792
    return-object p0
.end method

.method public clearPhonelist()Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;
    .locals 1

    .prologue
    .line 671
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->phonelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 672
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->phonelist_:Ljava/util/List;

    .line 673
    iget v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->bitField0_:I

    .line 674
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->onChanged()V

    .line 678
    :goto_0
    return-object p0

    .line 676
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->phonelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearTotal()Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;
    .locals 1

    .prologue
    .line 814
    iget v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->bitField0_:I

    .line 815
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->total_:I

    .line 816
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->onChanged()V

    .line 817
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->clone()Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->clone()Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->clone()Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->clone()Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->clone()Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;
    .locals 2

    .prologue
    .line 363
    invoke-static {}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->create()Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;)Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->clone()Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;
    .locals 1

    .prologue
    .line 372
    invoke-static {}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 367
    invoke-static {}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getPage()I
    .locals 1

    .prologue
    .line 753
    iget v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->page_:I

    return v0
.end method

.method public getPerpage()I
    .locals 1

    .prologue
    .line 778
    iget v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->perpage_:I

    return v0
.end method

.method public getPhonelist(I)Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 564
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->phonelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->phonelist_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;

    .line 567
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->phonelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;

    goto :goto_0
.end method

.method public getPhonelistBuilder(I)Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 694
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->getPhonelistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;

    return-object v0
.end method

.method public getPhonelistBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 731
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->getPhonelistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPhonelistCount()I
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->phonelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->phonelist_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 558
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->phonelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getPhonelistList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;",
            ">;"
        }
    .end annotation

    .prologue
    .line 547
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->phonelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->phonelist_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 550
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->phonelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getPhonelistOrBuilder(I)Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetailOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 699
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->phonelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 700
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->phonelist_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetailOrBuilder;

    .line 702
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->phonelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetailOrBuilder;

    goto :goto_0
.end method

.method public getPhonelistOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetailOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 707
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->phonelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 708
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->phonelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 710
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->phonelist_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getTotal()I
    .locals 1

    .prologue
    .line 803
    iget v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->total_:I

    return v0
.end method

.method public hasPage()Z
    .locals 2

    .prologue
    .line 749
    iget v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPerpage()Z
    .locals 2

    .prologue
    .line 774
    iget v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTotal()Z
    .locals 2

    .prologue
    .line 799
    iget v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 321
    # getter for: Lcom/oppo/tribune/protobuf/ProductCenterPhoneList;->internal_static_pb_phonelist_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 479
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "x1"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 312
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 312
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "x1"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 312
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "x1"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 312
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 312
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "x1"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 312
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 486
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 489
    .local v2, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 490
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    .line 496
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 498
    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 499
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->onChanged()V

    .line 500
    :goto_1
    return-object p0

    .line 492
    :sswitch_0
    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 493
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->onChanged()V

    goto :goto_1

    .line 505
    :sswitch_1
    invoke-static {}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->newBuilder()Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;

    move-result-object v0

    .line 507
    .local v0, "subBuilder":Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 508
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->addPhonelist(Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;)Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;

    goto :goto_0

    .line 512
    .end local v0    # "subBuilder":Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;
    :sswitch_2
    iget v3, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->bitField0_:I

    .line 513
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->page_:I

    goto :goto_0

    .line 517
    :sswitch_3
    iget v3, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->bitField0_:I

    .line 518
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->perpage_:I

    goto :goto_0

    .line 522
    :sswitch_4
    iget v3, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->bitField0_:I

    .line 523
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->total_:I

    goto :goto_0

    .line 490
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 427
    instance-of v0, p1, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;

    if-eqz v0, :cond_0

    .line 428
    check-cast p1, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;)Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;

    move-result-object p0

    .line 431
    .end local p0    # "this":Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;
    :goto_0
    return-object p0

    .line 430
    .restart local p0    # "this":Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;)Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;
    .locals 2
    .param p1, "other"    # Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;

    .prologue
    const/4 v0, 0x0

    .line 437
    invoke-static {}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 475
    :goto_0
    return-object p0

    .line 440
    :cond_0
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->phonelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_6

    .line 441
    # getter for: Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->phonelist_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->access$700(Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 442
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->phonelist_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 443
    # getter for: Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->phonelist_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->access$700(Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->phonelist_:Ljava/util/List;

    .line 444
    iget v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->bitField0_:I

    .line 449
    :goto_1
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->onChanged()V

    .line 465
    :cond_1
    :goto_2
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->hasPage()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 466
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->getPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->setPage(I)Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;

    .line 468
    :cond_2
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->hasPerpage()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 469
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->getPerpage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->setPerpage(I)Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;

    .line 471
    :cond_3
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->hasTotal()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 472
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->getTotal()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->setTotal(I)Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;

    .line 474
    :cond_4
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0

    .line 446
    :cond_5
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->ensurePhonelistIsMutable()V

    .line 447
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->phonelist_:Ljava/util/List;

    # getter for: Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->phonelist_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->access$700(Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 452
    :cond_6
    # getter for: Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->phonelist_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->access$700(Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 453
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->phonelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 454
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->phonelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 455
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->phonelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 456
    # getter for: Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->phonelist_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->access$700(Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->phonelist_:Ljava/util/List;

    .line 457
    iget v1, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->bitField0_:I

    .line 458
    # getter for: Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->access$1200()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->getPhonelistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :cond_7
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->phonelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2

    .line 461
    :cond_8
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->phonelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    # getter for: Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->phonelist_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->access$700(Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2
.end method

.method public removePhonelist(I)Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 682
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->phonelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 683
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->ensurePhonelistIsMutable()V

    .line 684
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->phonelist_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 685
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->onChanged()V

    .line 689
    :goto_0
    return-object p0

    .line 687
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->phonelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public setPage(I)Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 757
    iget v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->bitField0_:I

    .line 758
    iput p1, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->page_:I

    .line 759
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->onChanged()V

    .line 760
    return-object p0
.end method

.method public setPerpage(I)Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 782
    iget v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->bitField0_:I

    .line 783
    iput p1, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->perpage_:I

    .line 784
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->onChanged()V

    .line 785
    return-object p0
.end method

.method public setPhonelist(ILcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;)Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;

    .prologue
    .line 590
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->phonelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 591
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->ensurePhonelistIsMutable()V

    .line 592
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->phonelist_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->build()Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 593
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->onChanged()V

    .line 598
    :goto_0
    return-object p0

    .line 595
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->phonelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->build()Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setPhonelist(ILcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;)Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;

    .prologue
    .line 574
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->phonelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 575
    if-nez p2, :cond_0

    .line 576
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 578
    :cond_0
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->ensurePhonelistIsMutable()V

    .line 579
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->phonelist_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 580
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->onChanged()V

    .line 584
    :goto_0
    return-object p0

    .line 582
    :cond_1
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->phonelistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setTotal(I)Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 807
    iget v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->bitField0_:I

    .line 808
    iput p1, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->total_:I

    .line 809
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->onChanged()V

    .line 810
    return-object p0
.end method
