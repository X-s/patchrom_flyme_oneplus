.class public final Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "RemindCountProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnoticeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;",
        ">;",
        "Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnoticeOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private issign_:I

.field private numBbsfavor_:I

.field private numBbsnotice_:I

.field private numBbspost_:I

.field private numCandy_:I

.field private numDays_:I

.field private numFollowed_:I

.field private numFollowers_:I

.field private numFollowfeed_:I

.field private numFollowings_:I

.field private numLasted_:I

.field private numObi_:I

.field private numPaikenotice_:I

.field private numPaikereply_:I

.field private numVisited_:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 579
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 580
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->maybeForceBuilderInitialization()V

    .line 581
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 0
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 584
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 585
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->maybeForceBuilderInitialization()V

    .line 586
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/RemindCountProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/RemindCountProto$1;

    .prologue
    .line 565
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;)Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 565
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;
    .locals 1

    .prologue
    .line 565
    invoke-static {}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->create()Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 656
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;

    move-result-object v0

    .line 657
    .local v0, "result":Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 658
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 661
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;
    .locals 1

    .prologue
    .line 594
    new-instance v0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 570
    # getter for: Lcom/oppo/tribune/protobuf/RemindCountProto;->internal_static_pb_numnotice_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/RemindCountProto;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 589
    # getter for: Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 591
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 565
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->build()Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 565
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->build()Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;
    .locals 2

    .prologue
    .line 647
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;

    move-result-object v0

    .line 648
    .local v0, "result":Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 649
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 651
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 565
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 565
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;
    .locals 5

    .prologue
    .line 665
    new-instance v1, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;-><init>(Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;Lcom/oppo/tribune/protobuf/RemindCountProto$1;)V

    .line 667
    .local v1, "result":Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    .line 668
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 669
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 670
    or-int/lit8 v2, v2, 0x1

    .line 672
    :cond_0
    iget v3, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->numFollowed_:I

    # setter for: Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->numFollowed_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->access$702(Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;I)I

    .line 673
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 674
    or-int/lit8 v2, v2, 0x2

    .line 676
    :cond_1
    iget v3, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->numVisited_:I

    # setter for: Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->numVisited_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->access$802(Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;I)I

    .line 677
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 678
    or-int/lit8 v2, v2, 0x4

    .line 680
    :cond_2
    iget v3, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->numBbsnotice_:I

    # setter for: Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->numBbsnotice_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->access$902(Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;I)I

    .line 681
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 682
    or-int/lit8 v2, v2, 0x8

    .line 684
    :cond_3
    iget v3, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->numPaikenotice_:I

    # setter for: Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->numPaikenotice_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->access$1002(Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;I)I

    .line 685
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 686
    or-int/lit8 v2, v2, 0x10

    .line 688
    :cond_4
    iget v3, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->numBbspost_:I

    # setter for: Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->numBbspost_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->access$1102(Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;I)I

    .line 689
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 690
    or-int/lit8 v2, v2, 0x20

    .line 692
    :cond_5
    iget v3, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->numBbsfavor_:I

    # setter for: Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->numBbsfavor_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->access$1202(Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;I)I

    .line 693
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 694
    or-int/lit8 v2, v2, 0x40

    .line 696
    :cond_6
    iget v3, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->numObi_:I

    # setter for: Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->numObi_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->access$1302(Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;I)I

    .line 697
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 698
    or-int/lit16 v2, v2, 0x80

    .line 700
    :cond_7
    iget v3, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->numPaikereply_:I

    # setter for: Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->numPaikereply_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->access$1402(Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;I)I

    .line 701
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_8

    .line 702
    or-int/lit16 v2, v2, 0x100

    .line 704
    :cond_8
    iget v3, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->numFollowfeed_:I

    # setter for: Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->numFollowfeed_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->access$1502(Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;I)I

    .line 705
    and-int/lit16 v3, v0, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_9

    .line 706
    or-int/lit16 v2, v2, 0x200

    .line 708
    :cond_9
    iget v3, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->numFollowers_:I

    # setter for: Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->numFollowers_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->access$1602(Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;I)I

    .line 709
    and-int/lit16 v3, v0, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_a

    .line 710
    or-int/lit16 v2, v2, 0x400

    .line 712
    :cond_a
    iget v3, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->numFollowings_:I

    # setter for: Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->numFollowings_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->access$1702(Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;I)I

    .line 713
    and-int/lit16 v3, v0, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_b

    .line 714
    or-int/lit16 v2, v2, 0x800

    .line 716
    :cond_b
    iget v3, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->numCandy_:I

    # setter for: Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->numCandy_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->access$1802(Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;I)I

    .line 717
    and-int/lit16 v3, v0, 0x1000

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_c

    .line 718
    or-int/lit16 v2, v2, 0x1000

    .line 720
    :cond_c
    iget v3, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->numDays_:I

    # setter for: Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->numDays_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->access$1902(Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;I)I

    .line 721
    and-int/lit16 v3, v0, 0x2000

    const/16 v4, 0x2000

    if-ne v3, v4, :cond_d

    .line 722
    or-int/lit16 v2, v2, 0x2000

    .line 724
    :cond_d
    iget v3, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->numLasted_:I

    # setter for: Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->numLasted_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->access$2002(Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;I)I

    .line 725
    and-int/lit16 v3, v0, 0x4000

    const/16 v4, 0x4000

    if-ne v3, v4, :cond_e

    .line 726
    or-int/lit16 v2, v2, 0x4000

    .line 728
    :cond_e
    iget v3, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->issign_:I

    # setter for: Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->issign_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->access$2102(Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;I)I

    .line 729
    # setter for: Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->bitField0_:I
    invoke-static {v1, v2}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->access$2202(Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;I)I

    .line 730
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->onBuilt()V

    .line 731
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 565
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->clear()Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 565
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->clear()Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 565
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->clear()Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 565
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->clear()Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 598
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 599
    iput v1, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->numFollowed_:I

    .line 600
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    .line 601
    iput v1, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->numVisited_:I

    .line 602
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    .line 603
    iput v1, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->numBbsnotice_:I

    .line 604
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    .line 605
    iput v1, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->numPaikenotice_:I

    .line 606
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    .line 607
    iput v1, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->numBbspost_:I

    .line 608
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    .line 609
    iput v1, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->numBbsfavor_:I

    .line 610
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    .line 611
    iput v1, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->numObi_:I

    .line 612
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    .line 613
    iput v1, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->numPaikereply_:I

    .line 614
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    .line 615
    iput v1, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->numFollowfeed_:I

    .line 616
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    .line 617
    iput v1, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->numFollowers_:I

    .line 618
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    .line 619
    iput v1, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->numFollowings_:I

    .line 620
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    .line 621
    iput v1, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->numCandy_:I

    .line 622
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    .line 623
    iput v1, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->numDays_:I

    .line 624
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    .line 625
    iput v1, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->numLasted_:I

    .line 626
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    .line 627
    iput v1, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->issign_:I

    .line 628
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    .line 629
    return-object p0
