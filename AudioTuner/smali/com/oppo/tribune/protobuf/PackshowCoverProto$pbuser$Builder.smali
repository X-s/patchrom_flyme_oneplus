.class public final Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "PackshowCoverProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuserOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;",
        ">;",
        "Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuserOrBuilder;"
    }
.end annotation


# instance fields
.field private address_:Ljava/lang/Object;

.field private age_:I

.field private avatar_:Ljava/lang/Object;

.field private bitField0_:I

.field private constellation_:Ljava/lang/Object;

.field private dateline_:I

.field private fans_:I

.field private followed_:I

.field private gender_:I

.field private groupid_:I

.field private groupname_:Ljava/lang/Object;

.field private mutual_:I

.field private uid_:J

.field private username_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 637
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 935
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->username_:Ljava/lang/Object;

    .line 1127
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->address_:Ljava/lang/Object;

    .line 1169
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->groupname_:Ljava/lang/Object;

    .line 1236
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->constellation_:Ljava/lang/Object;

    .line 1278
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->avatar_:Ljava/lang/Object;

    .line 638
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->maybeForceBuilderInitialization()V

    .line 639
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 642
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 935
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->username_:Ljava/lang/Object;

    .line 1127
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->address_:Ljava/lang/Object;

    .line 1169
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->groupname_:Ljava/lang/Object;

    .line 1236
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->constellation_:Ljava/lang/Object;

    .line 1278
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->avatar_:Ljava/lang/Object;

    .line 643
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->maybeForceBuilderInitialization()V

    .line 644
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/PackshowCoverProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/PackshowCoverProto$1;

    .prologue
    .line 624
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;)Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 624
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;
    .locals 1

    .prologue
    .line 624
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->create()Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 710
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;

    move-result-object v0

    .line 711
    .local v0, "result":Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 712
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 715
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;
    .locals 1

    .prologue
    .line 652
    new-instance v0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 628
    # getter for: Lcom/oppo/tribune/protobuf/PackshowCoverProto;->internal_static_pbuser_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowCoverProto;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 647
    # getter for: Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 649
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 624
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->build()Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 624
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->build()Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;
    .locals 2

    .prologue
    .line 701
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;

    move-result-object v0

    .line 702
    .local v0, "result":Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 703
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 705
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 624
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 624
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;
    .locals 6

    .prologue
    .line 719
    new-instance v1, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;-><init>(Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;Lcom/oppo/tribune/protobuf/PackshowCoverProto$1;)V

    .line 721
    .local v1, "result":Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    .line 722
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 723
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 724
    or-int/lit8 v2, v2, 0x1

    .line 726
    :cond_0
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->username_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->username_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->access$702(Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;Ljava/lang/Object;)Ljava/lang/Object;

    .line 727
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 728
    or-int/lit8 v2, v2, 0x2

    .line 730
    :cond_1
    iget-wide v4, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->uid_:J

    # setter for: Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->uid_:J
    invoke-static {v1, v4, v5}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->access$802(Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;J)J

    .line 731
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 732
    or-int/lit8 v2, v2, 0x4

    .line 734
    :cond_2
    iget v3, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->mutual_:I

    # setter for: Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->mutual_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->access$902(Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;I)I

    .line 735
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 736
    or-int/lit8 v2, v2, 0x8

    .line 738
    :cond_3
    iget v3, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->dateline_:I

    # setter for: Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->dateline_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->access$1002(Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;I)I

    .line 739
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 740
    or-int/lit8 v2, v2, 0x10

    .line 742
    :cond_4
    iget v3, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->followed_:I

    # setter for: Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->followed_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->access$1102(Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;I)I

    .line 743
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 744
    or-int/lit8 v2, v2, 0x20

    .line 746
    :cond_5
    iget v3, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->gender_:I

    # setter for: Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->gender_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->access$1202(Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;I)I

    .line 747
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 748
    or-int/lit8 v2, v2, 0x40

    .line 750
    :cond_6
    iget v3, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->age_:I

    # setter for: Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->age_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->access$1302(Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;I)I

    .line 751
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 752
    or-int/lit16 v2, v2, 0x80

    .line 754
    :cond_7
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->address_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->address_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->access$1402(Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;Ljava/lang/Object;)Ljava/lang/Object;

    .line 755
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_8

    .line 756
    or-int/lit16 v2, v2, 0x100

    .line 758
    :cond_8
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->groupname_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->groupname_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->access$1502(Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;Ljava/lang/Object;)Ljava/lang/Object;

    .line 759
    and-int/lit16 v3, v0, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_9

    .line 760
    or-int/lit16 v2, v2, 0x200

    .line 762
    :cond_9
    iget v3, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->groupid_:I

    # setter for: Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->groupid_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->access$1602(Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;I)I

    .line 763
    and-int/lit16 v3, v0, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_a

    .line 764
    or-int/lit16 v2, v2, 0x400

    .line 766
    :cond_a
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->constellation_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->constellation_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->access$1702(Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;Ljava/lang/Object;)Ljava/lang/Object;

    .line 767
    and-int/lit16 v3, v0, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_b

    .line 768
    or-int/lit16 v2, v2, 0x800

    .line 770
    :cond_b
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->avatar_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->avatar_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->access$1802(Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;Ljava/lang/Object;)Ljava/lang/Object;

    .line 771
    and-int/lit16 v3, v0, 0x1000

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_c

    .line 772
    or-int/lit16 v2, v2, 0x1000

    .line 774
    :cond_c
    iget v3, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->fans_:I

    # setter for: Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->fans_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->access$1902(Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;I)I

    .line 775
    # setter for: Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->bitField0_:I
    invoke-static {v1, v2}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->access$2002(Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;I)I

    .line 776
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->onBuilt()V

    .line 777
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 624
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->clear()Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 624
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->clear()Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 624
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->clear()Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 624
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->clear()Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 656
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 657
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->username_:Ljava/lang/Object;

    .line 658
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    .line 659
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->uid_:J

    .line 660
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    .line 661
    iput v2, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->mutual_:I

    .line 662
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    .line 663
    iput v2, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->dateline_:I

    .line 664
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    .line 665
    iput v2, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->followed_:I

    .line 666
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    .line 667
    iput v2, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->gender_:I

    .line 668
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    .line 669
    iput v2, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->age_:I

    .line 670
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    .line 671
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->address_:Ljava/lang/Object;

    .line 672
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    .line 673
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->groupname_:Ljava/lang/Object;

    .line 674
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    .line 675
    iput v2, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->groupid_:I

    .line 676
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    .line 677
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->constellation_:Ljava/lang/Object;

    .line 678
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    .line 679
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->avatar_:Ljava/lang/Object;

    .line 680
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    .line 681
    iput v2, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->fans_:I

    .line 682
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    .line 683
    return-object p0
