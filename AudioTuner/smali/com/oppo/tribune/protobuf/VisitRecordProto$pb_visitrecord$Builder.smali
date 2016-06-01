.class public final Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "VisitRecordProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecordOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;",
        ">;",
        "Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecordOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private dayview_:I

.field private pageview_:I

.field private userlistBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;",
            "Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;",
            "Lcom/oppo/tribune/protobuf/UserListProto$pb_userlistOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private userlist_:Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 286
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 509
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->getDefaultInstance()Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->userlist_:Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;

    .line 287
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->maybeForceBuilderInitialization()V

    .line 288
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 291
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 509
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->getDefaultInstance()Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->userlist_:Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;

    .line 292
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->maybeForceBuilderInitialization()V

    .line 293
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/VisitRecordProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/VisitRecordProto$1;

    .prologue
    .line 272
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;)Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 272
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;
    .locals 1

    .prologue
    .line 272
    invoke-static {}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->create()Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 345
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;

    move-result-object v0

    .line 346
    .local v0, "result":Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 347
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 350
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;
    .locals 1

    .prologue
    .line 302
    new-instance v0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 277
    # getter for: Lcom/oppo/tribune/protobuf/VisitRecordProto;->internal_static_pb_visitrecord_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/VisitRecordProto;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getUserlistFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;",
            "Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;",
            "Lcom/oppo/tribune/protobuf/UserListProto$pb_userlistOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 599
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->userlistBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 600
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    iget-object v1, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->userlist_:Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;

    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->userlistBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    .line 602
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->userlist_:Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;

    .line 604
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->userlistBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 296
    # getter for: Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->getUserlistFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 299
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->build()Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->build()Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;
    .locals 2

    .prologue
    .line 336
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;

    move-result-object v0

    .line 337
    .local v0, "result":Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 338
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 340
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;
    .locals 5

    .prologue
    .line 354
    new-instance v1, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;-><init>(Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;Lcom/oppo/tribune/protobuf/VisitRecordProto$1;)V

    .line 356
    .local v1, "result":Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;
    iget v0, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->bitField0_:I

    .line 357
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 358
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 359
    or-int/lit8 v2, v2, 0x1

    .line 361
    :cond_0
    iget v3, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->pageview_:I

    # setter for: Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;->pageview_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;->access$702(Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;I)I

    .line 362
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 363
    or-int/lit8 v2, v2, 0x2

    .line 365
    :cond_1
    iget v3, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->dayview_:I

    # setter for: Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;->dayview_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;->access$802(Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;I)I

    .line 366
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 367
    or-int/lit8 v2, v2, 0x4

    .line 369
    :cond_2
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->userlistBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v3, :cond_3

    .line 370
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->userlist_:Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;

    # setter for: Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;->userlist_:Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;->access$902(Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;)Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;

    .line 374
    :goto_0
    # setter for: Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;->bitField0_:I
    invoke-static {v1, v2}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;->access$1002(Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;I)I

    .line 375
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->onBuilt()V

    .line 376
    return-object v1

    .line 372
    :cond_3
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->userlistBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v3

    check-cast v3, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;

    # setter for: Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;->userlist_:Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;->access$902(Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;)Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->clear()Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->clear()Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->clear()Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->clear()Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 306
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 307
    iput v1, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->pageview_:I

    .line 308
    iget v0, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->bitField0_:I

    .line 309
    iput v1, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->dayview_:I

    .line 310
    iget v0, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->bitField0_:I

    .line 311
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->userlistBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 312
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->getDefaultInstance()Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->userlist_:Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;

    .line 317
    :goto_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->bitField0_:I

    .line 318
    return-object p0

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->userlistBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearDayview()Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;
    .locals 1

    .prologue
    .line 502
    iget v0, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->bitField0_:I

    .line 503
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->dayview_:I

    .line 504
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->onChanged()V

    .line 505
    return-object p0
.end method

.method public clearPageview()Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;
    .locals 1

    .prologue
    .line 477
    iget v0, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->bitField0_:I

    .line 478
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->pageview_:I

    .line 479
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->onChanged()V

    .line 480
    return-object p0
.end method

.method public clearUserlist()Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->userlistBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 574
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->getDefaultInstance()Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->userlist_:Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;

    .line 576
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->onChanged()V

    .line 580
    :goto_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->bitField0_:I

    .line 581
    return-object p0

    .line 578
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->userlistBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->clone()Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->clone()Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->clone()Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->clone()Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->clone()Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;
    .locals 2

    .prologue
    .line 322
    invoke-static {}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->create()Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;)Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;

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
    .line 272
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->clone()Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDayview()I
    .locals 1

    .prologue
    .line 491
    iget v0, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->dayview_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;
    .locals 1

    .prologue
    .line 331
    invoke-static {}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;->getDefaultInstance()Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 326
    invoke-static {}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getPageview()I
    .locals 1

    .prologue
    .line 466
    iget v0, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->pageview_:I

    return v0