.end method

.method public clearIssign()Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;
    .locals 1

    .prologue
    .line 1273
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    .line 1274
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->issign_:I

    .line 1275
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->onChanged()V

    .line 1276
    return-object p0
.end method

.method public clearNumBbsfavor()Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;
    .locals 1

    .prologue
    .line 1048
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    .line 1049
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->numBbsfavor_:I

    .line 1050
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->onChanged()V

    .line 1051
    return-object p0
.end method

.method public clearNumBbsnotice()Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;
    .locals 1

    .prologue
    .line 973
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    .line 974
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->numBbsnotice_:I

    .line 975
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->onChanged()V

    .line 976
    return-object p0
.end method

.method public clearNumBbspost()Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;
    .locals 1

    .prologue
    .line 1023
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    .line 1024
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->numBbspost_:I

    .line 1025
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->onChanged()V

    .line 1026
    return-object p0
.end method

.method public clearNumCandy()Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;
    .locals 1

    .prologue
    .line 1198
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    .line 1199
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->numCandy_:I

    .line 1200
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->onChanged()V

    .line 1201
    return-object p0
.end method

.method public clearNumDays()Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;
    .locals 1

    .prologue
    .line 1223
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    .line 1224
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->numDays_:I

    .line 1225
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->onChanged()V

    .line 1226
    return-object p0
.end method

.method public clearNumFollowed()Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;
    .locals 1

    .prologue
    .line 923
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    .line 924
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->numFollowed_:I

    .line 925
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->onChanged()V

    .line 926
    return-object p0
.end method

.method public clearNumFollowers()Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;
    .locals 1

    .prologue
    .line 1148
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    .line 1149
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->numFollowers_:I

    .line 1150
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->onChanged()V

    .line 1151
    return-object p0
.end method

.method public clearNumFollowfeed()Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;
    .locals 1

    .prologue
    .line 1123
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    .line 1124
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->numFollowfeed_:I

    .line 1125
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->onChanged()V

    .line 1126
    return-object p0