.end method

.method public clearAddress()Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;
    .locals 1

    .prologue
    .line 1156
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    .line 1157
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->getDefaultInstance()Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->address_:Ljava/lang/Object;

    .line 1158
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->onChanged()V

    .line 1159
    return-object p0
.end method

.method public clearAge()Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;
    .locals 1

    .prologue
    .line 1120
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    .line 1121
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->age_:I

    .line 1122
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->onChanged()V

    .line 1123
    return-object p0
.end method

.method public clearAvatar()Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;
    .locals 1

    .prologue
    .line 1307
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    .line 1308
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->getDefaultInstance()Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->getAvatar()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->avatar_:Ljava/lang/Object;

    .line 1309
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->onChanged()V

    .line 1310
    return-object p0
.end method

.method public clearConstellation()Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;
    .locals 1

    .prologue
    .line 1265
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    .line 1266
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->getDefaultInstance()Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->getConstellation()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->constellation_:Ljava/lang/Object;

    .line 1267
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->onChanged()V

    .line 1268
    return-object p0
.end method

.method public clearDateline()Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;
    .locals 1

    .prologue
    .line 1045
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    .line 1046
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->dateline_:I

    .line 1047
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->onChanged()V

    .line 1048
    return-object p0
.end method

.method public clearFans()Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;
    .locals 1

    .prologue
    .line 1338
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    .line 1339
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->fans_:I

    .line 1340
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->onChanged()V

    .line 1341
    return-object p0
.end method