.end method

.method public getUserlist()Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->userlistBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->userlist_:Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;

    .line 521
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->userlistBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;

    goto :goto_0
.end method

.method public getUserlistBuilder()Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;
    .locals 1

    .prologue
    .line 585
    iget v0, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->bitField0_:I

    .line 586
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->onChanged()V

    .line 587
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->getUserlistFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;

    return-object v0
.end method

.method public getUserlistOrBuilder()Lcom/oppo/tribune/protobuf/UserListProto$pb_userlistOrBuilder;
    .locals 1

    .prologue
    .line 591
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->userlistBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 592
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->userlistBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlistOrBuilder;

    .line 594
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->userlist_:Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;

    goto :goto_0
.end method

.method public hasDayview()Z
    .locals 2

    .prologue
    .line 487
    iget v0, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->bitField0_:I

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

.method public hasPageview()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 462
    iget v1, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUserlist()Z
    .locals 2

    .prologue
    .line 514
    iget v0, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->bitField0_:I

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
    .line 281
    # getter for: Lcom/oppo/tribune/protobuf/VisitRecordProto;->internal_static_pb_visitrecord_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/VisitRecordProto;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 407
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
    .line 272
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 272
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;

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
    .line 272
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;

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
    .line 272
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 272
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;

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
    .line 272
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 414
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 417
    .local v2, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 418
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    .line 424
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 426
    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 427
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->onChanged()V

    .line 428
    :goto_1
    return-object p0

    .line 420
    :sswitch_0
    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 421
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->onChanged()V

    goto :goto_1

    .line 433
    :sswitch_1
    iget v3, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->bitField0_:I

    .line 434
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->pageview_:I

    goto :goto_0

    .line 438
    :sswitch_2
    iget v3, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->bitField0_:I

    .line 439
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->dayview_:I

    goto :goto_0

    .line 443
    :sswitch_3
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->newBuilder()Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;

    move-result-object v0

    .line 445
    .local v0, "subBuilder":Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->hasUserlist()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 446
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->getUserlist()Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;)Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;

    .line 448
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 449
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->setUserlist(Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;)Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;

    goto :goto_0

    .line 418
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 380
    instance-of v0, p1, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;

    if-eqz v0, :cond_0

    .line 381
    check-cast p1, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;)Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;

    move-result-object p0

    .line 384
    .end local p0    # "this":Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;
    :goto_0
    return-object p0

    .line 383
    .restart local p0    # "this":Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;)Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;
    .locals 1
    .param p1, "other"    # Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;

    .prologue
    .line 390
    invoke-static {}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;->getDefaultInstance()Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 403
    :goto_0
    return-object p0

    .line 393
    :cond_0
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;->hasPageview()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 394
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;->getPageview()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->setPageview(I)Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;

    .line 396
    :cond_1
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;->hasDayview()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 397
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;->getDayview()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->setDayview(I)Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;

    .line 399
    :cond_2
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;->hasUserlist()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 400
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;->getUserlist()Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->mergeUserlist(Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;)Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;

    .line 402
    :cond_3
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeUserlist(Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;)Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;
    .locals 2
    .param p1, "value"    # Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;

    .prologue
    .line 554
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->userlistBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 555
    iget v0, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->userlist_:Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;

    invoke-static {}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->getDefaultInstance()Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 558
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->userlist_:Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;

    invoke-static {v0}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->newBuilder(Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;)Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;)Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->userlist_:Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;

    .line 564
    :goto_0
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->onChanged()V

    .line 568
    :goto_1
    iget v0, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->bitField0_:I

    .line 569
    return-object p0

    .line 562
    :cond_0
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->userlist_:Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;

    goto :goto_0

    .line 566
    :cond_1
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->userlistBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public setDayview(I)Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 495
    iget v0, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->bitField0_:I

    .line 496
    iput p1, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->dayview_:I

    .line 497
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->onChanged()V

    .line 498
    return-object p0
.end method

.method public setPageview(I)Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 470
    iget v0, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->bitField0_:I

    .line 471
    iput p1, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->pageview_:I

    .line 472
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->onChanged()V

    .line 473
    return-object p0
.end method

.method public setUserlist(Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;)Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;

    .prologue
    .line 542
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->userlistBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 543
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->build()Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->userlist_:Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;

    .line 544
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->onChanged()V

    .line 548
    :goto_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->bitField0_:I

    .line 549
    return-object p0

    .line 546
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->userlistBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->build()Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setUserlist(Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;)Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;
    .locals 1
    .param p1, "value"    # Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;

    .prologue
    .line 527
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->userlistBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 528
    if-nez p1, :cond_0

    .line 529
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 531
    :cond_0
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->userlist_:Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;

    .line 532
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->onChanged()V

    .line 536
    :goto_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->bitField0_:I

    .line 537
    return-object p0

    .line 534
    :cond_1
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->userlistBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method
