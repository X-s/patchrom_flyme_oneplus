.class public final Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "BBSNoticesListProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;",
        ">;",
        "Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticeOrBuilder;"
    }
.end annotation


# instance fields
.field private authorid_:I

.field private avatar_:Ljava/lang/Object;

.field private bitField0_:I

.field private date_:Ljava/lang/Object;

.field private floor_:I

.field private key_:I

.field private note_:Ljava/lang/Object;

.field private pid_:I

.field private tid_:I

.field private type_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 519
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 810
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->avatar_:Ljava/lang/Object;

    .line 852
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->date_:Ljava/lang/Object;

    .line 894
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->note_:Ljava/lang/Object;

    .line 520
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->maybeForceBuilderInitialization()V

    .line 521
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 524
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 810
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->avatar_:Ljava/lang/Object;

    .line 852
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->date_:Ljava/lang/Object;

    .line 894
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->note_:Ljava/lang/Object;

    .line 525
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->maybeForceBuilderInitialization()V

    .line 526
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/BBSNoticesListProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/BBSNoticesListProto$1;

    .prologue
    .line 505
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 505
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;
    .locals 1

    .prologue
    .line 505
    invoke-static {}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->create()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 584
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;

    move-result-object v0

    .line 585
    .local v0, "result":Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 586
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 589
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;
    .locals 1

    .prologue
    .line 534
    new-instance v0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 510
    # getter for: Lcom/oppo/tribune/protobuf/BBSNoticesListProto;->internal_static_pb_bbsnotice_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 529
    # getter for: Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 531
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 505
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->build()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 505
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->build()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;
    .locals 2

    .prologue
    .line 575
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;

    move-result-object v0

    .line 576
    .local v0, "result":Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 577
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 579
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 505
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 505
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;
    .locals 5

    .prologue
    .line 593
    new-instance v1, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;-><init>(Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;Lcom/oppo/tribune/protobuf/BBSNoticesListProto$1;)V

    .line 595
    .local v1, "result":Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;
    iget v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->bitField0_:I

    .line 596
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 597
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 598
    or-int/lit8 v2, v2, 0x1

    .line 600
    :cond_0
    iget v3, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->key_:I

    # setter for: Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->key_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->access$702(Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;I)I

    .line 601
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 602
    or-int/lit8 v2, v2, 0x2

    .line 604
    :cond_1
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->avatar_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->avatar_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->access$802(Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 606
    or-int/lit8 v2, v2, 0x4

    .line 608
    :cond_2
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->date_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->date_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->access$902(Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 610
    or-int/lit8 v2, v2, 0x8

    .line 612
    :cond_3
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->note_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->note_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->access$1002(Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 614
    or-int/lit8 v2, v2, 0x10

    .line 616
    :cond_4
    iget v3, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->authorid_:I

    # setter for: Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->authorid_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->access$1102(Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;I)I

    .line 617
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 618
    or-int/lit8 v2, v2, 0x20

    .line 620
    :cond_5
    iget v3, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->type_:I

    # setter for: Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->type_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->access$1202(Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;I)I

    .line 621
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 622
    or-int/lit8 v2, v2, 0x40

    .line 624
    :cond_6
    iget v3, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->tid_:I

    # setter for: Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->tid_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->access$1302(Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;I)I

    .line 625
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 626
    or-int/lit16 v2, v2, 0x80

    .line 628
    :cond_7
    iget v3, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->pid_:I

    # setter for: Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->pid_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->access$1402(Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;I)I

    .line 629
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_8

    .line 630
    or-int/lit16 v2, v2, 0x100

    .line 632
    :cond_8
    iget v3, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->floor_:I

    # setter for: Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->floor_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->access$1502(Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;I)I

    .line 633
    # setter for: Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->bitField0_:I
    invoke-static {v1, v2}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->access$1602(Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;I)I

    .line 634
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->onBuilt()V

    .line 635
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 505
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->clear()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 505
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->clear()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 505
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->clear()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 505
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->clear()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 538
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 539
    iput v1, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->key_:I

    .line 540
    iget v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->bitField0_:I

    .line 541
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->avatar_:Ljava/lang/Object;

    .line 542
    iget v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->bitField0_:I

    .line 543
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->date_:Ljava/lang/Object;

    .line 544
    iget v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->bitField0_:I

    .line 545
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->note_:Ljava/lang/Object;

    .line 546
    iget v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->bitField0_:I

    .line 547
    iput v1, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->authorid_:I

    .line 548
    iget v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->bitField0_:I

    .line 549
    iput v1, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->type_:I

    .line 550
    iget v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->bitField0_:I

    .line 551
    iput v1, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->tid_:I

    .line 552
    iget v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->bitField0_:I

    .line 553
    iput v1, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->pid_:I

    .line 554
    iget v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->bitField0_:I

    .line 555
    iput v1, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->floor_:I

    .line 556
    iget v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->bitField0_:I

    .line 557
    return-object p0
.end method

.method public clearAuthorid()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;
    .locals 1

    .prologue
    .line 954
    iget v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->bitField0_:I

    .line 955
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->authorid_:I

    .line 956
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->onChanged()V

    .line 957
    return-object p0
.end method

.method public clearAvatar()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;
    .locals 1

    .prologue
    .line 839
    iget v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->bitField0_:I

    .line 840
    invoke-static {}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->getDefaultInstance()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->getAvatar()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->avatar_:Ljava/lang/Object;

    .line 841
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->onChanged()V

    .line 842
    return-object p0
.end method

.method public clearDate()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;
    .locals 1

    .prologue
    .line 881
    iget v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->bitField0_:I

    .line 882
    invoke-static {}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->getDefaultInstance()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->getDate()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->date_:Ljava/lang/Object;

    .line 883
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->onChanged()V

    .line 884
    return-object p0
.end method

.method public clearFloor()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;
    .locals 1

    .prologue
    .line 1054
    iget v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->bitField0_:I

    .line 1055
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->floor_:I

    .line 1056
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->onChanged()V

    .line 1057
    return-object p0
.end method

.method public clearKey()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;
    .locals 1

    .prologue
    .line 803
    iget v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->bitField0_:I

    .line 804
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->key_:I

    .line 805
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->onChanged()V

    .line 806
    return-object p0
.end method

.method public clearNote()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;
    .locals 1

    .prologue
    .line 923
    iget v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->bitField0_:I

    .line 924
    invoke-static {}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->getDefaultInstance()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->getNote()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->note_:Ljava/lang/Object;

    .line 925
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->onChanged()V

    .line 926
    return-object p0
.end method

.method public clearPid()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;
    .locals 1

    .prologue
    .line 1029
    iget v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->bitField0_:I

    .line 1030
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->pid_:I

    .line 1031
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->onChanged()V

    .line 1032
    return-object p0
.end method

.method public clearTid()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;
    .locals 1

    .prologue
    .line 1004
    iget v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->bitField0_:I

    .line 1005
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->tid_:I

    .line 1006
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->onChanged()V

    .line 1007
    return-object p0
.end method

.method public clearType()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;
    .locals 1

    .prologue
    .line 979
    iget v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->bitField0_:I

    .line 980
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->type_:I

    .line 981
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->onChanged()V

    .line 982
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 505
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->clone()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 505
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->clone()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 505
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->clone()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 505
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->clone()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 505
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->clone()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;
    .locals 2

    .prologue
    .line 561
    invoke-static {}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->create()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;

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
    .line 505
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->clone()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAuthorid()I
    .locals 1

    .prologue
    .line 943
    iget v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->authorid_:I

    return v0
.end method

.method public getAvatar()Ljava/lang/String;
    .locals 3

    .prologue
    .line 817
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->avatar_:Ljava/lang/Object;

    .line 818
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 819
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 821
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->avatar_:Ljava/lang/Object;

    .line 824
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

.method public getDate()Ljava/lang/String;
    .locals 3

    .prologue
    .line 859
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->date_:Ljava/lang/Object;

    .line 860
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 861
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 863
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->date_:Ljava/lang/Object;

    .line 866
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

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 505
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 505
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;
    .locals 1

    .prologue
    .line 570
    invoke-static {}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->getDefaultInstance()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 565
    invoke-static {}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getFloor()I
    .locals 1

    .prologue
    .line 1043
    iget v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->floor_:I

    return v0
.end method

.method public getKey()I
    .locals 1

    .prologue
    .line 792
    iget v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->key_:I

    return v0
.end method

.method public getNote()Ljava/lang/String;
    .locals 3

    .prologue
    .line 901
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->note_:Ljava/lang/Object;

    .line 902
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 903
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 905
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->note_:Ljava/lang/Object;

    .line 908
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

.method public getPid()I
    .locals 1

    .prologue
    .line 1018
    iget v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->pid_:I

    return v0
.end method

.method public getTid()I
    .locals 1

    .prologue
    .line 993
    iget v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->tid_:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 968
    iget v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->type_:I

    return v0
.end method

.method public hasAuthorid()Z
    .locals 2

    .prologue
    .line 939
    iget v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->bitField0_:I

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

.method public hasAvatar()Z
    .locals 2

    .prologue
    .line 813
    iget v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->bitField0_:I

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

.method public hasDate()Z
    .locals 2

    .prologue
    .line 855
    iget v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->bitField0_:I

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

.method public hasFloor()Z
    .locals 2

    .prologue
    .line 1039
    iget v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->bitField0_:I

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

.method public hasKey()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 788
    iget v1, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNote()Z
    .locals 2

    .prologue
    .line 897
    iget v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->bitField0_:I

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

.method public hasPid()Z
    .locals 2

    .prologue
    .line 1014
    iget v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->bitField0_:I

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

.method public hasTid()Z
    .locals 2

    .prologue
    .line 989
    iget v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->bitField0_:I

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

.method public hasType()Z
    .locals 2

    .prologue
    .line 964
    iget v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 514
    # getter for: Lcom/oppo/tribune/protobuf/BBSNoticesListProto;->internal_static_pb_bbsnotice_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 684
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->hasKey()Z

    move-result v1

    if-nez v1, :cond_1

    .line 708
    :cond_0
    :goto_0
    return v0

    .line 688
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->hasAvatar()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 692
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->hasType()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 696
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->hasTid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 700
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->hasPid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 704
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->hasFloor()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 708
    const/4 v0, 0x1

    goto :goto_0
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
    .line 505
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 505
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;

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
    .line 505
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;

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
    .line 505
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 505
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;

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
    .line 505
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 715
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v1

    .line 718
    .local v1, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 719
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 725
    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 727
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 728
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->onChanged()V

    .line 729
    :goto_1
    return-object p0

    .line 721
    :sswitch_0
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 722
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->onChanged()V

    goto :goto_1

    .line 734
    :sswitch_1
    iget v2, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->bitField0_:I

    .line 735
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->key_:I

    goto :goto_0

    .line 739
    :sswitch_2
    iget v2, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->bitField0_:I

    .line 740
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->avatar_:Ljava/lang/Object;

    goto :goto_0

    .line 744
    :sswitch_3
    iget v2, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->bitField0_:I

    .line 745
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->date_:Ljava/lang/Object;

    goto :goto_0

    .line 749
    :sswitch_4
    iget v2, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->bitField0_:I

    .line 750
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->note_:Ljava/lang/Object;

    goto :goto_0

    .line 754
    :sswitch_5
    iget v2, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->bitField0_:I

    .line 755
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->authorid_:I

    goto :goto_0

    .line 759
    :sswitch_6
    iget v2, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->bitField0_:I

    .line 760
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->type_:I

    goto :goto_0

    .line 764
    :sswitch_7
    iget v2, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x40

    iput v2, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->bitField0_:I

    .line 765
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->tid_:I

    goto :goto_0

    .line 769
    :sswitch_8
    iget v2, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x80

    iput v2, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->bitField0_:I

    .line 770
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->pid_:I

    goto/16 :goto_0

    .line 774
    :sswitch_9
    iget v2, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x100

    iput v2, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->bitField0_:I

    .line 775
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->floor_:I

    goto/16 :goto_0

    .line 719
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 639
    instance-of v0, p1, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;

    if-eqz v0, :cond_0

    .line 640
    check-cast p1, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;

    move-result-object p0

    .line 643
    .end local p0    # "this":Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;
    :goto_0
    return-object p0

    .line 642
    .restart local p0    # "this":Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;
    .locals 1
    .param p1, "other"    # Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;

    .prologue
    .line 649
    invoke-static {}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->getDefaultInstance()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 680
    :goto_0
    return-object p0

    .line 652
    :cond_0
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 653
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->getKey()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->setKey(I)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;

    .line 655
    :cond_1
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->hasAvatar()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 656
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->getAvatar()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->setAvatar(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;

    .line 658
    :cond_2
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->hasDate()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 659
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->getDate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->setDate(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;

    .line 661
    :cond_3
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->hasNote()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 662
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->getNote()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->setNote(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;

    .line 664
    :cond_4
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->hasAuthorid()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 665
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->getAuthorid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->setAuthorid(I)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;

    .line 667
    :cond_5
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->hasType()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 668
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->getType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->setType(I)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;

    .line 670
    :cond_6
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->hasTid()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 671
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->getTid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->setTid(I)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;

    .line 673
    :cond_7
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->hasPid()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 674
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->getPid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->setPid(I)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;

    .line 676
    :cond_8
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->hasFloor()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 677
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->getFloor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->setFloor(I)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;

    .line 679
    :cond_9
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public setAuthorid(I)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 947
    iget v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->bitField0_:I

    .line 948
    iput p1, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->authorid_:I

    .line 949
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->onChanged()V

    .line 950
    return-object p0
.end method

.method public setAvatar(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 829
    if-nez p1, :cond_0

    .line 830
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 832
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->bitField0_:I

    .line 833
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->avatar_:Ljava/lang/Object;

    .line 834
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->onChanged()V

    .line 835
    return-object p0
.end method

.method setAvatar(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 846
    iget v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->bitField0_:I

    .line 847
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->avatar_:Ljava/lang/Object;

    .line 848
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->onChanged()V

    .line 849
    return-void
.end method

.method public setDate(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 871
    if-nez p1, :cond_0

    .line 872
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 874
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->bitField0_:I

    .line 875
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->date_:Ljava/lang/Object;

    .line 876
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->onChanged()V

    .line 877
    return-object p0
.end method

.method setDate(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 888
    iget v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->bitField0_:I

    .line 889
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->date_:Ljava/lang/Object;

    .line 890
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->onChanged()V

    .line 891
    return-void
.end method

.method public setFloor(I)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1047
    iget v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->bitField0_:I

    .line 1048
    iput p1, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->floor_:I

    .line 1049
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->onChanged()V

    .line 1050
    return-object p0
.end method

.method public setKey(I)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 796
    iget v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->bitField0_:I

    .line 797
    iput p1, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->key_:I

    .line 798
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->onChanged()V

    .line 799
    return-object p0
.end method

.method public setNote(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 913
    if-nez p1, :cond_0

    .line 914
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 916
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->bitField0_:I

    .line 917
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->note_:Ljava/lang/Object;

    .line 918
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->onChanged()V

    .line 919
    return-object p0
.end method

.method setNote(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 930
    iget v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->bitField0_:I

    .line 931
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->note_:Ljava/lang/Object;

    .line 932
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->onChanged()V

    .line 933
    return-void
.end method

.method public setPid(I)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1022
    iget v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->bitField0_:I

    .line 1023
    iput p1, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->pid_:I

    .line 1024
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->onChanged()V

    .line 1025
    return-object p0
.end method

.method public setTid(I)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 997
    iget v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->bitField0_:I

    .line 998
    iput p1, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->tid_:I

    .line 999
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->onChanged()V

    .line 1000
    return-object p0
.end method

.method public setType(I)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 972
    iget v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->bitField0_:I

    .line 973
    iput p1, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->type_:I

    .line 974
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->onChanged()V

    .line 975
    return-object p0
.end method