.method public clearFollowed()Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;
    .locals 1

    .prologue
    .line 1070
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    .line 1071
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->followed_:I

    .line 1072
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->onChanged()V

    .line 1073
    return-object p0
.end method

.method public clearGender()Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;
    .locals 1

    .prologue
    .line 1095
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    .line 1096
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->gender_:I

    .line 1097
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->onChanged()V

    .line 1098
    return-object p0
.end method

.method public clearGroupid()Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;
    .locals 1

    .prologue
    .line 1229
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    .line 1230
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->groupid_:I

    .line 1231
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->onChanged()V

    .line 1232
    return-object p0
.end method

.method public clearGroupname()Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;
    .locals 1

    .prologue
    .line 1198
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    .line 1199
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->getDefaultInstance()Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->getGroupname()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->groupname_:Ljava/lang/Object;

    .line 1200
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->onChanged()V

    .line 1201
    return-object p0
.end method

.method public clearMutual()Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;
    .locals 1

    .prologue
    .line 1020
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    .line 1021
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->mutual_:I

    .line 1022
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->onChanged()V

    .line 1023
    return-object p0
.end method

.method public clearUid()Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;
    .locals 2

    .prologue
    .line 995
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    .line 996
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->uid_:J

    .line 997
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->onChanged()V

    .line 998
    return-object p0
.end method

.method public clearUsername()Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;
    .locals 1

    .prologue
    .line 964
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    .line 965
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->getDefaultInstance()Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->getUsername()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->username_:Ljava/lang/Object;

    .line 966
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->onChanged()V

    .line 967
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 624
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->clone()Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 624
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->clone()Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 624
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->clone()Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 624
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->clone()Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 624
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->clone()Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;
    .locals 2

    .prologue
    .line 687
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->create()Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;)Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;

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
    .line 624
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->clone()Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1134
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->address_:Ljava/lang/Object;

    .line 1135
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1136
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1138
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->address_:Ljava/lang/Object;

    .line 1141
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

.method public getAge()I
    .locals 1

    .prologue
    .line 1109
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->age_:I

    return v0
.end method

.method public getAvatar()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1285
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->avatar_:Ljava/lang/Object;

    .line 1286
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1287
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1289
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->avatar_:Ljava/lang/Object;

    .line 1292
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

.method public getConstellation()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1243
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->constellation_:Ljava/lang/Object;

    .line 1244
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1245
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1247
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->constellation_:Ljava/lang/Object;

    .line 1250
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

.method public getDateline()I
    .locals 1

    .prologue
    .line 1034
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->dateline_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 624
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 624
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;
    .locals 1

    .prologue
    .line 696
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->getDefaultInstance()Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 691
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getFans()I
    .locals 1

    .prologue
    .line 1327
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->fans_:I

    return v0
.end method

.method public getFollowed()I
    .locals 1

    .prologue
    .line 1059
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->followed_:I

    return v0
.end method

.method public getGender()I
    .locals 1

    .prologue
    .line 1084
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->gender_:I

    return v0
.end method

.method public getGroupid()I
    .locals 1

    .prologue
    .line 1218
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->groupid_:I

    return v0
.end method

.method public getGroupname()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1176
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->groupname_:Ljava/lang/Object;

    .line 1177
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1178
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1180
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->groupname_:Ljava/lang/Object;

    .line 1183
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

.method public getMutual()I
    .locals 1

    .prologue
    .line 1009
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->mutual_:I

    return v0
.end method

.method public getUid()J
    .locals 2

    .prologue
    .line 984
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->uid_:J

    return-wide v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 3

    .prologue
    .line 942
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->username_:Ljava/lang/Object;

    .line 943
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 944
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 946
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->username_:Ljava/lang/Object;

    .line 949
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

.method public hasAddress()Z
    .locals 2

    .prologue
    .line 1130
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

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

.method public hasAge()Z
    .locals 2

    .prologue
    .line 1105
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

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

.method public hasAvatar()Z
    .locals 2

    .prologue
    .line 1281
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

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

.method public hasConstellation()Z
    .locals 2

    .prologue
    .line 1239
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

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

.method public hasDateline()Z
    .locals 2

    .prologue
    .line 1030
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

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

.method public hasFans()Z
    .locals 2

    .prologue
    .line 1323
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

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