.end method

.method public clearNumFollowings()Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;
    .locals 1

    .prologue
    .line 1173
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    .line 1174
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->numFollowings_:I

    .line 1175
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->onChanged()V

    .line 1176
    return-object p0
.end method

.method public clearNumLasted()Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;
    .locals 1

    .prologue
    .line 1248
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    .line 1249
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->numLasted_:I

    .line 1250
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->onChanged()V

    .line 1251
    return-object p0
.end method

.method public clearNumObi()Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;
    .locals 1

    .prologue
    .line 1073
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    .line 1074
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->numObi_:I

    .line 1075
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->onChanged()V

    .line 1076
    return-object p0
.end method

.method public clearNumPaikenotice()Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;
    .locals 1

    .prologue
    .line 998
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    .line 999
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->numPaikenotice_:I

    .line 1000
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->onChanged()V

    .line 1001
    return-object p0
.end method

.method public clearNumPaikereply()Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;
    .locals 1

    .prologue
    .line 1098
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    .line 1099
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->numPaikereply_:I

    .line 1100
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->onChanged()V

    .line 1101
    return-object p0
.end method

.method public clearNumVisited()Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;
    .locals 1

    .prologue
    .line 948
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    .line 949
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->numVisited_:I

    .line 950
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->onChanged()V

    .line 951
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 565
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->clone()Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 565
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->clone()Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 565
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->clone()Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 565
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->clone()Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 565
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->clone()Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;
    .locals 2

    .prologue
    .line 633
    invoke-static {}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->create()Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;)Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;

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
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->clone()Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 565
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 565
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;
    .locals 1

    .prologue
    .line 642
    invoke-static {}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->getDefaultInstance()Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 637
    invoke-static {}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getIssign()I
    .locals 1

    .prologue
    .line 1262
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->issign_:I

    return v0
.end method

.method public getNumBbsfavor()I
    .locals 1

    .prologue
    .line 1037
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->numBbsfavor_:I

    return v0
.end method

.method public getNumBbsnotice()I
    .locals 1

    .prologue
    .line 962
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->numBbsnotice_:I

    return v0
.end method

.method public getNumBbspost()I
    .locals 1

    .prologue
    .line 1012
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->numBbspost_:I

    return v0
.end method

.method public getNumCandy()I
    .locals 1

    .prologue
    .line 1187
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->numCandy_:I

    return v0
.end method

.method public getNumDays()I
    .locals 1

    .prologue
    .line 1212
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->numDays_:I

    return v0
.end method

.method public getNumFollowed()I
    .locals 1

    .prologue
    .line 912
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->numFollowed_:I

    return v0
.end method

.method public getNumFollowers()I
    .locals 1

    .prologue
    .line 1137
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->numFollowers_:I

    return v0
.end method

.method public getNumFollowfeed()I
    .locals 1

    .prologue
    .line 1112
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->numFollowfeed_:I

    return v0
.end method

.method public getNumFollowings()I
    .locals 1

    .prologue
    .line 1162
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->numFollowings_:I

    return v0
.end method

.method public getNumLasted()I
    .locals 1

    .prologue
    .line 1237
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->numLasted_:I

    return v0
.end method

.method public getNumObi()I
    .locals 1

    .prologue
    .line 1062
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->numObi_:I

    return v0
.end method

.method public getNumPaikenotice()I
    .locals 1

    .prologue
    .line 987
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->numPaikenotice_:I

    return v0
.end method

.method public getNumPaikereply()I
    .locals 1

    .prologue
    .line 1087
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->numPaikereply_:I

    return v0
.end method

.method public getNumVisited()I
    .locals 1

    .prologue
    .line 937
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->numVisited_:I

    return v0
.end method

.method public hasIssign()Z
    .locals 2

    .prologue
    .line 1258
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNumBbsfavor()Z
    .locals 2

    .prologue
    .line 1033
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

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

.method public hasNumBbsnotice()Z
    .locals 2

    .prologue
    .line 958
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

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

.method public hasNumBbspost()Z
    .locals 2

    .prologue
    .line 1008
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

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

