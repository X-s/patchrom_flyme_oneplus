.class public final Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "ThreadUrlInfoProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_urlOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;",
        ">;",
        "Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_urlOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private desc_:Ljava/lang/Object;

.field private extra_:Ljava/lang/Object;

.field private html_:Ljava/lang/Object;

.field private image_:Ljava/lang/Object;

.field private key_:Ljava/lang/Object;

.field private target_:Ljava/lang/Object;

.field private title_:Ljava/lang/Object;

.field private url_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 578
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 806
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->key_:Ljava/lang/Object;

    .line 848
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->url_:Ljava/lang/Object;

    .line 890
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->title_:Ljava/lang/Object;

    .line 932
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->target_:Ljava/lang/Object;

    .line 974
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->image_:Ljava/lang/Object;

    .line 1016
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->desc_:Ljava/lang/Object;

    .line 1058
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->extra_:Ljava/lang/Object;

    .line 1100
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->html_:Ljava/lang/Object;

    .line 579
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->maybeForceBuilderInitialization()V

    .line 580
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 583
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 806
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->key_:Ljava/lang/Object;

    .line 848
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->url_:Ljava/lang/Object;

    .line 890
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->title_:Ljava/lang/Object;

    .line 932
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->target_:Ljava/lang/Object;

    .line 974
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->image_:Ljava/lang/Object;

    .line 1016
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->desc_:Ljava/lang/Object;

    .line 1058
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->extra_:Ljava/lang/Object;

    .line 1100
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->html_:Ljava/lang/Object;

    .line 584
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->maybeForceBuilderInitialization()V

    .line 585
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$1;

    .prologue
    .line 565
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;)Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 565
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;
    .locals 1

    .prologue
    .line 565
    invoke-static {}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->create()Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 641
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;

    move-result-object v0

    .line 642
    .local v0, "result":Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 643
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 646
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;
    .locals 1

    .prologue
    .line 593
    new-instance v0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 569
    # getter for: Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto;->internal_static_protobuf_pb_url_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 588
    # getter for: Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 590
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 565
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->build()Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 565
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->build()Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;
    .locals 2

    .prologue
    .line 632
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;

    move-result-object v0

    .line 633
    .local v0, "result":Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 634
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 636
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 565
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 565
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;
    .locals 5

    .prologue
    .line 650
    new-instance v1, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;-><init>(Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$1;)V

    .line 652
    .local v1, "result":Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;
    iget v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->bitField0_:I

    .line 653
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 654
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 655
    or-int/lit8 v2, v2, 0x1

    .line 657
    :cond_0
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->key_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->key_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->access$702(Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 659
    or-int/lit8 v2, v2, 0x2

    .line 661
    :cond_1
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->url_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->url_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->access$802(Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 663
    or-int/lit8 v2, v2, 0x4

    .line 665
    :cond_2
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->title_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->title_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->access$902(Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;Ljava/lang/Object;)Ljava/lang/Object;

    .line 666
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 667
    or-int/lit8 v2, v2, 0x8

    .line 669
    :cond_3
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->target_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->target_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->access$1002(Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 671
    or-int/lit8 v2, v2, 0x10

    .line 673
    :cond_4
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->image_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->image_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->access$1102(Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 675
    or-int/lit8 v2, v2, 0x20

    .line 677
    :cond_5
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->desc_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->desc_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->access$1202(Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 679
    or-int/lit8 v2, v2, 0x40

    .line 681
    :cond_6
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->extra_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->extra_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->access$1302(Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 683
    or-int/lit16 v2, v2, 0x80

    .line 685
    :cond_7
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->html_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->html_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->access$1402(Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    # setter for: Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->bitField0_:I
    invoke-static {v1, v2}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->access$1502(Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;I)I

    .line 687
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->onBuilt()V

    .line 688
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 565
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->clear()Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 565
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->clear()Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 565
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->clear()Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 565
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->clear()Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;
    .locals 1

    .prologue
    .line 597
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 598
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->key_:Ljava/lang/Object;

    .line 599
    iget v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->bitField0_:I

    .line 600
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->url_:Ljava/lang/Object;

    .line 601
    iget v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->bitField0_:I

    .line 602
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->title_:Ljava/lang/Object;

    .line 603
    iget v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->bitField0_:I

    .line 604
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->target_:Ljava/lang/Object;

    .line 605
    iget v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->bitField0_:I

    .line 606
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->image_:Ljava/lang/Object;

    .line 607
    iget v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->bitField0_:I

    .line 608
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->desc_:Ljava/lang/Object;

    .line 609
    iget v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->bitField0_:I

    .line 610
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->extra_:Ljava/lang/Object;

    .line 611
    iget v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->bitField0_:I

    .line 612
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->html_:Ljava/lang/Object;

    .line 613
    iget v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->bitField0_:I

    .line 614
    return-object p0
.end method

.method public clearDesc()Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;
    .locals 1

    .prologue
    .line 1045
    iget v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->bitField0_:I

    .line 1046
    invoke-static {}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->getDesc()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->desc_:Ljava/lang/Object;

    .line 1047
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->onChanged()V

    .line 1048
    return-object p0
.end method

.method public clearExtra()Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;
    .locals 1

    .prologue
    .line 1087
    iget v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->bitField0_:I

    .line 1088
    invoke-static {}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->getExtra()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->extra_:Ljava/lang/Object;

    .line 1089
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->onChanged()V

    .line 1090
    return-object p0
.end method

.method public clearHtml()Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;
    .locals 1

    .prologue
    .line 1129
    iget v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->bitField0_:I

    .line 1130
    invoke-static {}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->getHtml()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->html_:Ljava/lang/Object;

    .line 1131
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->onChanged()V

    .line 1132
    return-object p0
.end method

.method public clearImage()Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;
    .locals 1

    .prologue
    .line 1003
    iget v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->bitField0_:I

    .line 1004
    invoke-static {}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->getImage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->image_:Ljava/lang/Object;

    .line 1005
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->onChanged()V

    .line 1006
    return-object p0
.end method

.method public clearKey()Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;
    .locals 1

    .prologue
    .line 835
    iget v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->bitField0_:I

    .line 836
    invoke-static {}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->key_:Ljava/lang/Object;

    .line 837
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->onChanged()V

    .line 838
    return-object p0
.end method

.method public clearTarget()Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;
    .locals 1

    .prologue
    .line 961
    iget v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->bitField0_:I

    .line 962
    invoke-static {}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->getTarget()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->target_:Ljava/lang/Object;

    .line 963
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->onChanged()V

    .line 964
    return-object p0
.end method

.method public clearTitle()Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;
    .locals 1

    .prologue
    .line 919
    iget v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->bitField0_:I

    .line 920
    invoke-static {}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->title_:Ljava/lang/Object;

    .line 921
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->onChanged()V

    .line 922
    return-object p0
.end method

.method public clearUrl()Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;
    .locals 1

    .prologue
    .line 877
    iget v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->bitField0_:I

    .line 878
    invoke-static {}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->url_:Ljava/lang/Object;

    .line 879
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->onChanged()V

    .line 880
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 565
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->clone()Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 565
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->clone()Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 565
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->clone()Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 565
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->clone()Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 565
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->clone()Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;
    .locals 2

    .prologue
    .line 618
    invoke-static {}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->create()Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;)Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;

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
    .line 565
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->clone()Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 565
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 565
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;
    .locals 1

    .prologue
    .line 627
    invoke-static {}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;

    move-result-object v0

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1023
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->desc_:Ljava/lang/Object;

    .line 1024
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1025
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1027
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->desc_:Ljava/lang/Object;

    .line 1030
    .end local v1    # "s":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0    # "ref":Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 622
    invoke-static {}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getExtra()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1065
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->extra_:Ljava/lang/Object;

    .line 1066
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1067
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1069
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->extra_:Ljava/lang/Object;

    .line 1072
    .end local v1    # "s":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0    # "ref":Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getHtml()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1107
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->html_:Ljava/lang/Object;

    .line 1108
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1109
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1111
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->html_:Ljava/lang/Object;

    .line 1114
    .end local v1    # "s":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0    # "ref":Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getImage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 981
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->image_:Ljava/lang/Object;

    .line 982
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 983
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 985
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->image_:Ljava/lang/Object;

    .line 988
    .end local v1    # "s":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0    # "ref":Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getKey()Ljava/lang/String;
    .locals 3

    .prologue
    .line 813
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->key_:Ljava/lang/Object;

    .line 814
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 815
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 817
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->key_:Ljava/lang/Object;

    .line 820
    .end local v1    # "s":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0    # "ref":Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 3

    .prologue
    .line 939
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->target_:Ljava/lang/Object;

    .line 940
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 941
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 943
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->target_:Ljava/lang/Object;

    .line 946
    .end local v1    # "s":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0    # "ref":Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 3

    .prologue
    .line 897
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->title_:Ljava/lang/Object;

    .line 898
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 899
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 901
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->title_:Ljava/lang/Object;

    .line 904
    .end local v1    # "s":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0    # "ref":Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 855
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->url_:Ljava/lang/Object;

    .line 856
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 857
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 859
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->url_:Ljava/lang/Object;

    .line 862
    .end local v1    # "s":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0    # "ref":Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public hasDesc()Z
    .locals 2

    .prologue
    .line 1019
    iget v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasExtra()Z
    .locals 2

    .prologue
    .line 1061
    iget v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHtml()Z
    .locals 2

    .prologue
    .line 1103
    iget v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasImage()Z
    .locals 2

    .prologue
    .line 977
    iget v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasKey()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 809
    iget v1, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTarget()Z
    .locals 2

    .prologue
    .line 935
    iget v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->bitField0_:I

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

.method public hasTitle()Z
    .locals 2

    .prologue
    .line 893
    iget v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->bitField0_:I

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

.method public hasUrl()Z
    .locals 2

    .prologue
    .line 851
    iget v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 573
    # getter for: Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto;->internal_static_protobuf_pb_url_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 734
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
    .line 565
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 565
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;

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
    .line 565
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;

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
    .line 565
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 565
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;

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
    .line 565
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 741
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v1

    .line 744
    .local v1, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 745
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 751
    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 753
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 754
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->onChanged()V

    .line 755
    :goto_1
    return-object p0

    .line 747
    :sswitch_0
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 748
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->onChanged()V

    goto :goto_1

    .line 760
    :sswitch_1
    iget v2, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->bitField0_:I

    .line 761
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->key_:Ljava/lang/Object;

    goto :goto_0

    .line 765
    :sswitch_2
    iget v2, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->bitField0_:I

    .line 766
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->url_:Ljava/lang/Object;

    goto :goto_0

    .line 770
    :sswitch_3
    iget v2, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->bitField0_:I

    .line 771
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->title_:Ljava/lang/Object;

    goto :goto_0

    .line 775
    :sswitch_4
    iget v2, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->bitField0_:I

    .line 776
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->target_:Ljava/lang/Object;

    goto :goto_0

    .line 780
    :sswitch_5
    iget v2, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->bitField0_:I

    .line 781
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->image_:Ljava/lang/Object;

    goto :goto_0

    .line 785
    :sswitch_6
    iget v2, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->bitField0_:I

    .line 786
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->desc_:Ljava/lang/Object;

    goto :goto_0

    .line 790
    :sswitch_7
    iget v2, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x40

    iput v2, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->bitField0_:I

    .line 791
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->extra_:Ljava/lang/Object;

    goto :goto_0

    .line 795
    :sswitch_8
    iget v2, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x80

    iput v2, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->bitField0_:I

    .line 796
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->html_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 745
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 692
    instance-of v0, p1, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;

    if-eqz v0, :cond_0

    .line 693
    check-cast p1, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;)Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;

    move-result-object p0

    .line 696
    .end local p0    # "this":Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;
    :goto_0
    return-object p0

    .line 695
    .restart local p0    # "this":Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;)Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;
    .locals 1
    .param p1, "other"    # Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;

    .prologue
    .line 702
    invoke-static {}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 730
    :goto_0
    return-object p0

    .line 705
    :cond_0
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 706
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->setKey(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;

    .line 708
    :cond_1
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->hasUrl()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 709
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->setUrl(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;

    .line 711
    :cond_2
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->hasTitle()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 712
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->setTitle(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;

    .line 714
    :cond_3
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->hasTarget()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 715
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->getTarget()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->setTarget(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;

    .line 717
    :cond_4
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->hasImage()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 718
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->getImage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->setImage(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;

    .line 720
    :cond_5
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->hasDesc()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 721
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->getDesc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->setDesc(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;

    .line 723
    :cond_6
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->hasExtra()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 724
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->getExtra()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->setExtra(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;

    .line 726
    :cond_7
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->hasHtml()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 727
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->getHtml()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->setHtml(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;

    .line 729
    :cond_8
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public setDesc(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1035
    if-nez p1, :cond_0

    .line 1036
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1038
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->bitField0_:I

    .line 1039
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->desc_:Ljava/lang/Object;

    .line 1040
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->onChanged()V

    .line 1041
    return-object p0
.end method

.method setDesc(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 1052
    iget v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->bitField0_:I

    .line 1053
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->desc_:Ljava/lang/Object;

    .line 1054
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->onChanged()V

    .line 1055
    return-void
.end method

.method public setExtra(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1077
    if-nez p1, :cond_0

    .line 1078
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1080
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->bitField0_:I

    .line 1081
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->extra_:Ljava/lang/Object;

    .line 1082
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->onChanged()V

    .line 1083
    return-object p0
.end method

.method setExtra(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 1094
    iget v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->bitField0_:I

    .line 1095
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->extra_:Ljava/lang/Object;

    .line 1096
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->onChanged()V

    .line 1097
    return-void
.end method

.method public setHtml(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1119
    if-nez p1, :cond_0

    .line 1120
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1122
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->bitField0_:I

    .line 1123
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->html_:Ljava/lang/Object;

    .line 1124
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->onChanged()V

    .line 1125
    return-object p0
.end method

.method setHtml(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 1136
    iget v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->bitField0_:I

    .line 1137
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->html_:Ljava/lang/Object;

    .line 1138
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->onChanged()V

    .line 1139
    return-void
.end method

.method public setImage(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 993
    if-nez p1, :cond_0

    .line 994
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 996
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->bitField0_:I

    .line 997
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->image_:Ljava/lang/Object;

    .line 998
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->onChanged()V

    .line 999
    return-object p0
.end method

.method setImage(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 1010
    iget v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->bitField0_:I

    .line 1011
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->image_:Ljava/lang/Object;

    .line 1012
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->onChanged()V

    .line 1013
    return-void
.end method

.method public setKey(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 825
    if-nez p1, :cond_0

    .line 826
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 828
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->bitField0_:I

    .line 829
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->key_:Ljava/lang/Object;

    .line 830
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->onChanged()V

    .line 831
    return-object p0
.end method

.method setKey(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 842
    iget v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->bitField0_:I

    .line 843
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->key_:Ljava/lang/Object;

    .line 844
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->onChanged()V

    .line 845
    return-void
.end method

.method public setTarget(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 951
    if-nez p1, :cond_0

    .line 952
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 954
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->bitField0_:I

    .line 955
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->target_:Ljava/lang/Object;

    .line 956
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->onChanged()V

    .line 957
    return-object p0
.end method

.method setTarget(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 968
    iget v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->bitField0_:I

    .line 969
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->target_:Ljava/lang/Object;

    .line 970
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->onChanged()V

    .line 971
    return-void
.end method

.method public setTitle(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 909
    if-nez p1, :cond_0

    .line 910
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 912
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->bitField0_:I

    .line 913
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->title_:Ljava/lang/Object;

    .line 914
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->onChanged()V

    .line 915
    return-object p0
.end method

.method setTitle(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 926
    iget v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->bitField0_:I

    .line 927
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->title_:Ljava/lang/Object;

    .line 928
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->onChanged()V

    .line 929
    return-void
.end method

.method public setUrl(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 867
    if-nez p1, :cond_0

    .line 868
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 870
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->bitField0_:I

    .line 871
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->url_:Ljava/lang/Object;

    .line 872
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->onChanged()V

    .line 873
    return-object p0
.end method

.method setUrl(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 884
    iget v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->bitField0_:I

    .line 885
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->url_:Ljava/lang/Object;

    .line 886
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;->onChanged()V

    .line 887
    return-void
.end method