.method public hasFollowed()Z
    .locals 2

    .prologue
    .line 1055
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

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

.method public hasGender()Z
    .locals 2

    .prologue
    .line 1080
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

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

.method public hasGroupid()Z
    .locals 2

    .prologue
    .line 1214
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

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

.method public hasGroupname()Z
    .locals 2

    .prologue
    .line 1172
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

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

.method public hasMutual()Z
    .locals 2

    .prologue
    .line 1005
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

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

.method public hasUid()Z
    .locals 2

    .prologue
    .line 980
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

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

.method public hasUsername()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 938
    iget v1, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 632
    # getter for: Lcom/oppo/tribune/protobuf/PackshowCoverProto;->internal_static_pbuser_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowCoverProto;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 838
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
    .line 624
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 624
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;

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
    .line 624
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;

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
    .line 624
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 624
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;

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
    .line 624
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 845
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v1

    .line 848
    .local v1, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 849
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 855
    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 857
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 858
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->onChanged()V

    .line 859
    :goto_1
    return-object p0

    .line 851
    :sswitch_0
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 852
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->onChanged()V

    goto :goto_1

    .line 864
    :sswitch_1
    iget v2, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    .line 865
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->username_:Ljava/lang/Object;

    goto :goto_0

    .line 869
    :sswitch_2
    iget v2, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    .line 870
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->uid_:J

    goto :goto_0

    .line 874
    :sswitch_3
    iget v2, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    .line 875
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->mutual_:I

    goto :goto_0

    .line 879
    :sswitch_4
    iget v2, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    .line 880
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->dateline_:I

    goto :goto_0

    .line 884
    :sswitch_5
    iget v2, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    .line 885
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->followed_:I

    goto :goto_0

    .line 889
    :sswitch_6
    iget v2, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    .line 890
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->gender_:I

    goto :goto_0

    .line 894
    :sswitch_7
    iget v2, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x40

    iput v2, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    .line 895
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->age_:I

    goto :goto_0

    .line 899
    :sswitch_8
    iget v2, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x80

    iput v2, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    .line 900
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->address_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 904
    :sswitch_9
    iget v2, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x100

    iput v2, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    .line 905
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->groupname_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 909
    :sswitch_a
    iget v2, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x200

    iput v2, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    .line 910
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->groupid_:I

    goto/16 :goto_0

    .line 914
    :sswitch_b
    iget v2, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x400

    iput v2, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    .line 915
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->constellation_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 919
    :sswitch_c
    iget v2, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x800

    iput v2, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    .line 920
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->avatar_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 924
    :sswitch_d
    iget v2, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x1000

    iput v2, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    .line 925
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->fans_:I

    goto/16 :goto_0

    .line 849
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x50 -> :sswitch_a
        0x5a -> :sswitch_b
        0x62 -> :sswitch_c
        0x68 -> :sswitch_d
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 781
    instance-of v0, p1, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;

    if-eqz v0, :cond_0

    .line 782
    check-cast p1, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;)Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;

    move-result-object p0

    .line 785
    .end local p0    # "this":Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;
    :goto_0
    return-object p0

    .line 784
    .restart local p0    # "this":Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;)Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;
    .locals 2
    .param p1, "other"    # Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;

    .prologue
    .line 791
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->getDefaultInstance()Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 834
    :goto_0
    return-object p0

    .line 794
    :cond_0
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->hasUsername()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 795
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->setUsername(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;

    .line 797
    :cond_1
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->hasUid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 798
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->getUid()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->setUid(J)Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;

    .line 800
    :cond_2
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->hasMutual()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 801
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->getMutual()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->setMutual(I)Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;

    .line 803
    :cond_3
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->hasDateline()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 804
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->getDateline()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->setDateline(I)Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;

    .line 806
    :cond_4
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->hasFollowed()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 807
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->getFollowed()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->setFollowed(I)Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;

    .line 809
    :cond_5
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->hasGender()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 810
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->getGender()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->setGender(I)Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;

    .line 812
    :cond_6
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->hasAge()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 813
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->getAge()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->setAge(I)Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;

    .line 815
    :cond_7
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->hasAddress()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 816
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->setAddress(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;

    .line 818
    :cond_8
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->hasGroupname()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 819
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->getGroupname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->setGroupname(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;

    .line 821
    :cond_9
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->hasGroupid()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 822
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->getGroupid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->setGroupid(I)Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;

    .line 824
    :cond_a
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->hasConstellation()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 825
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->getConstellation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->setConstellation(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;

    .line 827
    :cond_b
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->hasAvatar()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 828
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->getAvatar()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->setAvatar(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;

    .line 830
    :cond_c
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->hasFans()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 831
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->getFans()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->setFans(I)Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;

    .line 833
    :cond_d
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto/16 :goto_0
.end method

.method public setAddress(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1146
    if-nez p1, :cond_0

    .line 1147
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1149
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    .line 1150
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->address_:Ljava/lang/Object;

    .line 1151
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->onChanged()V

    .line 1152
    return-object p0
.end method

.method setAddress(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 1163
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    .line 1164
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->address_:Ljava/lang/Object;

    .line 1165
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->onChanged()V

    .line 1166
    return-void
.end method

.method public setAge(I)Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1113
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    .line 1114
    iput p1, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->age_:I

    .line 1115
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->onChanged()V

    .line 1116
    return-object p0
.end method

.method public setAvatar(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1297
    if-nez p1, :cond_0

    .line 1298
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1300
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    .line 1301
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->avatar_:Ljava/lang/Object;

    .line 1302
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->onChanged()V

    .line 1303
    return-object p0
.end method

.method setAvatar(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 1314
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    .line 1315
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->avatar_:Ljava/lang/Object;

    .line 1316
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->onChanged()V

    .line 1317
    return-void
.end method

.method public setConstellation(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1255
    if-nez p1, :cond_0

    .line 1256
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1258
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    .line 1259
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->constellation_:Ljava/lang/Object;

    .line 1260
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->onChanged()V

    .line 1261
    return-object p0
.end method

.method setConstellation(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 1272
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    .line 1273
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->constellation_:Ljava/lang/Object;

    .line 1274
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->onChanged()V

    .line 1275
    return-void
.end method

.method public setDateline(I)Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1038
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    .line 1039
    iput p1, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->dateline_:I

    .line 1040
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->onChanged()V

    .line 1041
    return-object p0
.end method

.method public setFans(I)Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1331
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    .line 1332
    iput p1, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->fans_:I

    .line 1333
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->onChanged()V

    .line 1334
    return-object p0
.end method

.method public setFollowed(I)Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1063
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    .line 1064
    iput p1, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->followed_:I

    .line 1065
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->onChanged()V

    .line 1066
    return-object p0
.end method

.method public setGender(I)Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1088
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    .line 1089
    iput p1, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->gender_:I

    .line 1090
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->onChanged()V

    .line 1091
    return-object p0
.end method

.method public setGroupid(I)Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1222
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    .line 1223
    iput p1, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->groupid_:I

    .line 1224
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->onChanged()V

    .line 1225
    return-object p0
.end method

.method public setGroupname(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1188
    if-nez p1, :cond_0

    .line 1189
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1191
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    .line 1192
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->groupname_:Ljava/lang/Object;

    .line 1193
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->onChanged()V

    .line 1194
    return-object p0
.end method

.method setGroupname(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 1205
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    .line 1206
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->groupname_:Ljava/lang/Object;

    .line 1207
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->onChanged()V

    .line 1208
    return-void
.end method

.method public setMutual(I)Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1013
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    .line 1014
    iput p1, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->mutual_:I

    .line 1015
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->onChanged()V

    .line 1016
    return-object p0
.end method

.method public setUid(J)Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 988
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    .line 989
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->uid_:J

    .line 990
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->onChanged()V

    .line 991
    return-object p0
.end method

.method public setUsername(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 954
    if-nez p1, :cond_0

    .line 955
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 957
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    .line 958
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->username_:Ljava/lang/Object;

    .line 959
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->onChanged()V

    .line 960
    return-object p0
.end method

.method setUsername(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 971
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->bitField0_:I

    .line 972
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->username_:Ljava/lang/Object;

    .line 973
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->onChanged()V

    .line 974
    return-void
.end method
