.class public final Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "UserInfoProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/UserInfoProto$pb_userOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;",
        ">;",
        "Lcom/oppo/tribune/protobuf/UserInfoProto$pb_userOrBuilder;"
    }
.end annotation


# instance fields
.field private address_:Ljava/lang/Object;

.field private age_:I

.field private background_:Ljava/lang/Object;

.field private bgType_:I

.field private birthday_:I

.field private birthmonth_:I

.field private birthyear_:I

.field private bitField0_:I

.field private bitField1_:I

.field private bloodtype_:Ljava/lang/Object;

.field private city_:Ljava/lang/Object;

.field private constellation_:Ljava/lang/Object;

.field private credits_:I

.field private dateline_:I

.field private followed_:I

.field private follower_:I

.field private following_:I

.field private gender_:I

.field private headurl_:Ljava/lang/Object;

.field private height_:Ljava/lang/Object;

.field private id_:J

.field private level_:I

.field private levelname_:Ljava/lang/Object;

.field private likedNum_:I

.field private likesNum_:I

.field private mobile_:Ljava/lang/Object;

.field private mood_:Ljava/lang/Object;

.field private nickname_:Ljava/lang/Object;

.field private realname_:Ljava/lang/Object;

.field private regtime_:I

.field private shareNum_:I

.field private status_:I

.field private telphone_:Ljava/lang/Object;

.field private username_:Ljava/lang/Object;

.field private weight_:Ljava/lang/Object;

