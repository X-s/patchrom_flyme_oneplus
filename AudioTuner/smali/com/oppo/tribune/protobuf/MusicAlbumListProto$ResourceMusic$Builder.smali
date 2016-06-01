.class public final Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "MusicAlbumListProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;",
        ">;",
        "Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private downloads_:Ljava/lang/Object;

.field private fileSize_:Ljava/lang/Object;

.field private fileUrl_:Ljava/lang/Object;

.field private format_:Ljava/lang/Object;

.field private id_:I

.field private name_:Ljava/lang/Object;

.field private releaseTime_:Ljava/lang/Object;

.field private sharer_:Ljava/lang/Object;

.field private singer_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 605
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 872
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->name_:Ljava/lang/Object;

    .line 914
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->singer_:Ljava/lang/Object;

    .line 956
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->format_:Ljava/lang/Object;

    .line 998
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->sharer_:Ljava/lang/Object;

    .line 1040
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->releaseTime_:Ljava/lang/Object;

    .line 1082
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->fileSize_:Ljava/lang/Object;

    .line 1124
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->fileUrl_:Ljava/lang/Object;

    .line 1166
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->downloads_:Ljava/lang/Object;

    .line 606
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->maybeForceBuilderInitialization()V

    .line 607
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 610
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 872
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->name_:Ljava/lang/Object;

    .line 914
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->singer_:Ljava/lang/Object;

    .line 956
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->format_:Ljava/lang/Object;

    .line 998
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->sharer_:Ljava/lang/Object;

    .line 1040
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->releaseTime_:Ljava/lang/Object;

    .line 1082
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->fileSize_:Ljava/lang/Object;

    .line 1124
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->fileUrl_:Ljava/lang/Object;

    .line 1166
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->downloads_:Ljava/lang/Object;

    .line 611
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->maybeForceBuilderInitialization()V

    .line 612
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/MusicAlbumListProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/MusicAlbumListProto$1;

    .prologue
    .line 591
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 591
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;
    .locals 1

    .prologue
    .line 591
    invoke-static {}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->create()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 670
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;

    move-result-object v0

    .line 671
    .local v0, "result":Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 672
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 675
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;
    .locals 1

    .prologue
    .line 620
    new-instance v0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 596
    # getter for: Lcom/oppo/tribune/protobuf/MusicAlbumListProto;->internal_static_protobuf_ResourceMusic_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 615
    # getter for: Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 617
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 591
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->build()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 591
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->build()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;
    .locals 2

    .prologue
    .line 661
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;

    move-result-object v0

    .line 662
    .local v0, "result":Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 663
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 665
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 591
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 591
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;
    .locals 5

    .prologue
    .line 679
    new-instance v1, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;-><init>(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;Lcom/oppo/tribune/protobuf/MusicAlbumListProto$1;)V

    .line 681
    .local v1, "result":Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->bitField0_:I

    .line 682
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 683
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 684
    or-int/lit8 v2, v2, 0x1

    .line 686
    :cond_0
    iget v3, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->id_:I

    # setter for: Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->id_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->access$702(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;I)I

    .line 687
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 688
    or-int/lit8 v2, v2, 0x2

    .line 690
    :cond_1
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->name_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->name_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->access$802(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 692
    or-int/lit8 v2, v2, 0x4

    .line 694
    :cond_2
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->singer_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->singer_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->access$902(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 696
    or-int/lit8 v2, v2, 0x8

    .line 698
    :cond_3
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->format_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->format_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->access$1002(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 700
    or-int/lit8 v2, v2, 0x10

    .line 702
    :cond_4
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->sharer_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->sharer_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->access$1102(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;Ljava/lang/Object;)Ljava/lang/Object;

    .line 703
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 704
    or-int/lit8 v2, v2, 0x20

    .line 706
    :cond_5
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->releaseTime_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->releaseTime_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->access$1202(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;Ljava/lang/Object;)Ljava/lang/Object;

    .line 707
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 708
    or-int/lit8 v2, v2, 0x40

    .line 710
    :cond_6
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->fileSize_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->fileSize_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->access$1302(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 712
    or-int/lit16 v2, v2, 0x80

    .line 714
    :cond_7
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->fileUrl_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->fileUrl_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->access$1402(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_8

    .line 716
    or-int/lit16 v2, v2, 0x100

    .line 718
    :cond_8
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->downloads_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->downloads_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->access$1502(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    # setter for: Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->bitField0_:I
    invoke-static {v1, v2}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->access$1602(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;I)I

    .line 720
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->onBuilt()V

    .line 721
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 591
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->clear()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 591
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->clear()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 591
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->clear()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 591
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->clear()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;
    .locals 1

    .prologue
    .line 624
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 625
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->id_:I

    .line 626
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->bitField0_:I

    .line 627
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->name_:Ljava/lang/Object;

    .line 628
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->bitField0_:I

    .line 629
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->singer_:Ljava/lang/Object;

    .line 630
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->bitField0_:I

    .line 631
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->format_:Ljava/lang/Object;

    .line 632
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->bitField0_:I

    .line 633
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->sharer_:Ljava/lang/Object;

    .line 634
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->bitField0_:I

    .line 635
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->releaseTime_:Ljava/lang/Object;

    .line 636
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->bitField0_:I

    .line 637
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->fileSize_:Ljava/lang/Object;

    .line 638
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->bitField0_:I

    .line 639
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->fileUrl_:Ljava/lang/Object;

    .line 640
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->bitField0_:I

    .line 641
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->downloads_:Ljava/lang/Object;

    .line 642
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->bitField0_:I

    .line 643
    return-object p0
.end method

.method public clearDownloads()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;
    .locals 1

    .prologue
    .line 1195
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->bitField0_:I

    .line 1196
    invoke-static {}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->getDefaultInstance()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->getDownloads()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->downloads_:Ljava/lang/Object;

    .line 1197
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->onChanged()V

    .line 1198
    return-object p0
.end method

.method public clearFileSize()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;
    .locals 1

    .prologue
    .line 1111
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->bitField0_:I

    .line 1112
    invoke-static {}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->getDefaultInstance()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->getFileSize()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->fileSize_:Ljava/lang/Object;

    .line 1113
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->onChanged()V

    .line 1114
    return-object p0
.end method

.method public clearFileUrl()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;
    .locals 1

    .prologue
    .line 1153
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->bitField0_:I

    .line 1154
    invoke-static {}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->getDefaultInstance()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->getFileUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->fileUrl_:Ljava/lang/Object;

    .line 1155
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->onChanged()V

    .line 1156
    return-object p0
.end method

.method public clearFormat()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;
    .locals 1

    .prologue
    .line 985
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->bitField0_:I

    .line 986
    invoke-static {}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->getDefaultInstance()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->getFormat()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->format_:Ljava/lang/Object;

    .line 987
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->onChanged()V

    .line 988
    return-object p0
.end method

.method public clearId()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;
    .locals 1

    .prologue
    .line 865
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->bitField0_:I

    .line 866
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->id_:I

    .line 867
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->onChanged()V

    .line 868
    return-object p0
.end method

.method public clearName()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;
    .locals 1

    .prologue
    .line 901
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->bitField0_:I

    .line 902
    invoke-static {}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->getDefaultInstance()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->name_:Ljava/lang/Object;

    .line 903
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->onChanged()V

    .line 904
    return-object p0
.end method

.method public clearReleaseTime()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;
    .locals 1

    .prologue
    .line 1069
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->bitField0_:I

    .line 1070
    invoke-static {}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->getDefaultInstance()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->getReleaseTime()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->releaseTime_:Ljava/lang/Object;

    .line 1071
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->onChanged()V

    .line 1072
    return-object p0
.end method

.method public clearSharer()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;
    .locals 1

    .prologue
    .line 1027
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->bitField0_:I

    .line 1028
    invoke-static {}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->getDefaultInstance()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->getSharer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->sharer_:Ljava/lang/Object;

    .line 1029
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->onChanged()V

    .line 1030
    return-object p0
.end method

.method public clearSinger()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;
    .locals 1

    .prologue
    .line 943
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->bitField0_:I

    .line 944
    invoke-static {}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->getDefaultInstance()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->getSinger()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->singer_:Ljava/lang/Object;

    .line 945
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->onChanged()V

    .line 946
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 591
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->clone()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 591
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->clone()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 591
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->clone()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 591
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->clone()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 591
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->clone()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;
    .locals 2

    .prologue
    .line 647
    invoke-static {}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->create()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;

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
    .line 591
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->clone()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 591
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 591
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;
    .locals 1

    .prologue
    .line 656
    invoke-static {}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->getDefaultInstance()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 651
    invoke-static {}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDownloads()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1173
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->downloads_:Ljava/lang/Object;

    .line 1174
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1175
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1177
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->downloads_:Ljava/lang/Object;

    .line 1180
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

.method public getFileSize()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1089
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->fileSize_:Ljava/lang/Object;

    .line 1090
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1091
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1093
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->fileSize_:Ljava/lang/Object;

    .line 1096
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

.method public getFileUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1131
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->fileUrl_:Ljava/lang/Object;

    .line 1132
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1133
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1135
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->fileUrl_:Ljava/lang/Object;

    .line 1138
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

.method public getFormat()Ljava/lang/String;
    .locals 3

    .prologue
    .line 963
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->format_:Ljava/lang/Object;

    .line 964
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 965
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 967
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->format_:Ljava/lang/Object;

    .line 970
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

.method public getId()I
    .locals 1

    .prologue
    .line 854
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->id_:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 879
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->name_:Ljava/lang/Object;

    .line 880
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 881
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 883
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->name_:Ljava/lang/Object;

    .line 886
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

.method public getReleaseTime()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1047
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->releaseTime_:Ljava/lang/Object;

    .line 1048
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1049
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1051
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->releaseTime_:Ljava/lang/Object;

    .line 1054
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

.method public getSharer()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1005
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->sharer_:Ljava/lang/Object;

    .line 1006
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1007
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1009
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->sharer_:Ljava/lang/Object;

    .line 1012
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

.method public getSinger()Ljava/lang/String;
    .locals 3

    .prologue
    .line 921
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->singer_:Ljava/lang/Object;

    .line 922
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 923
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 925
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->singer_:Ljava/lang/Object;

    .line 928
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

.method public hasDownloads()Z
    .locals 2

    .prologue
    .line 1169
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->bitField0_:I

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

.method public hasFileSize()Z
    .locals 2

    .prologue
    .line 1085
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->bitField0_:I

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

.method public hasFileUrl()Z
    .locals 2

    .prologue
    .line 1127
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->bitField0_:I

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

.method public hasFormat()Z
    .locals 2

    .prologue
    .line 959
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->bitField0_:I

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

.method public hasId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 850
    iget v1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasName()Z
    .locals 2

    .prologue
    .line 875
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->bitField0_:I

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

.method public hasReleaseTime()Z
    .locals 2

    .prologue
    .line 1043
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->bitField0_:I

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

.method public hasSharer()Z
    .locals 2

    .prologue
    .line 1001
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->bitField0_:I

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

.method public hasSinger()Z
    .locals 2

    .prologue
    .line 917
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 600
    # getter for: Lcom/oppo/tribune/protobuf/MusicAlbumListProto;->internal_static_protobuf_ResourceMusic_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 770
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
    .line 591
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 591
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;

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
    .line 591
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;

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
    .line 591
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 591
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;

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
    .line 591
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 777
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v1

    .line 780
    .local v1, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 781
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 787
    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 789
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 790
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->onChanged()V

    .line 791
    :goto_1
    return-object p0

    .line 783
    :sswitch_0
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 784
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->onChanged()V

    goto :goto_1

    .line 796
    :sswitch_1
    iget v2, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->bitField0_:I

    .line 797
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->id_:I

    goto :goto_0

    .line 801
    :sswitch_2
    iget v2, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->bitField0_:I

    .line 802
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->name_:Ljava/lang/Object;

    goto :goto_0

    .line 806
    :sswitch_3
    iget v2, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->bitField0_:I

    .line 807
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->singer_:Ljava/lang/Object;

    goto :goto_0

    .line 811
    :sswitch_4
    iget v2, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->bitField0_:I

    .line 812
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->format_:Ljava/lang/Object;

    goto :goto_0

    .line 816
    :sswitch_5
    iget v2, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->bitField0_:I

    .line 817
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->sharer_:Ljava/lang/Object;

    goto :goto_0

    .line 821
    :sswitch_6
    iget v2, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->bitField0_:I

    .line 822
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->releaseTime_:Ljava/lang/Object;

    goto :goto_0

    .line 826
    :sswitch_7
    iget v2, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x40

    iput v2, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->bitField0_:I

    .line 827
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->fileSize_:Ljava/lang/Object;

    goto :goto_0

    .line 831
    :sswitch_8
    iget v2, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x80

    iput v2, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->bitField0_:I

    .line 832
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->fileUrl_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 836
    :sswitch_9
    iget v2, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x100

    iput v2, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->bitField0_:I

    .line 837
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->downloads_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 781
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 725
    instance-of v0, p1, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;

    if-eqz v0, :cond_0

    .line 726
    check-cast p1, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;

    move-result-object p0

    .line 729
    .end local p0    # "this":Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;
    :goto_0
    return-object p0

    .line 728
    .restart local p0    # "this":Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;
    .locals 1
    .param p1, "other"    # Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;

    .prologue
    .line 735
    invoke-static {}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->getDefaultInstance()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 766
    :goto_0
    return-object p0

    .line 738
    :cond_0
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->hasId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 739
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->setId(I)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;

    .line 741
    :cond_1
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->hasName()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 742
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->setName(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;

    .line 744
    :cond_2
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->hasSinger()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 745
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->getSinger()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->setSinger(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;

    .line 747
    :cond_3
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->hasFormat()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 748
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->getFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->setFormat(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;

    .line 750
    :cond_4
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->hasSharer()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 751
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->getSharer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->setSharer(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;

    .line 753
    :cond_5
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->hasReleaseTime()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 754
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->getReleaseTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->setReleaseTime(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;

    .line 756
    :cond_6
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->hasFileSize()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 757
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->getFileSize()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->setFileSize(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;

    .line 759
    :cond_7
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->hasFileUrl()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 760
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->getFileUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->setFileUrl(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;

    .line 762
    :cond_8
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->hasDownloads()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 763
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->getDownloads()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->setDownloads(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;

    .line 765
    :cond_9
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public setDownloads(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1185
    if-nez p1, :cond_0

    .line 1186
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1188
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->bitField0_:I

    .line 1189
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->downloads_:Ljava/lang/Object;

    .line 1190
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->onChanged()V

    .line 1191
    return-object p0
.end method

.method setDownloads(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 1202
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->bitField0_:I

    .line 1203
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->downloads_:Ljava/lang/Object;

    .line 1204
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->onChanged()V

    .line 1205
    return-void
.end method

.method public setFileSize(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1101
    if-nez p1, :cond_0

    .line 1102
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1104
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->bitField0_:I

    .line 1105
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->fileSize_:Ljava/lang/Object;

    .line 1106
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->onChanged()V

    .line 1107
    return-object p0
.end method

.method setFileSize(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 1118
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->bitField0_:I

    .line 1119
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->fileSize_:Ljava/lang/Object;

    .line 1120
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->onChanged()V

    .line 1121
    return-void
.end method

.method public setFileUrl(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1143
    if-nez p1, :cond_0

    .line 1144
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1146
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->bitField0_:I

    .line 1147
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->fileUrl_:Ljava/lang/Object;

    .line 1148
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->onChanged()V

    .line 1149
    return-object p0
.end method

.method setFileUrl(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 1160
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->bitField0_:I

    .line 1161
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->fileUrl_:Ljava/lang/Object;

    .line 1162
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->onChanged()V

    .line 1163
    return-void
.end method

.method public setFormat(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 975
    if-nez p1, :cond_0

    .line 976
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 978
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->bitField0_:I

    .line 979
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->format_:Ljava/lang/Object;

    .line 980
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->onChanged()V

    .line 981
    return-object p0
.end method

.method setFormat(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 992
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->bitField0_:I

    .line 993
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->format_:Ljava/lang/Object;

    .line 994
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->onChanged()V

    .line 995
    return-void
.end method

.method public setId(I)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 858
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->bitField0_:I

    .line 859
    iput p1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->id_:I

    .line 860
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->onChanged()V

    .line 861
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 891
    if-nez p1, :cond_0

    .line 892
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 894
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->bitField0_:I

    .line 895
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->name_:Ljava/lang/Object;

    .line 896
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->onChanged()V

    .line 897
    return-object p0
.end method

.method setName(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 908
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->bitField0_:I

    .line 909
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->name_:Ljava/lang/Object;

    .line 910
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->onChanged()V

    .line 911
    return-void
.end method

.method public setReleaseTime(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1059
    if-nez p1, :cond_0

    .line 1060
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1062
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->bitField0_:I

    .line 1063
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->releaseTime_:Ljava/lang/Object;

    .line 1064
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->onChanged()V

    .line 1065
    return-object p0
.end method

.method setReleaseTime(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 1076
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->bitField0_:I

    .line 1077
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->releaseTime_:Ljava/lang/Object;

    .line 1078
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->onChanged()V

    .line 1079
    return-void
.end method

.method public setSharer(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1017
    if-nez p1, :cond_0

    .line 1018
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1020
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->bitField0_:I

    .line 1021
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->sharer_:Ljava/lang/Object;

    .line 1022
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->onChanged()V

    .line 1023
    return-object p0
.end method

.method setSharer(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 1034
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->bitField0_:I

    .line 1035
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->sharer_:Ljava/lang/Object;

    .line 1036
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->onChanged()V

    .line 1037
    return-void
.end method

.method public setSinger(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 933
    if-nez p1, :cond_0

    .line 934
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 936
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->bitField0_:I

    .line 937
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->singer_:Ljava/lang/Object;

    .line 938
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->onChanged()V

    .line 939
    return-object p0
.end method

.method setSinger(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 950
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->bitField0_:I

    .line 951
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->singer_:Ljava/lang/Object;

    .line 952
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->onChanged()V

    .line 953
    return-void
.end method
