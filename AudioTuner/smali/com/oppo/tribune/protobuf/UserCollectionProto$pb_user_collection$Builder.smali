.class public final Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "UserCollectionProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collectionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;",
        ">;",
        "Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collectionOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private configId_:J

.field private status_:I

.field private updateTime_:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 250
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 251
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->maybeForceBuilderInitialization()V

    .line 252
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 0
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 255
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 256
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->maybeForceBuilderInitialization()V

    .line 257
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/UserCollectionProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/UserCollectionProto$1;

    .prologue
    .line 236
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;)Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 236
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;
    .locals 1

    .prologue
    .line 236
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->create()Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 300
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;

    move-result-object v0

    .line 301
    .local v0, "result":Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 302
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 305
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;
    .locals 1

    .prologue
    .line 263
    new-instance v0, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 241
    # getter for: Lcom/oppo/tribune/protobuf/UserCollectionProto;->internal_static_protobuf_pb_user_collection_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserCollectionProto;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 259
    # getter for: Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->build()Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->build()Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;
    .locals 2

    .prologue
    .line 291
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;

    move-result-object v0

    .line 292
    .local v0, "result":Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 293
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 295
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;
    .locals 6

    .prologue
    .line 309
    new-instance v1, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;-><init>(Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;Lcom/oppo/tribune/protobuf/UserCollectionProto$1;)V

    .line 310
    .local v1, "result":Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->bitField0_:I

    .line 311
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 312
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 313
    or-int/lit8 v2, v2, 0x1

    .line 315
    :cond_0
    iget-wide v4, p0, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->configId_:J

    # setter for: Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;->configId_:J
    invoke-static {v1, v4, v5}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;->access$702(Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;J)J

    .line 316
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 317
    or-int/lit8 v2, v2, 0x2

    .line 319
    :cond_1
    iget v3, p0, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->status_:I

    # setter for: Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;->status_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;->access$802(Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;I)I

    .line 320
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 321
    or-int/lit8 v2, v2, 0x4

    .line 323
    :cond_2
    iget v3, p0, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->updateTime_:I

    # setter for: Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;->updateTime_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;->access$902(Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;I)I

    .line 324
    # setter for: Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;->bitField0_:I
    invoke-static {v1, v2}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;->access$1002(Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;I)I

    .line 325
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->onBuilt()V

    .line 326
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->clear()Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->clear()Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->clear()Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->clear()Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 267
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 268
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->configId_:J

    .line 269
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->bitField0_:I

    .line 270
    iput v2, p0, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->status_:I

    .line 271
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->bitField0_:I

    .line 272
    iput v2, p0, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->updateTime_:I

    .line 273
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->bitField0_:I

    .line 274
    return-object p0
.end method

.method public clearConfigId()Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;
    .locals 2

    .prologue
    .line 428
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->bitField0_:I

    .line 429
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->configId_:J

    .line 430
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->onChanged()V

    .line 431
    return-object p0
.end method

.method public clearStatus()Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;
    .locals 1

    .prologue
    .line 449
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->bitField0_:I

    .line 450
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->status_:I

    .line 451
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->onChanged()V

    .line 452
    return-object p0
.end method

.method public clearUpdateTime()Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;
    .locals 1

    .prologue
    .line 470
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->bitField0_:I

    .line 471
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->updateTime_:I

    .line 472
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->onChanged()V

    .line 473
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->clone()Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->clone()Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->clone()Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->clone()Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->clone()Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;
    .locals 2

    .prologue
    .line 278
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->create()Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;)Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;

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
    .line 236
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->clone()Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getConfigId()J
    .locals 2

    .prologue
    .line 419
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->configId_:J

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;
    .locals 1

    .prologue
    .line 287
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;->getDefaultInstance()Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 283
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 440
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->status_:I

    return v0
.end method

.method public getUpdateTime()I
    .locals 1

    .prologue
    .line 461
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->updateTime_:I

    return v0
.end method

.method public hasConfigId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 416
    iget v1, p0, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStatus()Z
    .locals 2

    .prologue
    .line 437
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->bitField0_:I

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

.method public hasUpdateTime()Z
    .locals 2

    .prologue
    .line 458
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->bitField0_:I

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
    .line 246
    # getter for: Lcom/oppo/tribune/protobuf/UserCollectionProto;->internal_static_protobuf_pb_user_collection_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserCollectionProto;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 354
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->hasConfigId()Z

    move-result v1

    if-nez v1, :cond_1

    .line 366
    :cond_0
    :goto_0
    return v0

    .line 358
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->hasStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 362
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->hasUpdateTime()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 366
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
    .line 236
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 236
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;

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
    .line 236
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;

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
    .line 236
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 236
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;

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
    .line 236
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 373
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v1

    .line 377
    .local v1, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 378
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 384
    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 386
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 387
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->onChanged()V

    .line 388
    :goto_1
    return-object p0

    .line 380
    :sswitch_0
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 381
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->onChanged()V

    goto :goto_1

    .line 393
    :sswitch_1
    iget v2, p0, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->bitField0_:I

    .line 394
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->configId_:J

    goto :goto_0

    .line 398
    :sswitch_2
    iget v2, p0, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->bitField0_:I

    .line 399
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->status_:I

    goto :goto_0

    .line 403
    :sswitch_3
    iget v2, p0, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->bitField0_:I

    .line 404
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->updateTime_:I

    goto :goto_0

    .line 378
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 330
    instance-of v0, p1, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;

    if-eqz v0, :cond_0

    .line 331
    check-cast p1, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;)Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;

    move-result-object p0

    .line 334
    .end local p0    # "this":Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;
    :goto_0
    return-object p0

    .line 333
    .restart local p0    # "this":Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;)Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;
    .locals 2
    .param p1, "other"    # Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;

    .prologue
    .line 339
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;->getDefaultInstance()Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 350
    :goto_0
    return-object p0

    .line 340
    :cond_0
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;->hasConfigId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 341
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;->getConfigId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->setConfigId(J)Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;

    .line 343
    :cond_1
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 344
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;->getStatus()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->setStatus(I)Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;

    .line 346
    :cond_2
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;->hasUpdateTime()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 347
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;->getUpdateTime()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->setUpdateTime(I)Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;

    .line 349
    :cond_3
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public setConfigId(J)Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 422
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->bitField0_:I

    .line 423
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->configId_:J

    .line 424
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->onChanged()V

    .line 425
    return-object p0
.end method

.method public setStatus(I)Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 443
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->bitField0_:I

    .line 444
    iput p1, p0, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->status_:I

    .line 445
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->onChanged()V

    .line 446
    return-object p0
.end method

.method public setUpdateTime(I)Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 464
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->bitField0_:I

    .line 465
    iput p1, p0, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->updateTime_:I

    .line 466
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection$Builder;->onChanged()V

    .line 467
    return-object p0
.end method