.method public hasNumCandy()Z
    .locals 2

    .prologue
    .line 1183
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNumDays()Z
    .locals 2

    .prologue
    .line 1208
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNumFollowed()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 908
    iget v1, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNumFollowers()Z
    .locals 2

    .prologue
    .line 1133
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNumFollowfeed()Z
    .locals 2

    .prologue
    .line 1108
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNumFollowings()Z
    .locals 2

    .prologue
    .line 1158
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNumLasted()Z
    .locals 2

    .prologue
    .line 1233
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNumObi()Z
    .locals 2

    .prologue
    .line 1058
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

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

.method public hasNumPaikenotice()Z
    .locals 2

    .prologue
    .line 983
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

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

.method public hasNumPaikereply()Z
    .locals 2

    .prologue
    .line 1083
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

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

.method public hasNumVisited()Z
    .locals 2

    .prologue
    .line 933
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

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
    .line 574
    # getter for: Lcom/oppo/tribune/protobuf/RemindCountProto;->internal_static_pb_numnotice_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/RemindCountProto;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 798
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
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 565
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 565
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 805
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v1

    .line 808
    .local v1, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 809
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 815
    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 817
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 818
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->onChanged()V

    .line 819
    :goto_1
    return-object p0

    .line 811
    :sswitch_0
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 812
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->onChanged()V

    goto :goto_1

    .line 824
    :sswitch_1
    iget v2, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    .line 825
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->numFollowed_:I

    goto :goto_0

    .line 829
    :sswitch_2
    iget v2, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    .line 830
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->numVisited_:I

    goto :goto_0

    .line 834
    :sswitch_3
    iget v2, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    .line 835
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->numBbsnotice_:I

    goto :goto_0

    .line 839
    :sswitch_4
    iget v2, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    .line 840
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->numPaikenotice_:I

    goto :goto_0

    .line 844
    :sswitch_5
    iget v2, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    .line 845
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->numBbspost_:I

    goto :goto_0

    .line 849
    :sswitch_6
    iget v2, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    .line 850
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->numBbsfavor_:I

    goto :goto_0

    .line 854
    :sswitch_7
    iget v2, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x40

    iput v2, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    .line 855
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->numObi_:I

    goto :goto_0

    .line 859
    :sswitch_8
    iget v2, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x80

    iput v2, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    .line 860
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->numPaikereply_:I

    goto/16 :goto_0

    .line 864
    :sswitch_9
    iget v2, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x100

    iput v2, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    .line 865
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->numFollowfeed_:I

    goto/16 :goto_0

    .line 869
    :sswitch_a
    iget v2, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x200

    iput v2, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    .line 870
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->numFollowers_:I

    goto/16 :goto_0

    .line 874
    :sswitch_b
    iget v2, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x400

    iput v2, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    .line 875
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->numFollowings_:I

    goto/16 :goto_0

    .line 879
    :sswitch_c
    iget v2, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x800

    iput v2, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    .line 880
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->numCandy_:I

    goto/16 :goto_0

    .line 884
    :sswitch_d
    iget v2, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x1000

    iput v2, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    .line 885
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->numDays_:I

    goto/16 :goto_0

    .line 889
    :sswitch_e
    iget v2, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x2000

    iput v2, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    .line 890
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->numLasted_:I

    goto/16 :goto_0

    .line 894
    :sswitch_f
    iget v2, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x4000

    iput v2, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    .line 895
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->issign_:I

    goto/16 :goto_0

    .line 809
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
        0x50 -> :sswitch_a
        0x58 -> :sswitch_b
        0x60 -> :sswitch_c
        0x68 -> :sswitch_d
        0x70 -> :sswitch_e
        0x78 -> :sswitch_f
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 735
    instance-of v0, p1, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;

    if-eqz v0, :cond_0

    .line 736
    check-cast p1, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;)Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;

    move-result-object p0

    .line 739
    .end local p0    # "this":Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;
    :goto_0
    return-object p0

    .line 738
    .restart local p0    # "this":Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;)Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;
    .locals 1
    .param p1, "other"    # Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;

    .prologue
    .line 745
    invoke-static {}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->getDefaultInstance()Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 794
    :goto_0
    return-object p0

    .line 748
    :cond_0
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->hasNumFollowed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 749
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->getNumFollowed()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->setNumFollowed(I)Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;

    .line 751
    :cond_1
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->hasNumVisited()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 752
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->getNumVisited()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->setNumVisited(I)Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;

    .line 754
    :cond_2
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->hasNumBbsnotice()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 755
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->getNumBbsnotice()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->setNumBbsnotice(I)Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;

    .line 757
    :cond_3
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->hasNumPaikenotice()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 758
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->getNumPaikenotice()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->setNumPaikenotice(I)Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;

    .line 760
    :cond_4
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->hasNumBbspost()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 761
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->getNumBbspost()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->setNumBbspost(I)Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;

    .line 763
    :cond_5
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->hasNumBbsfavor()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 764
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->getNumBbsfavor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->setNumBbsfavor(I)Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;

    .line 766
    :cond_6
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->hasNumObi()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 767
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->getNumObi()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->setNumObi(I)Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;

    .line 769
    :cond_7
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->hasNumPaikereply()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 770
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->getNumPaikereply()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->setNumPaikereply(I)Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;

    .line 772
    :cond_8
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->hasNumFollowfeed()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 773
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->getNumFollowfeed()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->setNumFollowfeed(I)Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;

    .line 775
    :cond_9
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->hasNumFollowers()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 776
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->getNumFollowers()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->setNumFollowers(I)Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;

    .line 778
    :cond_a
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->hasNumFollowings()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 779
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->getNumFollowings()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->setNumFollowings(I)Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;

    .line 781
    :cond_b
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->hasNumCandy()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 782
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->getNumCandy()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->setNumCandy(I)Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;

    .line 784
    :cond_c
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->hasNumDays()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 785
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->getNumDays()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->setNumDays(I)Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;

    .line 787
    :cond_d
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->hasNumLasted()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 788
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->getNumLasted()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->setNumLasted(I)Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;

    .line 790
    :cond_e
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->hasIssign()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 791
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->getIssign()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->setIssign(I)Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;

    .line 793
    :cond_f
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto/16 :goto_0
.end method

