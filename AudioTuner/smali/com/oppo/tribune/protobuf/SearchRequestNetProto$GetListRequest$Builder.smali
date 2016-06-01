.class public final Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "SearchRequestNetProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;",
        ">;",
        "Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private categoryId_:I

.field private compress_:I

.field private keyword_:Ljava/lang/Object;

.field private mobile_:Ljava/lang/Object;

.field private orderBy_:I

.field private os_:I

.field private platform_:I

.field private randomCount_:I

.field private relateId_:I

.field private resType_:I

.field private screen_:Ljava/lang/Object;

.field private size_:I

.field private source_:I

.field private start_:I

.field private themeVersion_:I

.field private userId_:I

.field private userToken_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 717
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 1171
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->mobile_:Ljava/lang/Object;

    .line 1388
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->keyword_:Ljava/lang/Object;

    .line 1430
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->screen_:Ljava/lang/Object;

    .line 1497
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->userToken_:Ljava/lang/Object;

    .line 718
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->maybeForceBuilderInitialization()V

    .line 719
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 722
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 1171
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->mobile_:Ljava/lang/Object;

    .line 1388
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->keyword_:Ljava/lang/Object;

    .line 1430
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->screen_:Ljava/lang/Object;

    .line 1497
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->userToken_:Ljava/lang/Object;

    .line 723
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->maybeForceBuilderInitialization()V

    .line 724
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/SearchRequestNetProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/SearchRequestNetProto$1;

    .prologue
    .line 703
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 703
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;
    .locals 1

    .prologue
    .line 703
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->create()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 798
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;

    move-result-object v0

    .line 799
    .local v0, "result":Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 800
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 803
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;
    .locals 1

    .prologue
    .line 732
    new-instance v0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 708
    # getter for: Lcom/oppo/tribune/protobuf/SearchRequestNetProto;->internal_static_protobuf_GetListRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 727
    # getter for: Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 729
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 703
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->build()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 703
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->build()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;
    .locals 2

    .prologue
    .line 789
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;

    move-result-object v0

    .line 790
    .local v0, "result":Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 791
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 793
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 703
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 703
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;
    .locals 7

    .prologue
    const/high16 v6, 0x10000

    const v5, 0x8000

    .line 807
    new-instance v1, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;-><init>(Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;Lcom/oppo/tribune/protobuf/SearchRequestNetProto$1;)V

    .line 809
    .local v1, "result":Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    .line 810
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 811
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 812
    or-int/lit8 v2, v2, 0x1

    .line 814
    :cond_0
    iget v3, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->userId_:I

    # setter for: Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->userId_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->access$702(Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;I)I

    .line 815
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 816
    or-int/lit8 v2, v2, 0x2

    .line 818
    :cond_1
    iget v3, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->os_:I

    # setter for: Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->os_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->access$802(Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;I)I

    .line 819
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 820
    or-int/lit8 v2, v2, 0x4

    .line 822
    :cond_2
    iget v3, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->size_:I

    # setter for: Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->size_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->access$902(Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;I)I

    .line 823
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 824
    or-int/lit8 v2, v2, 0x8

    .line 826
    :cond_3
    iget v3, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->start_:I

    # setter for: Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->start_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->access$1002(Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;I)I

    .line 827
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 828
    or-int/lit8 v2, v2, 0x10

    .line 830
    :cond_4
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->mobile_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->mobile_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->access$1102(Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 831
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 832
    or-int/lit8 v2, v2, 0x20

    .line 834
    :cond_5
    iget v3, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->orderBy_:I

    # setter for: Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->orderBy_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->access$1202(Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;I)I

    .line 835
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 836
    or-int/lit8 v2, v2, 0x40

    .line 838
    :cond_6
    iget v3, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->categoryId_:I

    # setter for: Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->categoryId_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->access$1302(Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;I)I

    .line 839
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 840
    or-int/lit16 v2, v2, 0x80

    .line 842
    :cond_7
    iget v3, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->themeVersion_:I

    # setter for: Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->themeVersion_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->access$1402(Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;I)I

    .line 843
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_8

    .line 844
    or-int/lit16 v2, v2, 0x100

    .line 846
    :cond_8
    iget v3, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->platform_:I

    # setter for: Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->platform_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->access$1502(Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;I)I

    .line 847
    and-int/lit16 v3, v0, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_9

    .line 848
    or-int/lit16 v2, v2, 0x200

    .line 850
    :cond_9
    iget v3, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->compress_:I

    # setter for: Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->compress_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->access$1602(Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;I)I

    .line 851
    and-int/lit16 v3, v0, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_a

    .line 852
    or-int/lit16 v2, v2, 0x400

    .line 854
    :cond_a
    iget v3, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->resType_:I

    # setter for: Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->resType_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->access$1702(Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;I)I

    .line 855
    and-int/lit16 v3, v0, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_b

    .line 856
    or-int/lit16 v2, v2, 0x800

    .line 858
    :cond_b
    iget v3, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->relateId_:I

    # setter for: Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->relateId_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->access$1802(Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;I)I

    .line 859
    and-int/lit16 v3, v0, 0x1000

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_c

    .line 860
    or-int/lit16 v2, v2, 0x1000

    .line 862
    :cond_c
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->keyword_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->keyword_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->access$1902(Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 863
    and-int/lit16 v3, v0, 0x2000

    const/16 v4, 0x2000

    if-ne v3, v4, :cond_d

    .line 864
    or-int/lit16 v2, v2, 0x2000

    .line 866
    :cond_d
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->screen_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->screen_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->access$2002(Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 867
    and-int/lit16 v3, v0, 0x4000

    const/16 v4, 0x4000

    if-ne v3, v4, :cond_e

    .line 868
    or-int/lit16 v2, v2, 0x4000

    .line 870
    :cond_e
    iget v3, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->source_:I

    # setter for: Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->source_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->access$2102(Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;I)I

    .line 871
    and-int v3, v0, v5

    if-ne v3, v5, :cond_f

    .line 872
    or-int/2addr v2, v5

    .line 874
    :cond_f
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->userToken_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->userToken_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->access$2202(Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 875
    and-int v3, v0, v6

    if-ne v3, v6, :cond_10

    .line 876
    or-int/2addr v2, v6

    .line 878
    :cond_10
    iget v3, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->randomCount_:I

    # setter for: Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->randomCount_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->access$2302(Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;I)I

    .line 879
    # setter for: Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->access$2402(Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;I)I

    .line 880
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->onBuilt()V

    .line 881
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 703
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->clear()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 703
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->clear()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 703
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->clear()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 703
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->clear()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 736
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 737
    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->userId_:I

    .line 738
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    .line 739
    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->os_:I

    .line 740
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    .line 741
    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->size_:I

    .line 742
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    .line 743
    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->start_:I

    .line 744
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    .line 745
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->mobile_:Ljava/lang/Object;

    .line 746
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    .line 747
    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->orderBy_:I

    .line 748
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    .line 749
    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->categoryId_:I

    .line 750
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    .line 751
    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->themeVersion_:I

    .line 752
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    .line 753
    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->platform_:I

    .line 754
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    .line 755
    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->compress_:I

    .line 756
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    .line 757
    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->resType_:I

    .line 758
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    .line 759
    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->relateId_:I

    .line 760
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    .line 761
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->keyword_:Ljava/lang/Object;

    .line 762
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    .line 763
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->screen_:Ljava/lang/Object;

    .line 764
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    .line 765
    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->source_:I

    .line 766
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    .line 767
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->userToken_:Ljava/lang/Object;

    .line 768
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    .line 769
    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->randomCount_:I

    .line 770
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    .line 771
    return-object p0
.end method

.method public clearCategoryId()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;
    .locals 1

    .prologue
    .line 1256
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    .line 1257
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->categoryId_:I

    .line 1258
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->onChanged()V

    .line 1259
    return-object p0
.end method

.method public clearCompress()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;
    .locals 1

    .prologue
    .line 1331
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    .line 1332
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->compress_:I

    .line 1333
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->onChanged()V

    .line 1334
    return-object p0
.end method

.method public clearKeyword()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;
    .locals 1

    .prologue
    .line 1417
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    .line 1418
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->getKeyword()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->keyword_:Ljava/lang/Object;

    .line 1419
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->onChanged()V

    .line 1420
    return-object p0
.end method

.method public clearMobile()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;
    .locals 1

    .prologue
    .line 1200
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    .line 1201
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->getMobile()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->mobile_:Ljava/lang/Object;

    .line 1202
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->onChanged()V

    .line 1203
    return-object p0
.end method

.method public clearOrderBy()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;
    .locals 1

    .prologue
    .line 1231
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    .line 1232
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->orderBy_:I

    .line 1233
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->onChanged()V

    .line 1234
    return-object p0
.end method

.method public clearOs()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;
    .locals 1

    .prologue
    .line 1114
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    .line 1115
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->os_:I

    .line 1116
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->onChanged()V

    .line 1117
    return-object p0
.end method

.method public clearPlatform()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;
    .locals 1

    .prologue
    .line 1306
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    .line 1307
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->platform_:I

    .line 1308
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->onChanged()V

    .line 1309
    return-object p0
.end method

.method public clearRandomCount()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;
    .locals 2

    .prologue
    .line 1557
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    .line 1558
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->randomCount_:I

    .line 1559
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->onChanged()V

    .line 1560
    return-object p0
.end method

.method public clearRelateId()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;
    .locals 1

    .prologue
    .line 1381
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    .line 1382
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->relateId_:I

    .line 1383
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->onChanged()V

    .line 1384
    return-object p0
.end method

.method public clearResType()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;
    .locals 1

    .prologue
    .line 1356
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    .line 1357
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->resType_:I

    .line 1358
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->onChanged()V

    .line 1359
    return-object p0
.end method

.method public clearScreen()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;
    .locals 1

    .prologue
    .line 1459
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    .line 1460
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->getScreen()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->screen_:Ljava/lang/Object;

    .line 1461
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->onChanged()V

    .line 1462
    return-object p0
.end method

.method public clearSize()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;
    .locals 1

    .prologue
    .line 1139
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    .line 1140
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->size_:I

    .line 1141
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->onChanged()V

    .line 1142
    return-object p0
.end method

.method public clearSource()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;
    .locals 1

    .prologue
    .line 1490
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    .line 1491
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->source_:I

    .line 1492
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->onChanged()V

    .line 1493
    return-object p0
.end method

.method public clearStart()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;
    .locals 1

    .prologue
    .line 1164
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    .line 1165
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->start_:I

    .line 1166
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->onChanged()V

    .line 1167
    return-object p0
.end method

.method public clearThemeVersion()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;
    .locals 1

    .prologue
    .line 1281
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    .line 1282
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->themeVersion_:I

    .line 1283
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->onChanged()V

    .line 1284
    return-object p0
.end method

.method public clearUserId()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;
    .locals 1

    .prologue
    .line 1089
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    .line 1090
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->userId_:I

    .line 1091
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->onChanged()V

    .line 1092
    return-object p0
.end method

.method public clearUserToken()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;
    .locals 2

    .prologue
    .line 1526
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    .line 1527
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->getUserToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->userToken_:Ljava/lang/Object;

    .line 1528
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->onChanged()V

    .line 1529
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 703
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->clone()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 703
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->clone()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 703
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->clone()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 703
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->clone()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 703
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->clone()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;
    .locals 2

    .prologue
    .line 775
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->create()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;

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
    .line 703
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->clone()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCategoryId()I
    .locals 1

    .prologue
    .line 1245
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->categoryId_:I

    return v0
.end method

.method public getCompress()I
    .locals 1

    .prologue
    .line 1320
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->compress_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 703
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 703
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;
    .locals 1

    .prologue
    .line 784
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 779
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getKeyword()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1395
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->keyword_:Ljava/lang/Object;

    .line 1396
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1397
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1399
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->keyword_:Ljava/lang/Object;

    .line 1402
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

.method public getMobile()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1178
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->mobile_:Ljava/lang/Object;

    .line 1179
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1180
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1182
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->mobile_:Ljava/lang/Object;

    .line 1185
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

.method public getOrderBy()I
    .locals 1

    .prologue
    .line 1220
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->orderBy_:I

    return v0
.end method

.method public getOs()I
    .locals 1

    .prologue
    .line 1103
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->os_:I

    return v0
.end method

.method public getPlatform()I
    .locals 1

    .prologue
    .line 1295
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->platform_:I

    return v0
.end method

.method public getRandomCount()I
    .locals 1

    .prologue
    .line 1546
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->randomCount_:I

    return v0
.end method

.method public getRelateId()I
    .locals 1

    .prologue
    .line 1370
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->relateId_:I

    return v0
.end method

.method public getResType()I
    .locals 1

    .prologue
    .line 1345
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->resType_:I

    return v0
.end method

.method public getScreen()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1437
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->screen_:Ljava/lang/Object;

    .line 1438
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1439
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1441
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->screen_:Ljava/lang/Object;

    .line 1444
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

.method public getSize()I
    .locals 1

    .prologue
    .line 1128
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->size_:I

    return v0
.end method

.method public getSource()I
    .locals 1

    .prologue
    .line 1479
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->source_:I

    return v0
.end method

.method public getStart()I
    .locals 1

    .prologue
    .line 1153
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->start_:I

    return v0
.end method

.method public getThemeVersion()I
    .locals 1

    .prologue
    .line 1270
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->themeVersion_:I

    return v0
.end method

.method public getUserId()I
    .locals 1

    .prologue
    .line 1078
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->userId_:I

    return v0
.end method

.method public getUserToken()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1504
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->userToken_:Ljava/lang/Object;

    .line 1505
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1506
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1508
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->userToken_:Ljava/lang/Object;

    .line 1511
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

.method public hasCategoryId()Z
    .locals 2

    .prologue
    .line 1241
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

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

.method public hasCompress()Z
    .locals 2

    .prologue
    .line 1316
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

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

.method public hasKeyword()Z
    .locals 2

    .prologue
    .line 1391
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

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

.method public hasMobile()Z
    .locals 2

    .prologue
    .line 1174
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

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

.method public hasOrderBy()Z
    .locals 2

    .prologue
    .line 1216
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

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

.method public hasOs()Z
    .locals 2

    .prologue
    .line 1099
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

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

.method public hasPlatform()Z
    .locals 2

    .prologue
    .line 1291
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

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

.method public hasRandomCount()Z
    .locals 2

    .prologue
    const/high16 v1, 0x10000

    .line 1542
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRelateId()Z
    .locals 2

    .prologue
    .line 1366
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

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

.method public hasResType()Z
    .locals 2

    .prologue
    .line 1341
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

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

.method public hasScreen()Z
    .locals 2

    .prologue
    .line 1433
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

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

.method public hasSize()Z
    .locals 2

    .prologue
    .line 1124
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

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

.method public hasSource()Z
    .locals 2

    .prologue
    .line 1475
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

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

.method public hasStart()Z
    .locals 2

    .prologue
    .line 1149
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

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

.method public hasThemeVersion()Z
    .locals 2

    .prologue
    .line 1266
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

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

.method public hasUserId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1074
    iget v1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUserToken()Z
    .locals 2

    .prologue
    const v1, 0x8000

    .line 1500
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    and-int/2addr v0, v1

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
    .line 712
    # getter for: Lcom/oppo/tribune/protobuf/SearchRequestNetProto;->internal_static_protobuf_GetListRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 954
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
    .line 703
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 703
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;

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
    .line 703
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;

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
    .line 703
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 703
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;

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
    .line 703
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 961
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v1

    .line 964
    .local v1, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 965
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 971
    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 973
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 974
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->onChanged()V

    .line 975
    :goto_1
    return-object p0

    .line 967
    :sswitch_0
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 968
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->onChanged()V

    goto :goto_1

    .line 980
    :sswitch_1
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    .line 981
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->userId_:I

    goto :goto_0

    .line 985
    :sswitch_2
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    .line 986
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->os_:I

    goto :goto_0

    .line 990
    :sswitch_3
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    .line 991
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->size_:I

    goto :goto_0

    .line 995
    :sswitch_4
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    .line 996
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->start_:I

    goto :goto_0

    .line 1000
    :sswitch_5
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    .line 1001
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->mobile_:Ljava/lang/Object;

    goto :goto_0

    .line 1005
    :sswitch_6
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    .line 1006
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->orderBy_:I

    goto :goto_0

    .line 1010
    :sswitch_7
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x40

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    .line 1011
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->categoryId_:I

    goto :goto_0

    .line 1015
    :sswitch_8
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x80

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    .line 1016
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->themeVersion_:I

    goto/16 :goto_0

    .line 1020
    :sswitch_9
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x100

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    .line 1021
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->platform_:I

    goto/16 :goto_0

    .line 1025
    :sswitch_a
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x200

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    .line 1026
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->compress_:I

    goto/16 :goto_0

    .line 1030
    :sswitch_b
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x400

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    .line 1031
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->resType_:I

    goto/16 :goto_0

    .line 1035
    :sswitch_c
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x800

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    .line 1036
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->relateId_:I

    goto/16 :goto_0

    .line 1040
    :sswitch_d
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x1000

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    .line 1041
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->keyword_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 1045
    :sswitch_e
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x2000

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    .line 1046
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->screen_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 1050
    :sswitch_f
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x4000

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    .line 1051
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->source_:I

    goto/16 :goto_0

    .line 1055
    :sswitch_10
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    const v3, 0x8000

    or-int/2addr v2, v3

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    .line 1056
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->userToken_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 1060
    :sswitch_11
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    const/high16 v3, 0x10000

    or-int/2addr v2, v3

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    .line 1061
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->randomCount_:I

    goto/16 :goto_0

    .line 965
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
        0x50 -> :sswitch_a
        0x58 -> :sswitch_b
        0x60 -> :sswitch_c
        0x6a -> :sswitch_d
        0x72 -> :sswitch_e
        0x78 -> :sswitch_f
        0x82 -> :sswitch_10
        0x88 -> :sswitch_11
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 885
    instance-of v0, p1, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;

    if-eqz v0, :cond_0

    .line 886
    check-cast p1, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;

    move-result-object p0

    .line 889
    .end local p0    # "this":Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;
    :goto_0
    return-object p0

    .line 888
    .restart local p0    # "this":Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;
    .locals 1
    .param p1, "other"    # Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;

    .prologue
    .line 895
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 950
    :goto_0
    return-object p0

    .line 898
    :cond_0
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->hasUserId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 899
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->getUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->setUserId(I)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;

    .line 901
    :cond_1
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->hasOs()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 902
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->getOs()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->setOs(I)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;

    .line 904
    :cond_2
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->hasSize()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 905
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->getSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->setSize(I)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;

    .line 907
    :cond_3
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->hasStart()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 908
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->getStart()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->setStart(I)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;

    .line 910
    :cond_4
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->hasMobile()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 911
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->getMobile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->setMobile(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;

    .line 913
    :cond_5
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->hasOrderBy()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 914
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->getOrderBy()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->setOrderBy(I)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;

    .line 916
    :cond_6
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->hasCategoryId()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 917
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->getCategoryId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->setCategoryId(I)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;

    .line 919
    :cond_7
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->hasThemeVersion()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 920
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->getThemeVersion()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->setThemeVersion(I)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;

    .line 922
    :cond_8
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->hasPlatform()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 923
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->getPlatform()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->setPlatform(I)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;

    .line 925
    :cond_9
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->hasCompress()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 926
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->getCompress()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->setCompress(I)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;

    .line 928
    :cond_a
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->hasResType()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 929
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->getResType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->setResType(I)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;

    .line 931
    :cond_b
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->hasRelateId()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 932
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->getRelateId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->setRelateId(I)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;

    .line 934
    :cond_c
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->hasKeyword()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 935
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->getKeyword()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->setKeyword(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;

    .line 937
    :cond_d
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->hasScreen()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 938
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->getScreen()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->setScreen(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;

    .line 940
    :cond_e
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->hasSource()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 941
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->getSource()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->setSource(I)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;

    .line 943
    :cond_f
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->hasUserToken()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 944
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->getUserToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->setUserToken(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;

    .line 946
    :cond_10
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->hasRandomCount()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 947
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->getRandomCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->setRandomCount(I)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;

    .line 949
    :cond_11
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto/16 :goto_0
.end method

.method public setCategoryId(I)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1249
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    .line 1250
    iput p1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->categoryId_:I

    .line 1251
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->onChanged()V

    .line 1252
    return-object p0
.end method

.method public setCompress(I)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1324
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    .line 1325
    iput p1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->compress_:I

    .line 1326
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->onChanged()V

    .line 1327
    return-object p0
.end method

.method public setKeyword(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1407
    if-nez p1, :cond_0

    .line 1408
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1410
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    .line 1411
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->keyword_:Ljava/lang/Object;

    .line 1412
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->onChanged()V

    .line 1413
    return-object p0
.end method

.method setKeyword(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 1424
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    .line 1425
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->keyword_:Ljava/lang/Object;

    .line 1426
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->onChanged()V

    .line 1427
    return-void
.end method

.method public setMobile(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1190
    if-nez p1, :cond_0

    .line 1191
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1193
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    .line 1194
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->mobile_:Ljava/lang/Object;

    .line 1195
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->onChanged()V

    .line 1196
    return-object p0
.end method

.method setMobile(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 1207
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    .line 1208
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->mobile_:Ljava/lang/Object;

    .line 1209
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->onChanged()V

    .line 1210
    return-void
.end method

.method public setOrderBy(I)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1224
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    .line 1225
    iput p1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->orderBy_:I

    .line 1226
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->onChanged()V

    .line 1227
    return-object p0
.end method

.method public setOs(I)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1107
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    .line 1108
    iput p1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->os_:I

    .line 1109
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->onChanged()V

    .line 1110
    return-object p0
.end method

.method public setPlatform(I)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1299
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    .line 1300
    iput p1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->platform_:I

    .line 1301
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->onChanged()V

    .line 1302
    return-object p0
.end method

.method public setRandomCount(I)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1550
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    .line 1551
    iput p1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->randomCount_:I

    .line 1552
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->onChanged()V

    .line 1553
    return-object p0
.end method

.method public setRelateId(I)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1374
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    .line 1375
    iput p1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->relateId_:I

    .line 1376
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->onChanged()V

    .line 1377
    return-object p0
.end method

.method public setResType(I)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1349
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    .line 1350
    iput p1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->resType_:I

    .line 1351
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->onChanged()V

    .line 1352
    return-object p0
.end method

.method public setScreen(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1449
    if-nez p1, :cond_0

    .line 1450
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1452
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    .line 1453
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->screen_:Ljava/lang/Object;

    .line 1454
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->onChanged()V

    .line 1455
    return-object p0
.end method

.method setScreen(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 1466
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    .line 1467
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->screen_:Ljava/lang/Object;

    .line 1468
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->onChanged()V

    .line 1469
    return-void
.end method

.method public setSize(I)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1132
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    .line 1133
    iput p1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->size_:I

    .line 1134
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->onChanged()V

    .line 1135
    return-object p0
.end method

.method public setSource(I)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1483
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    .line 1484
    iput p1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->source_:I

    .line 1485
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->onChanged()V

    .line 1486
    return-object p0
.end method

.method public setStart(I)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1157
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    .line 1158
    iput p1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->start_:I

    .line 1159
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->onChanged()V

    .line 1160
    return-object p0
.end method

.method public setThemeVersion(I)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1274
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    .line 1275
    iput p1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->themeVersion_:I

    .line 1276
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->onChanged()V

    .line 1277
    return-object p0
.end method

.method public setUserId(I)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1082
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    .line 1083
    iput p1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->userId_:I

    .line 1084
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->onChanged()V

    .line 1085
    return-object p0
.end method

.method public setUserToken(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1516
    if-nez p1, :cond_0

    .line 1517
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1519
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    .line 1520
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->userToken_:Ljava/lang/Object;

    .line 1521
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->onChanged()V

    .line 1522
    return-object p0
.end method

.method setUserToken(Lcom/google/protobuf/ByteString;)V
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 1533
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->bitField0_:I

    .line 1534
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->userToken_:Ljava/lang/Object;

    .line 1535
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;->onChanged()V

    .line 1536
    return-void
.end method