.field private zodiac_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1405
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 2051
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->username_:Ljava/lang/Object;

    .line 2093
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->nickname_:Ljava/lang/Object;

    .line 2135
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->realname_:Ljava/lang/Object;

    .line 2402
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->headurl_:Ljava/lang/Object;

    .line 2444
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->constellation_:Ljava/lang/Object;

    .line 2486
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->zodiac_:Ljava/lang/Object;

    .line 2528
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->telphone_:Ljava/lang/Object;

    .line 2570
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->mobile_:Ljava/lang/Object;

    .line 2612
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->height_:Ljava/lang/Object;

    .line 2654
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->weight_:Ljava/lang/Object;

    .line 2696
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bloodtype_:Ljava/lang/Object;

    .line 2738
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->city_:Ljava/lang/Object;

    .line 2780
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->address_:Ljava/lang/Object;

    .line 2847
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->levelname_:Ljava/lang/Object;

    .line 2964
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->background_:Ljava/lang/Object;

    .line 3006
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->mood_:Ljava/lang/Object;

    .line 1406
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->maybeForceBuilderInitialization()V

    .line 1407
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 1410
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 2051
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->username_:Ljava/lang/Object;

    .line 2093
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->nickname_:Ljava/lang/Object;

    .line 2135
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->realname_:Ljava/lang/Object;

    .line 2402
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->headurl_:Ljava/lang/Object;

    .line 2444
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->constellation_:Ljava/lang/Object;

    .line 2486
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->zodiac_:Ljava/lang/Object;

    .line 2528
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->telphone_:Ljava/lang/Object;

    .line 2570
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->mobile_:Ljava/lang/Object;

    .line 2612
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->height_:Ljava/lang/Object;

    .line 2654
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->weight_:Ljava/lang/Object;

    .line 2696
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bloodtype_:Ljava/lang/Object;

    .line 2738
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->city_:Ljava/lang/Object;

    .line 2780
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->address_:Ljava/lang/Object;

    .line 2847
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->levelname_:Ljava/lang/Object;

    .line 2964
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->background_:Ljava/lang/Object;

    .line 3006
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->mood_:Ljava/lang/Object;

    .line 1411
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->maybeForceBuilderInitialization()V

    .line 1412
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/UserInfoProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/UserInfoProto$1;

    .prologue
    .line 1392
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1392
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;
    .locals 1

    .prologue
    .line 1392
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->create()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1520
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    move-result-object v0

    .line 1521
    .local v0, "result":Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1522
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 1525
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;
    .locals 1

    .prologue
    .line 1420
    new-instance v0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1396
    # getter for: Lcom/oppo/tribune/protobuf/UserInfoProto;->internal_static_protobuf_pb_user_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserInfoProto;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 1415
    # getter for: Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1417
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1392
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->build()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1392
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->build()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;
    .locals 2

    .prologue
    .line 1511
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    move-result-object v0

    .line 1512
    .local v0, "result":Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1513
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 1515
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1392
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1392
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;
    .locals 13

    .prologue
    const/high16 v12, 0x40000

    const/high16 v11, 0x20000

    const/high16 v10, 0x10000

    const v9, 0x8000

    const/high16 v8, -0x80000000

    .line 1529
    new-instance v2, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    const/4 v5, 0x0

    invoke-direct {v2, p0, v5}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;-><init>(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;Lcom/oppo/tribune/protobuf/UserInfoProto$1;)V

    .line 1531
    .local v2, "result":Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 1532
    .local v0, "from_bitField0_":I
    iget v1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField1_:I

    .line 1533
    .local v1, "from_bitField1_":I
    const/4 v3, 0x0

    .line 1534
    .local v3, "to_bitField0_":I
    const/4 v4, 0x0

    .line 1535
    .local v4, "to_bitField1_":I
    and-int/lit8 v5, v0, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 1536
    or-int/lit8 v3, v3, 0x1

    .line 1538
    :cond_0
    iget-wide v6, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->id_:J

    # setter for: Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->id_:J
    invoke-static {v2, v6, v7}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->access$702(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;J)J

    .line 1539
    and-int/lit8 v5, v0, 0x2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 1540
    or-int/lit8 v3, v3, 0x2

    .line 1542
    :cond_1
    iget v5, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->status_:I

    # setter for: Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->status_:I
    invoke-static {v2, v5}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->access$802(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;I)I

    .line 1543
    and-int/lit8 v5, v0, 0x4

    const/4 v6, 0x4

    if-ne v5, v6, :cond_2

    .line 1544
    or-int/lit8 v3, v3, 0x4

    .line 1546
    :cond_2
    iget-object v5, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->username_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->username_:Ljava/lang/Object;
    invoke-static {v2, v5}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->access$902(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1547
    and-int/lit8 v5, v0, 0x8

    const/16 v6, 0x8

    if-ne v5, v6, :cond_3

    .line 1548
    or-int/lit8 v3, v3, 0x8

    .line 1550
    :cond_3
    iget-object v5, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->nickname_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->nickname_:Ljava/lang/Object;
    invoke-static {v2, v5}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->access$1002(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1551
    and-int/lit8 v5, v0, 0x10

    const/16 v6, 0x10

    if-ne v5, v6, :cond_4

    .line 1552
    or-int/lit8 v3, v3, 0x10

    .line 1554
    :cond_4
    iget-object v5, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->realname_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->realname_:Ljava/lang/Object;
    invoke-static {v2, v5}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->access$1102(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1555
    and-int/lit8 v5, v0, 0x20

    const/16 v6, 0x20

    if-ne v5, v6, :cond_5

    .line 1556
    or-int/lit8 v3, v3, 0x20

    .line 1558
    :cond_5
    iget v5, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->followed_:I

    # setter for: Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->followed_:I
    invoke-static {v2, v5}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->access$1202(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;I)I

    .line 1559
    and-int/lit8 v5, v0, 0x40

    const/16 v6, 0x40

    if-ne v5, v6, :cond_6

    .line 1560
    or-int/lit8 v3, v3, 0x40

    .line 1562
    :cond_6
    iget v5, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->following_:I

    # setter for: Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->following_:I
    invoke-static {v2, v5}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->access$1302(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;I)I

    .line 1563
    and-int/lit16 v5, v0, 0x80

    const/16 v6, 0x80

    if-ne v5, v6, :cond_7

    .line 1564
    or-int/lit16 v3, v3, 0x80

    .line 1566
    :cond_7
    iget v5, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->follower_:I

    # setter for: Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->follower_:I
    invoke-static {v2, v5}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->access$1402(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;I)I

    .line 1567
    and-int/lit16 v5, v0, 0x100

    const/16 v6, 0x100

    if-ne v5, v6, :cond_8

    .line 1568
    or-int/lit16 v3, v3, 0x100

    .line 1570
    :cond_8
    iget v5, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->credits_:I

    # setter for: Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->credits_:I
    invoke-static {v2, v5}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->access$1502(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;I)I

    .line 1571
    and-int/lit16 v5, v0, 0x200

    const/16 v6, 0x200

    if-ne v5, v6, :cond_9

    .line 1572
    or-int/lit16 v3, v3, 0x200

    .line 1574
    :cond_9
    iget v5, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->gender_:I

    # setter for: Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->gender_:I
    invoke-static {v2, v5}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->access$1602(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;I)I

    .line 1575
    and-int/lit16 v5, v0, 0x400

    const/16 v6, 0x400

    if-ne v5, v6, :cond_a

    .line 1576
    or-int/lit16 v3, v3, 0x400

    .line 1578
    :cond_a
    iget v5, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->age_:I

    # setter for: Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->age_:I
    invoke-static {v2, v5}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->access$1702(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;I)I

    .line 1579
    and-int/lit16 v5, v0, 0x800

    const/16 v6, 0x800

    if-ne v5, v6, :cond_b

    .line 1580
    or-int/lit16 v3, v3, 0x800

    .line 1582
    :cond_b
    iget v5, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->birthyear_:I

    # setter for: Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->birthyear_:I
    invoke-static {v2, v5}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->access$1802(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;I)I

    .line 1583
    and-int/lit16 v5, v0, 0x1000

    const/16 v6, 0x1000

    if-ne v5, v6, :cond_c

    .line 1584
    or-int/lit16 v3, v3, 0x1000

    .line 1586
    :cond_c
    iget v5, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->birthmonth_:I

    # setter for: Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->birthmonth_:I
    invoke-static {v2, v5}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->access$1902(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;I)I

    .line 1587
    and-int/lit16 v5, v0, 0x2000

    const/16 v6, 0x2000

    if-ne v5, v6, :cond_d

    .line 1588
    or-int/lit16 v3, v3, 0x2000

    .line 1590
    :cond_d
    iget v5, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->birthday_:I

    # setter for: Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->birthday_:I
    invoke-static {v2, v5}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->access$2002(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;I)I

    .line 1591
    and-int/lit16 v5, v0, 0x4000

    const/16 v6, 0x4000

    if-ne v5, v6, :cond_e

    .line 1592
    or-int/lit16 v3, v3, 0x4000

    .line 1594
    :cond_e
    iget-object v5, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->headurl_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->headurl_:Ljava/lang/Object;
    invoke-static {v2, v5}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->access$2102(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1595
    and-int v5, v0, v9

    if-ne v5, v9, :cond_f

    .line 1596
    or-int/2addr v3, v9

    .line 1598
    :cond_f
    iget-object v5, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->constellation_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->constellation_:Ljava/lang/Object;
    invoke-static {v2, v5}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->access$2202(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1599
    and-int v5, v0, v10

    if-ne v5, v10, :cond_10

    .line 1600
    or-int/2addr v3, v10

    .line 1602
    :cond_10
    iget-object v5, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->zodiac_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->zodiac_:Ljava/lang/Object;
    invoke-static {v2, v5}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->access$2302(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1603
    and-int v5, v0, v11

    if-ne v5, v11, :cond_11

    .line 1604
    or-int/2addr v3, v11

    .line 1606
    :cond_11
    iget-object v5, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->telphone_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->telphone_:Ljava/lang/Object;
    invoke-static {v2, v5}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->access$2402(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1607
    and-int v5, v0, v12

    if-ne v5, v12, :cond_12

    .line 1608
    or-int/2addr v3, v12

    .line 1610
    :cond_12
    iget-object v5, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->mobile_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->mobile_:Ljava/lang/Object;
    invoke-static {v2, v5}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->access$2502(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1611
    const/high16 v5, 0x80000

    and-int/2addr v5, v0

    const/high16 v6, 0x80000

    if-ne v5, v6, :cond_13

    .line 1612
    const/high16 v5, 0x80000

    or-int/2addr v3, v5

    .line 1614
    :cond_13
    iget-object v5, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->height_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->height_:Ljava/lang/Object;
    invoke-static {v2, v5}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->access$2602(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1615
    const/high16 v5, 0x100000

    and-int/2addr v5, v0

    const/high16 v6, 0x100000

    if-ne v5, v6, :cond_14

    .line 1616
    const/high16 v5, 0x100000

    or-int/2addr v3, v5

    .line 1618
    :cond_14
    iget-object v5, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->weight_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->weight_:Ljava/lang/Object;
    invoke-static {v2, v5}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->access$2702(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1619
    const/high16 v5, 0x200000

    and-int/2addr v5, v0

    const/high16 v6, 0x200000

    if-ne v5, v6, :cond_15

    .line 1620
    const/high16 v5, 0x200000

    or-int/2addr v3, v5

    .line 1622
    :cond_15
    iget-object v5, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bloodtype_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bloodtype_:Ljava/lang/Object;
    invoke-static {v2, v5}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->access$2802(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1623
    const/high16 v5, 0x400000

    and-int/2addr v5, v0

    const/high16 v6, 0x400000

    if-ne v5, v6, :cond_16

    .line 1624
    const/high16 v5, 0x400000

    or-int/2addr v3, v5

    .line 1626
    :cond_16
    iget-object v5, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->city_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->city_:Ljava/lang/Object;
    invoke-static {v2, v5}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->access$2902(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1627
    const/high16 v5, 0x800000

    and-int/2addr v5, v0

    const/high16 v6, 0x800000

    if-ne v5, v6, :cond_17

    .line 1628
    const/high16 v5, 0x800000

    or-int/2addr v3, v5

    .line 1630
    :cond_17
    iget-object v5, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->address_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->address_:Ljava/lang/Object;
    invoke-static {v2, v5}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->access$3002(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1631
    const/high16 v5, 0x1000000

    and-int/2addr v5, v0

    const/high16 v6, 0x1000000

    if-ne v5, v6, :cond_18

    .line 1632
    const/high16 v5, 0x1000000

    or-int/2addr v3, v5

    .line 1634
    :cond_18
    iget v5, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->level_:I

    # setter for: Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->level_:I
    invoke-static {v2, v5}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->access$3102(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;I)I

    .line 1635
    const/high16 v5, 0x2000000

    and-int/2addr v5, v0

    const/high16 v6, 0x2000000

    if-ne v5, v6, :cond_19

    .line 1636
    const/high16 v5, 0x2000000

    or-int/2addr v3, v5

    .line 1638
    :cond_19
    iget-object v5, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->levelname_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->levelname_:Ljava/lang/Object;
    invoke-static {v2, v5}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->access$3202(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1639
    const/high16 v5, 0x4000000

    and-int/2addr v5, v0

    const/high16 v6, 0x4000000

    if-ne v5, v6, :cond_1a

    .line 1640
    const/high16 v5, 0x4000000

    or-int/2addr v3, v5

    .line 1642
    :cond_1a
    iget v5, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->regtime_:I

    # setter for: Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->regtime_:I
    invoke-static {v2, v5}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->access$3302(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;I)I

    .line 1643
    const/high16 v5, 0x8000000

    and-int/2addr v5, v0

    const/high16 v6, 0x8000000

    if-ne v5, v6, :cond_1b

    .line 1644
    const/high16 v5, 0x8000000

    or-int/2addr v3, v5

    .line 1646
    :cond_1b
    iget v5, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->dateline_:I

    # setter for: Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->dateline_:I
    invoke-static {v2, v5}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->access$3402(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;I)I

    .line 1647
    const/high16 v5, 0x10000000

    and-int/2addr v5, v0

    const/high16 v6, 0x10000000

    if-ne v5, v6, :cond_1c

    .line 1648
    const/high16 v5, 0x10000000

    or-int/2addr v3, v5

    .line 1650
    :cond_1c
    iget v5, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bgType_:I

    # setter for: Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bgType_:I
    invoke-static {v2, v5}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->access$3502(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;I)I

    .line 1651
    const/high16 v5, 0x20000000

    and-int/2addr v5, v0

    const/high16 v6, 0x20000000

    if-ne v5, v6, :cond_1d

    .line 1652
    const/high16 v5, 0x20000000

    or-int/2addr v3, v5

    .line 1654
    :cond_1d
    iget-object v5, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->background_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->background_:Ljava/lang/Object;
    invoke-static {v2, v5}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->access$3602(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1655
    const/high16 v5, 0x40000000    # 2.0f

    and-int/2addr v5, v0

    const/high16 v6, 0x40000000    # 2.0f

    if-ne v5, v6, :cond_1e

    .line 1656
    const/high16 v5, 0x40000000    # 2.0f

    or-int/2addr v3, v5

    .line 1658
    :cond_1e
    iget-object v5, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->mood_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->mood_:Ljava/lang/Object;
    invoke-static {v2, v5}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->access$3702(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1659
    and-int v5, v0, v8

    if-ne v5, v8, :cond_1f

    .line 1660
    or-int/2addr v3, v8

    .line 1662
    :cond_1f
    iget v5, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->shareNum_:I

    # setter for: Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->shareNum_:I
    invoke-static {v2, v5}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->access$3802(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;I)I

    .line 1663
    and-int/lit8 v5, v1, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_20

    .line 1664
    or-int/lit8 v4, v4, 0x1

    .line 1666
    :cond_20
    iget v5, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->likedNum_:I

    # setter for: Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->likedNum_:I
    invoke-static {v2, v5}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->access$3902(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;I)I

    .line 1667
    and-int/lit8 v5, v1, 0x2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_21

    .line 1668
    or-int/lit8 v4, v4, 0x2

    .line 1670
    :cond_21
    iget v5, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->likesNum_:I

    # setter for: Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->likesNum_:I
    invoke-static {v2, v5}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->access$4002(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;I)I

    .line 1671
    # setter for: Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField0_:I
    invoke-static {v2, v3}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->access$4102(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;I)I

    .line 1672
    # setter for: Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->bitField1_:I
    invoke-static {v2, v4}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->access$4202(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;I)I

    .line 1673
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->onBuilt()V

    .line 1674
    return-object v2
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1392
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->clear()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1392
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->clear()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1392
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->clear()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1392
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->clear()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1424
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 1425
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->id_:J

    .line 1426
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 1427
    iput v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->status_:I

    .line 1428
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 1429
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->username_:Ljava/lang/Object;

    .line 1430
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 1431
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->nickname_:Ljava/lang/Object;

    .line 1432
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 1433
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->realname_:Ljava/lang/Object;

    .line 1434
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 1435
    iput v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->followed_:I

    .line 1436
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 1437
    iput v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->following_:I

    .line 1438
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 1439
    iput v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->follower_:I

    .line 1440
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 1441
    iput v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->credits_:I

    .line 1442
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 1443
    iput v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->gender_:I

    .line 1444
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 1445
    iput v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->age_:I

    .line 1446
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 1447
    iput v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->birthyear_:I

    .line 1448
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 1449
    iput v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->birthmonth_:I

    .line 1450
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 1451
    iput v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->birthday_:I

    .line 1452
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 1453
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->headurl_:Ljava/lang/Object;

    .line 1454
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 1455
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->constellation_:Ljava/lang/Object;

    .line 1456
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 1457
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->zodiac_:Ljava/lang/Object;

    .line 1458
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 1459
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->telphone_:Ljava/lang/Object;

    .line 1460
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 1461
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->mobile_:Ljava/lang/Object;

    .line 1462
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 1463
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->height_:Ljava/lang/Object;

    .line 1464
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 1465
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->weight_:Ljava/lang/Object;

    .line 1466
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    const v1, -0x100001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 1467
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bloodtype_:Ljava/lang/Object;

    .line 1468
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 1469
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->city_:Ljava/lang/Object;

    .line 1470
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    const v1, -0x400001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 1471
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->address_:Ljava/lang/Object;

    .line 1472
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    const v1, -0x800001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 1473
    iput v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->level_:I

    .line 1474
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    const v1, -0x1000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 1475
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->levelname_:Ljava/lang/Object;

    .line 1476
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    const v1, -0x2000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 1477
    iput v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->regtime_:I

    .line 1478
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    const v1, -0x4000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 1479
    iput v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->dateline_:I

    .line 1480
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    const v1, -0x8000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 1481
    iput v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bgType_:I

    .line 1482
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    const v1, -0x10000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 1483
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->background_:Ljava/lang/Object;

    .line 1484
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    const v1, -0x20000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 1485
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->mood_:Ljava/lang/Object;

    .line 1486
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    const v1, -0x40000001    # -1.9999999f

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 1487
    iput v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->shareNum_:I

    .line 1488
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 1489
    iput v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->likedNum_:I

    .line 1490
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField1_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField1_:I

    .line 1491
    iput v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->likesNum_:I

    .line 1492
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField1_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField1_:I

    .line 1493
    return-object p0
.end method

.method public clearAddress()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;
    .locals 2

    .prologue
    .line 2809
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    const v1, -0x800001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 2810
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getDefaultInstance()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->address_:Ljava/lang/Object;

    .line 2811
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->onChanged()V

    .line 2812
    return-object p0
.end method

.method public clearAge()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;
    .locals 1

    .prologue
    .line 2320
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 2321
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->age_:I

    .line 2322
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->onChanged()V

    .line 2323
    return-object p0
.end method

.method public clearBackground()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;
    .locals 2

    .prologue
    .line 2993
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    const v1, -0x20000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 2994
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getDefaultInstance()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getBackground()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->background_:Ljava/lang/Object;

    .line 2995
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->onChanged()V

    .line 2996
    return-object p0
.end method

.method public clearBgType()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;
    .locals 2

    .prologue
    .line 2957
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    const v1, -0x10000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 2958
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bgType_:I

    .line 2959
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->onChanged()V

    .line 2960
    return-object p0
.end method

.method public clearBirthday()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;
    .locals 1

    .prologue
    .line 2395
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 2396
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->birthday_:I

    .line 2397
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->onChanged()V

    .line 2398
    return-object p0
.end method

.method public clearBirthmonth()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;
    .locals 1

    .prologue
    .line 2370
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 2371
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->birthmonth_:I

    .line 2372
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->onChanged()V

    .line 2373
    return-object p0
.end method

.method public clearBirthyear()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;
    .locals 1

    .prologue
    .line 2345
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 2346
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->birthyear_:I

    .line 2347
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->onChanged()V

    .line 2348
    return-object p0
.end method

.method public clearBloodtype()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;
    .locals 2

    .prologue
    .line 2725
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 2726
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getDefaultInstance()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getBloodtype()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bloodtype_:Ljava/lang/Object;

    .line 2727
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->onChanged()V

    .line 2728
    return-object p0
.end method

.method public clearCity()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;
    .locals 2

    .prologue
    .line 2767
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    const v1, -0x400001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 2768
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getDefaultInstance()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getCity()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->city_:Ljava/lang/Object;

    .line 2769
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->onChanged()V

    .line 2770
    return-object p0
.end method

.method public clearConstellation()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;
    .locals 2

    .prologue
    .line 2473
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 2474
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getDefaultInstance()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getConstellation()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->constellation_:Ljava/lang/Object;

    .line 2475
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->onChanged()V

    .line 2476
    return-object p0
.end method

.method public clearCredits()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;
    .locals 1

    .prologue
    .line 2270
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 2271
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->credits_:I

    .line 2272
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->onChanged()V

    .line 2273
    return-object p0
.end method

.method public clearDateline()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;
    .locals 2

    .prologue
    .line 2932
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    const v1, -0x8000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 2933
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->dateline_:I

    .line 2934
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->onChanged()V

    .line 2935
    return-object p0
.end method

.method public clearFollowed()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;
    .locals 1

    .prologue
    .line 2195
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 2196
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->followed_:I

    .line 2197
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->onChanged()V

    .line 2198
    return-object p0
.end method

.method public clearFollower()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;
    .locals 1

    .prologue
    .line 2245
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 2246
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->follower_:I

    .line 2247
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->onChanged()V

    .line 2248
    return-object p0
.end method

.method public clearFollowing()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;
    .locals 1

    .prologue
    .line 2220
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 2221
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->following_:I

    .line 2222
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->onChanged()V

    .line 2223
    return-object p0
.end method

.method public clearGender()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;
    .locals 1

    .prologue
    .line 2295
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 2296
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->gender_:I

    .line 2297
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->onChanged()V

    .line 2298
    return-object p0
.end method

.method public clearHeadurl()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;
    .locals 1

    .prologue
    .line 2431
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 2432
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getDefaultInstance()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getHeadurl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->headurl_:Ljava/lang/Object;

    .line 2433
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->onChanged()V

    .line 2434
    return-object p0
.end method

.method public clearHeight()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;
    .locals 2

    .prologue
    .line 2641
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 2642
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getDefaultInstance()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getHeight()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->height_:Ljava/lang/Object;

    .line 2643
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->onChanged()V

    .line 2644
    return-object p0
.end method

.method public clearId()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;
    .locals 2

    .prologue
    .line 2019
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 2020
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->id_:J

    .line 2021
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->onChanged()V

    .line 2022
    return-object p0
.end method

.method public clearLevel()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;
    .locals 2

    .prologue
    .line 2840
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    const v1, -0x1000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 2841
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->level_:I

    .line 2842
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->onChanged()V

    .line 2843
    return-object p0
.end method

.method public clearLevelname()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;
    .locals 2

    .prologue
    .line 2876
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    const v1, -0x2000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 2877
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getDefaultInstance()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getLevelname()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->levelname_:Ljava/lang/Object;

    .line 2878
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->onChanged()V

    .line 2879
    return-object p0
.end method

.method public clearLikedNum()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;
    .locals 1

    .prologue
    .line 3091
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField1_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField1_:I

    .line 3092
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->likedNum_:I

    .line 3093
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->onChanged()V

    .line 3094
    return-object p0
.end method

.method public clearLikesNum()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;
    .locals 1

    .prologue
    .line 3116
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField1_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField1_:I

    .line 3117
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->likesNum_:I

    .line 3118
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->onChanged()V

    .line 3119
    return-object p0
.end method

.method public clearMobile()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;
    .locals 2

    .prologue
    .line 2599
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 2600
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getDefaultInstance()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getMobile()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->mobile_:Ljava/lang/Object;

    .line 2601
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->onChanged()V

    .line 2602
    return-object p0
.end method

.method public clearMood()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;
    .locals 2

    .prologue
    .line 3035
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    const v1, -0x40000001    # -1.9999999f

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 3036
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getDefaultInstance()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getMood()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->mood_:Ljava/lang/Object;

    .line 3037
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->onChanged()V

    .line 3038
    return-object p0
.end method

.method public clearNickname()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;
    .locals 1

    .prologue
    .line 2122
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 2123
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getDefaultInstance()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getNickname()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->nickname_:Ljava/lang/Object;

    .line 2124
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->onChanged()V

    .line 2125
    return-object p0
.end method

.method public clearRealname()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;
    .locals 1

    .prologue
    .line 2164
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 2165
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getDefaultInstance()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getRealname()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->realname_:Ljava/lang/Object;

    .line 2166
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->onChanged()V

    .line 2167
    return-object p0
.end method

.method public clearRegtime()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;
    .locals 2

    .prologue
    .line 2907
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    const v1, -0x4000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 2908
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->regtime_:I

    .line 2909
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->onChanged()V

    .line 2910
    return-object p0
.end method

.method public clearShareNum()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;
    .locals 2

    .prologue
    .line 3066
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 3067
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->shareNum_:I

    .line 3068
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->onChanged()V

    .line 3069
    return-object p0
.end method

.method public clearStatus()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;
    .locals 1

    .prologue
    .line 2044
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 2045
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->status_:I

    .line 2046
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->onChanged()V

    .line 2047
    return-object p0
.end method

.method public clearTelphone()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;
    .locals 2

    .prologue
    .line 2557
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 2558
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getDefaultInstance()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getTelphone()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->telphone_:Ljava/lang/Object;

    .line 2559
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->onChanged()V

    .line 2560
    return-object p0
.end method

.method public clearUsername()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;
    .locals 1

    .prologue
    .line 2080
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 2081
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getDefaultInstance()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getUsername()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->username_:Ljava/lang/Object;

    .line 2082
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->onChanged()V

    .line 2083
    return-object p0
.end method

.method public clearWeight()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;
    .locals 2

    .prologue
    .line 2683
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    const v1, -0x100001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 2684
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getDefaultInstance()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getWeight()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->weight_:Ljava/lang/Object;

    .line 2685
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->onChanged()V

    .line 2686
    return-object p0
.end method

.method public clearZodiac()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;
    .locals 2

    .prologue
    .line 2515
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 2516
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getDefaultInstance()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getZodiac()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->zodiac_:Ljava/lang/Object;

    .line 2517
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->onChanged()V

    .line 2518
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1392
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->clone()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1392
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->clone()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1392
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->clone()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1392
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->clone()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1392
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->clone()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;
    .locals 2

    .prologue
    .line 1497
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->create()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;

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
    .line 1392
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->clone()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2787
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->address_:Ljava/lang/Object;

    .line 2788
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2789
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2791
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->address_:Ljava/lang/Object;

    .line 2794
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
    .line 2309
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->age_:I

    return v0
.end method

.method public getBackground()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2971
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->background_:Ljava/lang/Object;

    .line 2972
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2973
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2975
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->background_:Ljava/lang/Object;

    .line 2978
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

.method public getBgType()I
    .locals 1

    .prologue
    .line 2946
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bgType_:I

    return v0
.end method

.method public getBirthday()I
    .locals 1

    .prologue
    .line 2384
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->birthday_:I

    return v0
.end method

.method public getBirthmonth()I
    .locals 1

    .prologue
    .line 2359
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->birthmonth_:I

    return v0
.end method

.method public getBirthyear()I
    .locals 1

    .prologue
    .line 2334
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->birthyear_:I

    return v0
.end method

.method public getBloodtype()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2703
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bloodtype_:Ljava/lang/Object;

    .line 2704
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2705
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2707
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bloodtype_:Ljava/lang/Object;

    .line 2710
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

.method public getCity()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2745
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->city_:Ljava/lang/Object;

    .line 2746
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2747
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2749
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->city_:Ljava/lang/Object;

    .line 2752
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
    .line 2451
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->constellation_:Ljava/lang/Object;

    .line 2452
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2453
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2455
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->constellation_:Ljava/lang/Object;

    .line 2458
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

.method public getCredits()I
    .locals 1

    .prologue
    .line 2259
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->credits_:I

    return v0
.end method

.method public getDateline()I
    .locals 1

    .prologue
    .line 2921
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->dateline_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1392
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1392
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;
    .locals 1

    .prologue
    .line 1506
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getDefaultInstance()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1501
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getFollowed()I
    .locals 1

    .prologue
    .line 2184
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->followed_:I

    return v0
.end method

.method public getFollower()I
    .locals 1

    .prologue
    .line 2234
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->follower_:I

    return v0
.end method

.method public getFollowing()I
    .locals 1

    .prologue
    .line 2209
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->following_:I

    return v0
.end method

.method public getGender()I
    .locals 1

    .prologue
    .line 2284
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->gender_:I

    return v0
.end method

.method public getHeadurl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2409
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->headurl_:Ljava/lang/Object;

    .line 2410
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2411
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2413
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->headurl_:Ljava/lang/Object;

    .line 2416
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

.method public getHeight()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2619
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->height_:Ljava/lang/Object;

    .line 2620
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2621
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2623
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->height_:Ljava/lang/Object;

    .line 2626
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

.method public getId()J
    .locals 2

    .prologue
    .line 2008
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->id_:J

    return-wide v0
.end method

.method public getLevel()I
    .locals 1

    .prologue
    .line 2829
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->level_:I

    return v0
.end method

.method public getLevelname()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2854
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->levelname_:Ljava/lang/Object;

    .line 2855
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2856
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2858
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->levelname_:Ljava/lang/Object;

    .line 2861
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

.method public getLikedNum()I
    .locals 1

    .prologue
    .line 3080
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->likedNum_:I

    return v0
.end method

.method public getLikesNum()I
    .locals 1

    .prologue
    .line 3105
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->likesNum_:I

    return v0
.end method

.method public getMobile()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2577
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->mobile_:Ljava/lang/Object;

    .line 2578
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2579
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2581
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->mobile_:Ljava/lang/Object;

    .line 2584
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

.method public getMood()Ljava/lang/String;
    .locals 3

    .prologue
    .line 3013
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->mood_:Ljava/lang/Object;

    .line 3014
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 3015
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 3017
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->mood_:Ljava/lang/Object;

    .line 3020
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

.method public getNickname()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2100
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->nickname_:Ljava/lang/Object;

    .line 2101
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2102
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2104
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->nickname_:Ljava/lang/Object;

    .line 2107
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

.method public getRealname()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2142
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->realname_:Ljava/lang/Object;

    .line 2143
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2144
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2146
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->realname_:Ljava/lang/Object;

    .line 2149
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

.method public getRegtime()I
    .locals 1

    .prologue
    .line 2896
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->regtime_:I

    return v0
.end method

.method public getShareNum()I
    .locals 1

    .prologue
    .line 3055
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->shareNum_:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 2033
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->status_:I

    return v0
.end method

.method public getTelphone()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2535
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->telphone_:Ljava/lang/Object;

    .line 2536
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2537
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2539
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->telphone_:Ljava/lang/Object;

    .line 2542
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

.method public getUsername()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2058
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->username_:Ljava/lang/Object;

    .line 2059
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2060
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2062
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->username_:Ljava/lang/Object;

    .line 2065
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

.method public getWeight()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2661
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->weight_:Ljava/lang/Object;

    .line 2662
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2663
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2665
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->weight_:Ljava/lang/Object;

    .line 2668
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

.method public getZodiac()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2493
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->zodiac_:Ljava/lang/Object;

    .line 2494
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2495
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2497
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->zodiac_:Ljava/lang/Object;

    .line 2500
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
    const/high16 v1, 0x800000

    .line 2783
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    and-int/2addr v0, v1

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
    .line 2305
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

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

.method public hasBackground()Z
    .locals 2

    .prologue
    const/high16 v1, 0x20000000

    .line 2967
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasBgType()Z
    .locals 2

    .prologue
    const/high16 v1, 0x10000000

    .line 2942
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasBirthday()Z
    .locals 2

    .prologue
    .line 2380
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

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

.method public hasBirthmonth()Z
    .locals 2

    .prologue
    .line 2355
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

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

.method public hasBirthyear()Z
    .locals 2

    .prologue
    .line 2330
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

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

.method public hasBloodtype()Z
    .locals 2

    .prologue
    const/high16 v1, 0x200000

    .line 2699
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCity()Z
    .locals 2

    .prologue
    const/high16 v1, 0x400000

    .line 2741
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    and-int/2addr v0, v1

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
    const v1, 0x8000

    .line 2447
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCredits()Z
    .locals 2

    .prologue
    .line 2255
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

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

.method public hasDateline()Z
    .locals 2

    .prologue
    const/high16 v1, 0x8000000

    .line 2917
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    and-int/2addr v0, v1

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
    .line 2180
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

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

.method public hasFollower()Z
    .locals 2

    .prologue
    .line 2230
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

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

.method public hasFollowing()Z
    .locals 2

    .prologue
    .line 2205
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

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

.method public hasGender()Z
    .locals 2

    .prologue
    .line 2280
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

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

.method public hasHeadurl()Z
    .locals 2

    .prologue
    .line 2405
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

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

.method public hasHeight()Z
    .locals 2

    .prologue
    const/high16 v1, 0x80000

    .line 2615
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    and-int/2addr v0, v1

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

    .line 2004
    iget v1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLevel()Z
    .locals 2

    .prologue
    const/high16 v1, 0x1000000

    .line 2825
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLevelname()Z
    .locals 2

    .prologue
    const/high16 v1, 0x2000000

    .line 2850
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLikedNum()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 3076
    iget v1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField1_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLikesNum()Z
    .locals 2

    .prologue
    .line 3101
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField1_:I

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

.method public hasMobile()Z
    .locals 2

    .prologue
    const/high16 v1, 0x40000

    .line 2573
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMood()Z
    .locals 2

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    .line 3009
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNickname()Z
    .locals 2

    .prologue
    .line 2096
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

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

.method public hasRealname()Z
    .locals 2

    .prologue
    .line 2138
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

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

.method public hasRegtime()Z
    .locals 2

    .prologue
    const/high16 v1, 0x4000000

    .line 2892
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasShareNum()Z
    .locals 2

    .prologue
    const/high16 v1, -0x80000000

    .line 3051
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStatus()Z
    .locals 2

    .prologue
    .line 2029
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

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

.method public hasTelphone()Z
    .locals 2

    .prologue
    const/high16 v1, 0x20000

    .line 2531
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    and-int/2addr v0, v1

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
    .line 2054
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

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

.method public hasWeight()Z
    .locals 2

    .prologue
    const/high16 v1, 0x100000

    .line 2657
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasZodiac()Z
    .locals 2

    .prologue
    const/high16 v1, 0x10000

    .line 2489
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

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
    .line 1400
    # getter for: Lcom/oppo/tribune/protobuf/UserInfoProto;->internal_static_protobuf_pb_user_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserInfoProto;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1798
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
    .line 1392
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 1392
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;

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
    .line 1392
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;

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
    .line 1392
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 1392
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;

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
    .line 1392
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1805
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v1

    .line 1808
    .local v1, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 1809
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1815
    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1817
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 1818
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->onChanged()V

    .line 1819
    :goto_1
    return-object p0

    .line 1811
    :sswitch_0
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 1812
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->onChanged()V

    goto :goto_1

    .line 1824
    :sswitch_1
    iget v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 1825
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->id_:J

    goto :goto_0

    .line 1829
    :sswitch_2
    iget v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 1830
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->status_:I

    goto :goto_0

    .line 1834
    :sswitch_3
    iget v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 1835
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->username_:Ljava/lang/Object;

    goto :goto_0

    .line 1839
    :sswitch_4
    iget v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 1840
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->nickname_:Ljava/lang/Object;

    goto :goto_0

    .line 1844
    :sswitch_5
    iget v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 1845
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->realname_:Ljava/lang/Object;

    goto :goto_0

    .line 1849
    :sswitch_6
    iget v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 1850
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->followed_:I

    goto :goto_0

    .line 1854
    :sswitch_7
    iget v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x40

    iput v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 1855
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->following_:I

    goto :goto_0

    .line 1859
    :sswitch_8
    iget v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x80

    iput v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 1860
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->follower_:I

    goto/16 :goto_0

    .line 1864
    :sswitch_9
    iget v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x100

    iput v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 1865
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->credits_:I

    goto/16 :goto_0

    .line 1869
    :sswitch_a
    iget v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x200

    iput v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 1870
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->gender_:I

    goto/16 :goto_0

    .line 1874
    :sswitch_b
    iget v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x400

    iput v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 1875
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->age_:I

    goto/16 :goto_0

    .line 1879
    :sswitch_c
    iget v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x800

    iput v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 1880
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->birthyear_:I

    goto/16 :goto_0

    .line 1884
    :sswitch_d
    iget v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x1000

    iput v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 1885
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->birthmonth_:I

    goto/16 :goto_0

    .line 1889
    :sswitch_e
    iget v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x2000

    iput v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 1890
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->birthday_:I

    goto/16 :goto_0

    .line 1894
    :sswitch_f
    iget v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x4000

    iput v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 1895
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->headurl_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 1899
    :sswitch_10
    iget v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    const v3, 0x8000

    or-int/2addr v2, v3

    iput v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 1900
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->constellation_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 1904
    :sswitch_11
    iget v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    const/high16 v3, 0x10000

    or-int/2addr v2, v3

    iput v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 1905
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->zodiac_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 1909
    :sswitch_12
    iget v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    const/high16 v3, 0x20000

    or-int/2addr v2, v3

    iput v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 1910
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->telphone_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 1914
    :sswitch_13
    iget v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    const/high16 v3, 0x40000

    or-int/2addr v2, v3

    iput v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 1915
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->mobile_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 1919
    :sswitch_14
    iget v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    const/high16 v3, 0x80000

    or-int/2addr v2, v3

    iput v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 1920
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->height_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 1924
    :sswitch_15
    iget v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    const/high16 v3, 0x100000

    or-int/2addr v2, v3

    iput v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 1925
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->weight_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 1929
    :sswitch_16
    iget v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    const/high16 v3, 0x200000

    or-int/2addr v2, v3

    iput v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 1930
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bloodtype_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 1934
    :sswitch_17
    iget v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    const/high16 v3, 0x400000

    or-int/2addr v2, v3

    iput v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 1935
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->city_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 1939
    :sswitch_18
    iget v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    const/high16 v3, 0x800000

    or-int/2addr v2, v3

    iput v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 1940
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->address_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 1944
    :sswitch_19
    iget v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    const/high16 v3, 0x1000000

    or-int/2addr v2, v3

    iput v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 1945
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->level_:I

    goto/16 :goto_0

    .line 1949
    :sswitch_1a
    iget v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    const/high16 v3, 0x2000000

    or-int/2addr v2, v3

    iput v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 1950
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->levelname_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 1954
    :sswitch_1b
    iget v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    const/high16 v3, 0x4000000

    or-int/2addr v2, v3

    iput v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 1955
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->regtime_:I

    goto/16 :goto_0

    .line 1959
    :sswitch_1c
    iget v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    const/high16 v3, 0x8000000

    or-int/2addr v2, v3

    iput v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 1960
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->dateline_:I

    goto/16 :goto_0

    .line 1964
    :sswitch_1d
    iget v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    const/high16 v3, 0x10000000

    or-int/2addr v2, v3

    iput v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 1965
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bgType_:I

    goto/16 :goto_0

    .line 1969
    :sswitch_1e
    iget v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    const/high16 v3, 0x20000000

    or-int/2addr v2, v3

    iput v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 1970
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->background_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 1974
    :sswitch_1f
    iget v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    const/high16 v3, 0x40000000    # 2.0f

    or-int/2addr v2, v3

    iput v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 1975
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->mood_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 1979
    :sswitch_20
    iget v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    const/high16 v3, -0x80000000

    or-int/2addr v2, v3

    iput v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 1980
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->shareNum_:I

    goto/16 :goto_0

    .line 1984
    :sswitch_21
    iget v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField1_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField1_:I

    .line 1985
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->likedNum_:I

    goto/16 :goto_0

    .line 1989
    :sswitch_22
    iget v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField1_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField1_:I

    .line 1990
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->likesNum_:I

    goto/16 :goto_0

    .line 1809
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
        0x50 -> :sswitch_a
        0x58 -> :sswitch_b
        0x60 -> :sswitch_c
        0x68 -> :sswitch_d
        0x70 -> :sswitch_e
        0x7a -> :sswitch_f
        0x82 -> :sswitch_10
        0x8a -> :sswitch_11
        0x92 -> :sswitch_12
        0x9a -> :sswitch_13
        0xa2 -> :sswitch_14
        0xaa -> :sswitch_15
        0xb2 -> :sswitch_16
        0xba -> :sswitch_17
        0xc2 -> :sswitch_18
        0xc8 -> :sswitch_19
        0xd2 -> :sswitch_1a
        0xd8 -> :sswitch_1b
        0xe0 -> :sswitch_1c
        0xe8 -> :sswitch_1d
        0xf2 -> :sswitch_1e
        0xfa -> :sswitch_1f
        0x148 -> :sswitch_20
        0x150 -> :sswitch_21
        0x158 -> :sswitch_22
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 1678
    instance-of v0, p1, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    if-eqz v0, :cond_0

    .line 1679
    check-cast p1, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;

    move-result-object p0

    .line 1682
    .end local p0    # "this":Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;
    :goto_0
    return-object p0

    .line 1681
    .restart local p0    # "this":Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;
    .locals 2
    .param p1, "other"    # Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    .prologue
    .line 1688
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getDefaultInstance()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 1794
    :goto_0
    return-object p0

    .line 1691
    :cond_0
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->hasId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1692
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->setId(J)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;

    .line 1694
    :cond_1
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1695
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getStatus()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->setStatus(I)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;

    .line 1697
    :cond_2
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->hasUsername()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1698
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->setUsername(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;

    .line 1700
    :cond_3
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->hasNickname()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1701
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getNickname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->setNickname(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;

    .line 1703
    :cond_4
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->hasRealname()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1704
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getRealname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->setRealname(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;

    .line 1706
    :cond_5
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->hasFollowed()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1707
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getFollowed()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->setFollowed(I)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;

    .line 1709
    :cond_6
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->hasFollowing()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1710
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getFollowing()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->setFollowing(I)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;

    .line 1712
    :cond_7
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->hasFollower()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1713
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getFollower()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->setFollower(I)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;

    .line 1715
    :cond_8
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->hasCredits()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1716
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getCredits()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->setCredits(I)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;

    .line 1718
    :cond_9
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->hasGender()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1719
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getGender()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->setGender(I)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;

    .line 1721
    :cond_a
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->hasAge()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1722
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getAge()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->setAge(I)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;

    .line 1724
    :cond_b
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->hasBirthyear()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1725
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getBirthyear()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->setBirthyear(I)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;

    .line 1727
    :cond_c
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->hasBirthmonth()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1728
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getBirthmonth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->setBirthmonth(I)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;

    .line 1730
    :cond_d
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->hasBirthday()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1731
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getBirthday()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->setBirthday(I)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;

    .line 1733
    :cond_e
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->hasHeadurl()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1734
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getHeadurl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->setHeadurl(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;

    .line 1736
    :cond_f
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->hasConstellation()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1737
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getConstellation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->setConstellation(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;

    .line 1739
    :cond_10
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->hasZodiac()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1740
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getZodiac()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->setZodiac(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;

    .line 1742
    :cond_11
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->hasTelphone()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1743
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getTelphone()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->setTelphone(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;

    .line 1745
    :cond_12
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->hasMobile()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1746
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getMobile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->setMobile(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;

    .line 1748
    :cond_13
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->hasHeight()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1749
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getHeight()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->setHeight(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;

    .line 1751
    :cond_14
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->hasWeight()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1752
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getWeight()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->setWeight(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;

    .line 1754
    :cond_15
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->hasBloodtype()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1755
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getBloodtype()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->setBloodtype(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;

    .line 1757
    :cond_16
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->hasCity()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1758
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getCity()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->setCity(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;

    .line 1760
    :cond_17
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->hasAddress()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1761
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->setAddress(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;

    .line 1763
    :cond_18
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->hasLevel()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1764
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getLevel()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->setLevel(I)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;

    .line 1766
    :cond_19
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->hasLevelname()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1767
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getLevelname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->setLevelname(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;

    .line 1769
    :cond_1a
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->hasRegtime()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1770
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getRegtime()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->setRegtime(I)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;

    .line 1772
    :cond_1b
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->hasDateline()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1773
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getDateline()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->setDateline(I)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;

    .line 1775
    :cond_1c
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->hasBgType()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1776
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getBgType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->setBgType(I)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;

    .line 1778
    :cond_1d
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->hasBackground()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1779
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getBackground()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->setBackground(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;

    .line 1781
    :cond_1e
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->hasMood()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1782
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getMood()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->setMood(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;

    .line 1784
    :cond_1f
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->hasShareNum()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1785
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getShareNum()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->setShareNum(I)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;

    .line 1787
    :cond_20
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->hasLikedNum()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1788
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getLikedNum()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->setLikedNum(I)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;

    .line 1790
    :cond_21
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->hasLikesNum()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1791
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getLikesNum()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->setLikesNum(I)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;

    .line 1793
    :cond_22
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto/16 :goto_0
.end method

.method public setAddress(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2799
    if-nez p1, :cond_0

    .line 2800
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2802
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    const/high16 v1, 0x800000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 2803
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->address_:Ljava/lang/Object;

    .line 2804
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->onChanged()V

    .line 2805
    return-object p0
.end method

.method setAddress(Lcom/google/protobuf/ByteString;)V
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 2816
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    const/high16 v1, 0x800000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 2817
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->address_:Ljava/lang/Object;

    .line 2818
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->onChanged()V

    .line 2819
    return-void
.end method

.method public setAge(I)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2313
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 2314
    iput p1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->age_:I

    .line 2315
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->onChanged()V

    .line 2316
    return-object p0
.end method

.method public setBackground(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2983
    if-nez p1, :cond_0

    .line 2984
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2986
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    const/high16 v1, 0x20000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 2987
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->background_:Ljava/lang/Object;

    .line 2988
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->onChanged()V

    .line 2989
    return-object p0
.end method

.method setBackground(Lcom/google/protobuf/ByteString;)V
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 3000
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    const/high16 v1, 0x20000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 3001
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->background_:Ljava/lang/Object;

    .line 3002
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->onChanged()V

    .line 3003
    return-void
.end method

.method public setBgType(I)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 2950
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    const/high16 v1, 0x10000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 2951
    iput p1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bgType_:I

    .line 2952
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->onChanged()V

    .line 2953
    return-object p0
.end method

.method public setBirthday(I)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2388
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 2389
    iput p1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->birthday_:I

    .line 2390
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->onChanged()V

    .line 2391
    return-object p0
.end method

.method public setBirthmonth(I)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2363
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 2364
    iput p1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->birthmonth_:I

    .line 2365
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->onChanged()V

    .line 2366
    return-object p0
.end method

.method public setBirthyear(I)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2338
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 2339
    iput p1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->birthyear_:I

    .line 2340
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->onChanged()V

    .line 2341
    return-object p0
.end method

.method public setBloodtype(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2715
    if-nez p1, :cond_0

    .line 2716
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2718
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 2719
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bloodtype_:Ljava/lang/Object;

    .line 2720
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->onChanged()V

    .line 2721
    return-object p0
.end method

.method setBloodtype(Lcom/google/protobuf/ByteString;)V
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 2732
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 2733
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bloodtype_:Ljava/lang/Object;

    .line 2734
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->onChanged()V

    .line 2735
    return-void
.end method

.method public setCity(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2757
    if-nez p1, :cond_0

    .line 2758
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2760
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    const/high16 v1, 0x400000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 2761
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->city_:Ljava/lang/Object;

    .line 2762
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->onChanged()V

    .line 2763
    return-object p0
.end method

.method setCity(Lcom/google/protobuf/ByteString;)V
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 2774
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    const/high16 v1, 0x400000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 2775
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->city_:Ljava/lang/Object;

    .line 2776
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->onChanged()V

    .line 2777
    return-void
.end method

.method public setConstellation(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2463
    if-nez p1, :cond_0

    .line 2464
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2466
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 2467
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->constellation_:Ljava/lang/Object;

    .line 2468
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->onChanged()V

    .line 2469
    return-object p0
.end method

.method setConstellation(Lcom/google/protobuf/ByteString;)V
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 2480
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 2481
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->constellation_:Ljava/lang/Object;

    .line 2482
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->onChanged()V

    .line 2483
    return-void
.end method

.method public setCredits(I)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2263
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 2264
    iput p1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->credits_:I

    .line 2265
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->onChanged()V

    .line 2266
    return-object p0
.end method

.method public setDateline(I)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 2925
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    const/high16 v1, 0x8000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 2926
    iput p1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->dateline_:I

    .line 2927
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->onChanged()V

    .line 2928
    return-object p0
.end method

.method public setFollowed(I)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2188
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 2189
    iput p1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->followed_:I

    .line 2190
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->onChanged()V

    .line 2191
    return-object p0
.end method

.method public setFollower(I)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2238
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 2239
    iput p1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->follower_:I

    .line 2240
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->onChanged()V

    .line 2241
    return-object p0
.end method

.method public setFollowing(I)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2213
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 2214
    iput p1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->following_:I

    .line 2215
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->onChanged()V

    .line 2216
    return-object p0
.end method

.method public setGender(I)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2288
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 2289
    iput p1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->gender_:I

    .line 2290
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->onChanged()V

    .line 2291
    return-object p0
.end method

.method public setHeadurl(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2421
    if-nez p1, :cond_0

    .line 2422
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2424
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 2425
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->headurl_:Ljava/lang/Object;

    .line 2426
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->onChanged()V

    .line 2427
    return-object p0
.end method

.method setHeadurl(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 2438
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 2439
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->headurl_:Ljava/lang/Object;

    .line 2440
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->onChanged()V

    .line 2441
    return-void
.end method

.method public setHeight(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2631
    if-nez p1, :cond_0

    .line 2632
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2634
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 2635
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->height_:Ljava/lang/Object;

    .line 2636
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->onChanged()V

    .line 2637
    return-object p0
.end method

.method setHeight(Lcom/google/protobuf/ByteString;)V
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 2648
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 2649
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->height_:Ljava/lang/Object;

    .line 2650
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->onChanged()V

    .line 2651
    return-void
.end method

.method public setId(J)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 2012
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 2013
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->id_:J

    .line 2014
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->onChanged()V

    .line 2015
    return-object p0
.end method

.method public setLevel(I)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 2833
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 2834
    iput p1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->level_:I

    .line 2835
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->onChanged()V

    .line 2836
    return-object p0
.end method

.method public setLevelname(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2866
    if-nez p1, :cond_0

    .line 2867
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2869
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    const/high16 v1, 0x2000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 2870
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->levelname_:Ljava/lang/Object;

    .line 2871
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->onChanged()V

    .line 2872
    return-object p0
.end method

.method setLevelname(Lcom/google/protobuf/ByteString;)V
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 2883
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    const/high16 v1, 0x2000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 2884
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->levelname_:Ljava/lang/Object;

    .line 2885
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->onChanged()V

    .line 2886
    return-void
.end method

.method public setLikedNum(I)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3084
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField1_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField1_:I

    .line 3085
    iput p1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->likedNum_:I

    .line 3086
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->onChanged()V

    .line 3087
    return-object p0
.end method

.method public setLikesNum(I)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3109
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField1_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField1_:I

    .line 3110
    iput p1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->likesNum_:I

    .line 3111
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->onChanged()V

    .line 3112
    return-object p0
.end method

.method public setMobile(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2589
    if-nez p1, :cond_0

    .line 2590
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2592
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 2593
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->mobile_:Ljava/lang/Object;

    .line 2594
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->onChanged()V

    .line 2595
    return-object p0
.end method

.method setMobile(Lcom/google/protobuf/ByteString;)V
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 2606
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 2607
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->mobile_:Ljava/lang/Object;

    .line 2608
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->onChanged()V

    .line 2609
    return-void
.end method

.method public setMood(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3025
    if-nez p1, :cond_0

    .line 3026
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3028
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 3029
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->mood_:Ljava/lang/Object;

    .line 3030
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->onChanged()V

    .line 3031
    return-object p0
.end method

.method setMood(Lcom/google/protobuf/ByteString;)V
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 3042
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 3043
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->mood_:Ljava/lang/Object;

    .line 3044
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->onChanged()V

    .line 3045
    return-void
.end method

.method public setNickname(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2112
    if-nez p1, :cond_0

    .line 2113
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2115
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 2116
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->nickname_:Ljava/lang/Object;

    .line 2117
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->onChanged()V

    .line 2118
    return-object p0
.end method

.method setNickname(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 2129
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 2130
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->nickname_:Ljava/lang/Object;

    .line 2131
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->onChanged()V

    .line 2132
    return-void
.end method

.method public setRealname(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2154
    if-nez p1, :cond_0

    .line 2155
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2157
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 2158
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->realname_:Ljava/lang/Object;

    .line 2159
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->onChanged()V

    .line 2160
    return-object p0
.end method

.method setRealname(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 2171
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 2172
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->realname_:Ljava/lang/Object;

    .line 2173
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->onChanged()V

    .line 2174
    return-void
.end method

.method public setRegtime(I)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 2900
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    const/high16 v1, 0x4000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 2901
    iput p1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->regtime_:I

    .line 2902
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->onChanged()V

    .line 2903
    return-object p0
.end method

.method public setShareNum(I)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 3059
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 3060
    iput p1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->shareNum_:I

    .line 3061
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->onChanged()V

    .line 3062
    return-object p0
.end method

.method public setStatus(I)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2037
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 2038
    iput p1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->status_:I

    .line 2039
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->onChanged()V

    .line 2040
    return-object p0
.end method

.method public setTelphone(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2547
    if-nez p1, :cond_0

    .line 2548
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2550
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 2551
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->telphone_:Ljava/lang/Object;

    .line 2552
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->onChanged()V

    .line 2553
    return-object p0
.end method

.method setTelphone(Lcom/google/protobuf/ByteString;)V
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 2564
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 2565
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->telphone_:Ljava/lang/Object;

    .line 2566
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->onChanged()V

    .line 2567
    return-void
.end method

.method public setUsername(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2070
    if-nez p1, :cond_0

    .line 2071
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2073
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 2074
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->username_:Ljava/lang/Object;

    .line 2075
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->onChanged()V

    .line 2076
    return-object p0
.end method

.method setUsername(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 2087
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 2088
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->username_:Ljava/lang/Object;

    .line 2089
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->onChanged()V

    .line 2090
    return-void
.end method

.method public setWeight(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2673
    if-nez p1, :cond_0

    .line 2674
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2676
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 2677
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->weight_:Ljava/lang/Object;

    .line 2678
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->onChanged()V

    .line 2679
    return-object p0
.end method

.method setWeight(Lcom/google/protobuf/ByteString;)V
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 2690
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 2691
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->weight_:Ljava/lang/Object;

    .line 2692
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->onChanged()V

    .line 2693
    return-void
.end method

.method public setZodiac(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2505
    if-nez p1, :cond_0

    .line 2506
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2508
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 2509
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->zodiac_:Ljava/lang/Object;

    .line 2510
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->onChanged()V

    .line 2511
    return-object p0
.end method

.method setZodiac(Lcom/google/protobuf/ByteString;)V
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 2522
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->bitField0_:I

    .line 2523
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->zodiac_:Ljava/lang/Object;

    .line 2524
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->onChanged()V

    .line 2525
    return-void
.end method
