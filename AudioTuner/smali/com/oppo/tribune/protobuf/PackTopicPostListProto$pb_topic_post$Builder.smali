.class public final Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "PackTopicPostListProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_postOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;",
        ">;",
        "Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_postOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private id_:I

.field private title_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 284
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 461
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->title_:Ljava/lang/Object;

    .line 285
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->maybeForceBuilderInitialization()V

    .line 286
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 289
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 461
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->title_:Ljava/lang/Object;

    .line 290
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->maybeForceBuilderInitialization()V

    .line 291
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/PackTopicPostListProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/PackTopicPostListProto$1;

    .prologue
    .line 270
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;)Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 270
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;
    .locals 1

    .prologue
    .line 270
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->create()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 335
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;

    move-result-object v0

    .line 336
    .local v0, "result":Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 337
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 340
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;
    .locals 1

    .prologue
    .line 299
    new-instance v0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 275
    # getter for: Lcom/oppo/tribune/protobuf/PackTopicPostListProto;->internal_static_pb_topic_post_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 294
    # getter for: Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->build()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->build()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;
    .locals 2

    .prologue
    .line 326
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;

    move-result-object v0

    .line 327
    .local v0, "result":Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 328
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 330
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;
    .locals 5

    .prologue
    .line 344
    new-instance v1, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;-><init>(Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;Lcom/oppo/tribune/protobuf/PackTopicPostListProto$1;)V

    .line 346
    .local v1, "result":Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->bitField0_:I

    .line 347
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 348
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 349
    or-int/lit8 v2, v2, 0x1

    .line 351
    :cond_0
    iget v3, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->id_:I

    # setter for: Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;->id_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;->access$702(Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;I)I

    .line 352
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 353
    or-int/lit8 v2, v2, 0x2

    .line 355
    :cond_1
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->title_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;->title_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;->access$802(Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    # setter for: Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;->bitField0_:I
    invoke-static {v1, v2}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;->access$902(Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;I)I

    .line 357
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->onBuilt()V

    .line 358
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->clear()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->clear()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->clear()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->clear()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;
    .locals 1

    .prologue
    .line 303
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 304
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->id_:I

    .line 305
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->bitField0_:I

    .line 306
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->title_:Ljava/lang/Object;

    .line 307
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->bitField0_:I

    .line 308
    return-object p0
.end method

.method public clearId()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;
    .locals 1

    .prologue
    .line 454
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->bitField0_:I

    .line 455
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->id_:I

    .line 456
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->onChanged()V

    .line 457
    return-object p0
.end method

.method public clearTitle()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;
    .locals 1

    .prologue
    .line 490
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->bitField0_:I

    .line 491
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;->getDefaultInstance()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->title_:Ljava/lang/Object;

    .line 492
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->onChanged()V

    .line 493
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->clone()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->clone()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->clone()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->clone()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->clone()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;
    .locals 2

    .prologue
    .line 312
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->create()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;)Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;

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
    .line 270
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->clone()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;
    .locals 1

    .prologue
    .line 321
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;->getDefaultInstance()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 316
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 443
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->id_:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 3

    .prologue
    .line 468
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->title_:Ljava/lang/Object;

    .line 469
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 470
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 472
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->title_:Ljava/lang/Object;

    .line 475
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

.method public hasId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 439
    iget v1, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTitle()Z
    .locals 2

    .prologue
    .line 464
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->bitField0_:I

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
    .line 279
    # getter for: Lcom/oppo/tribune/protobuf/PackTopicPostListProto;->internal_static_pb_topic_post_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 386
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->hasId()Z

    move-result v1

    if-nez v1, :cond_1

    .line 394
    :cond_0
    :goto_0
    return v0

    .line 390
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->hasTitle()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 394
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
    .line 270
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 270
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;

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
    .line 270
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;

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
    .line 270
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 270
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;

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
    .line 270
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 401
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v1

    .line 404
    .local v1, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 405
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 411
    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 413
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 414
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->onChanged()V

    .line 415
    :goto_1
    return-object p0

    .line 407
    :sswitch_0
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 408
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->onChanged()V

    goto :goto_1

    .line 420
    :sswitch_1
    iget v2, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->bitField0_:I

    .line 421
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->id_:I

    goto :goto_0

    .line 425
    :sswitch_2
    iget v2, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->bitField0_:I

    .line 426
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->title_:Ljava/lang/Object;

    goto :goto_0

    .line 405
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 362
    instance-of v0, p1, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;

    if-eqz v0, :cond_0

    .line 363
    check-cast p1, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;)Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;

    move-result-object p0

    .line 366
    .end local p0    # "this":Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;
    :goto_0
    return-object p0

    .line 365
    .restart local p0    # "this":Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;)Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;
    .locals 1
    .param p1, "other"    # Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;

    .prologue
    .line 372
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;->getDefaultInstance()Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 382
    :goto_0
    return-object p0

    .line 375
    :cond_0
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;->hasId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 376
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->setId(I)Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;

    .line 378
    :cond_1
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;->hasTitle()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 379
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->setTitle(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;

    .line 381
    :cond_2
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public setId(I)Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 447
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->bitField0_:I

    .line 448
    iput p1, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->id_:I

    .line 449
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->onChanged()V

    .line 450
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 480
    if-nez p1, :cond_0

    .line 481
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 483
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->bitField0_:I

    .line 484
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->title_:Ljava/lang/Object;

    .line 485
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->onChanged()V

    .line 486
    return-object p0
.end method

.method setTitle(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 497
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->bitField0_:I

    .line 498
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->title_:Ljava/lang/Object;

    .line 499
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post$Builder;->onChanged()V

    .line 500
    return-void
.end method