.method public setIssign(I)Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1266
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    .line 1267
    iput p1, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->issign_:I

    .line 1268
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->onChanged()V

    .line 1269
    return-object p0
.end method

.method public setNumBbsfavor(I)Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1041
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    .line 1042
    iput p1, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->numBbsfavor_:I

    .line 1043
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->onChanged()V

    .line 1044
    return-object p0
.end method

.method public setNumBbsnotice(I)Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 966
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    .line 967
    iput p1, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->numBbsnotice_:I

    .line 968
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->onChanged()V

    .line 969
    return-object p0
.end method

.method public setNumBbspost(I)Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1016
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    .line 1017
    iput p1, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->numBbspost_:I

    .line 1018
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->onChanged()V

    .line 1019
    return-object p0
.end method

.method public setNumCandy(I)Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1191
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    .line 1192
    iput p1, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->numCandy_:I

    .line 1193
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->onChanged()V

    .line 1194
    return-object p0
.end method

.method public setNumDays(I)Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1216
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    .line 1217
    iput p1, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->numDays_:I

    .line 1218
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->onChanged()V

    .line 1219
    return-object p0
.end method

.method public setNumFollowed(I)Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 916
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    .line 917
    iput p1, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->numFollowed_:I

    .line 918
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->onChanged()V

    .line 919
    return-object p0
.end method

.method public setNumFollowers(I)Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1141
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    .line 1142
    iput p1, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->numFollowers_:I

    .line 1143
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->onChanged()V

    .line 1144
    return-object p0
.end method

.method public setNumFollowfeed(I)Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1116
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    .line 1117
    iput p1, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->numFollowfeed_:I

    .line 1118
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->onChanged()V

    .line 1119
    return-object p0
.end method

.method public setNumFollowings(I)Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1166
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    .line 1167
    iput p1, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->numFollowings_:I

    .line 1168
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->onChanged()V

    .line 1169
    return-object p0
.end method

.method public setNumLasted(I)Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1241
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    .line 1242
    iput p1, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->numLasted_:I

    .line 1243
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->onChanged()V

    .line 1244
    return-object p0
.end method

.method public setNumObi(I)Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1066
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    .line 1067
    iput p1, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->numObi_:I

    .line 1068
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->onChanged()V

    .line 1069
    return-object p0
.end method

.method public setNumPaikenotice(I)Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 991
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    .line 992
    iput p1, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->numPaikenotice_:I

    .line 993
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->onChanged()V

    .line 994
    return-object p0
.end method

.method public setNumPaikereply(I)Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1091
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    .line 1092
    iput p1, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->numPaikereply_:I

    .line 1093
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->onChanged()V

    .line 1094
    return-object p0
.end method

.method public setNumVisited(I)Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 941
    iget v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->bitField0_:I

    .line 942
    iput p1, p0, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->numVisited_:I

    .line 943
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;->onChanged()V

    .line 944
    return-object p0
.end method
