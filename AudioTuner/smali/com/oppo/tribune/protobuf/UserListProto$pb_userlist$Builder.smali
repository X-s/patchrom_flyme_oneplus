.class public final Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "UserListProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/UserListProto$pb_userlistOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;",
        ">;",
        "Lcom/oppo/tribune/protobuf/UserListProto$pb_userlistOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private page_:I

.field private perpage_:I

.field private total_:I

.field private userlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;",
            "Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;",
            "Lcom/oppo/tribune/protobuf/UserInfoProto$pb_userOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private userlist_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 324
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 531
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->userlist_:Ljava/util/List;

    .line 325
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->maybeForceBuilderInitialization()V

    .line 326
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 329
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 531
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->userlist_:Ljava/util/List;

    .line 330
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->maybeForceBuilderInitialization()V

    .line 331
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/UserListProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/UserListProto$1;

    .prologue
    .line 311
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;)Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 311
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;
    .locals 1

    .prologue
    .line 311
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->create()Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 384
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;

    move-result-object v0

    .line 385
    .local v0, "result":Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 386
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 389
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;
    .locals 1

    .prologue
    .line 340
    new-instance v0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;-><init>()V

    return-object v0
.end method

.method private ensureUserlistIsMutable()V
    .locals 2

    .prologue
    .line 535
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 536
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->userlist_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->userlist_:Ljava/util/List;

    .line 538
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->bitField0_:I

    .line 540
    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 315
    # getter for: Lcom/oppo/tribune/protobuf/UserListProto;->internal_static_pb_userlist_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserListProto;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getUserlistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;",
            "Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;",
            "Lcom/oppo/tribune/protobuf/UserInfoProto$pb_userOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 727
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->userlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_0

    .line 728
    new-instance v1, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v2, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->userlist_:Ljava/util/List;

    iget v3, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v0, :cond_1

    :goto_0
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->isClean()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v1, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->userlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 732
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->userlist_:Ljava/util/List;

    .line 734
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->userlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 728
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 334
    # getter for: Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->getUserlistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 337
    :cond_0
    return-void
.end method


# virtual methods
.method public addAllUserlist(Ljava/lang/Iterable;)Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;",
            ">;)",
            "Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;"
        }
    .end annotation

    .prologue
    .line 654
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;>;"
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->userlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 655
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->ensureUserlistIsMutable()V

    .line 656
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->userlist_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 657
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->onChanged()V

    .line 661
    :goto_0
    return-object p0

    .line 659
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->userlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addUserlist(ILcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;)Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;

    .prologue
    .line 642
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->userlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 643
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->ensureUserlistIsMutable()V

    .line 644
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->userlist_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->build()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 645
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->onChanged()V

    .line 649
    :goto_0
    return-object p0

    .line 647
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->userlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->build()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addUserlist(ILcom/oppo/tribune/protobuf/UserInfoProto$pb_user;)Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    .prologue
    .line 614
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->userlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 615
    if-nez p2, :cond_0

    .line 616
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 618
    :cond_0
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->ensureUserlistIsMutable()V

    .line 619
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->userlist_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 620
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->onChanged()V

    .line 624
    :goto_0
    return-object p0

    .line 622
    :cond_1
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->userlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addUserlist(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;)Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;

    .prologue
    .line 629
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->userlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 630
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->ensureUserlistIsMutable()V

    .line 631
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->userlist_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->build()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 632
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->onChanged()V

    .line 636
    :goto_0
    return-object p0

    .line 634
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->userlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->build()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addUserlist(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;)Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;
    .locals 1
    .param p1, "value"    # Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    .prologue
    .line 599
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->userlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 600
    if-nez p1, :cond_0

    .line 601
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 603
    :cond_0
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->ensureUserlistIsMutable()V

    .line 604
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->userlist_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 605
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->onChanged()V

    .line 609
    :goto_0
    return-object p0

    .line 607
    :cond_1
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->userlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addUserlistBuilder()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;
    .locals 2

    .prologue
    .line 709
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->getUserlistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getDefaultInstance()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;

    return-object v0
.end method

.method public addUserlistBuilder(I)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 716
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->getUserlistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->getDefaultInstance()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->build()Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->build()Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;
    .locals 2

    .prologue
    .line 375
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;

    move-result-object v0

    .line 376
    .local v0, "result":Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 377
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 379
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;
    .locals 5

    .prologue
    .line 393
    new-instance v1, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;-><init>(Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;Lcom/oppo/tribune/protobuf/UserListProto$1;)V

    .line 395
    .local v1, "result":Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->bitField0_:I

    .line 396
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 397
    .local v2, "to_bitField0_":I
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->userlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v3, :cond_4

    .line 398
    iget v3, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 399
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->userlist_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->userlist_:Ljava/util/List;

    .line 401
    iget v3, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->bitField0_:I

    .line 403
    :cond_0
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->userlist_:Ljava/util/List;

    # setter for: Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->userlist_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->access$702(Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;Ljava/util/List;)Ljava/util/List;

    .line 407
    :goto_0
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 408
    or-int/lit8 v2, v2, 0x1

    .line 410
    :cond_1
    iget v3, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->page_:I

    # setter for: Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->page_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->access$802(Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;I)I

    .line 411
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 412
    or-int/lit8 v2, v2, 0x2

    .line 414
    :cond_2
    iget v3, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->perpage_:I

    # setter for: Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->perpage_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->access$902(Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;I)I

    .line 415
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 416
    or-int/lit8 v2, v2, 0x4

    .line 418
    :cond_3
    iget v3, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->total_:I

    # setter for: Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->total_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->access$1002(Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;I)I

    .line 419
    # setter for: Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->bitField0_:I
    invoke-static {v1, v2}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->access$1102(Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;I)I

    .line 420
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->onBuilt()V

    .line 421
    return-object v1

    .line 405
    :cond_4
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->userlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v3

    # setter for: Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->userlist_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->access$702(Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;Ljava/util/List;)Ljava/util/List;

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->clear()Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->clear()Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->clear()Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->clear()Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 344
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 345
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->userlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 346
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->userlist_:Ljava/util/List;

    .line 347
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->bitField0_:I

    .line 351
    :goto_0
    iput v1, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->page_:I

    .line 352
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->bitField0_:I

    .line 353
    iput v1, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->perpage_:I

    .line 354
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->bitField0_:I

    .line 355
    iput v1, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->total_:I

    .line 356
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->bitField0_:I

    .line 357
    return-object p0

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->userlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearPage()Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;
    .locals 1

    .prologue
    .line 756
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->bitField0_:I

    .line 757
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->page_:I

    .line 758
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->onChanged()V

    .line 759
    return-object p0
.end method

.method public clearPerpage()Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;
    .locals 1

    .prologue
    .line 781
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->bitField0_:I

    .line 782
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->perpage_:I

    .line 783
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->onChanged()V

    .line 784
    return-object p0
.end method

.method public clearTotal()Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;
    .locals 1

    .prologue
    .line 806
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->bitField0_:I

    .line 807
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->total_:I

    .line 808
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->onChanged()V

    .line 809
    return-object p0
.end method

.method public clearUserlist()Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->userlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 666
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->userlist_:Ljava/util/List;

    .line 667
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->bitField0_:I

    .line 668
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->onChanged()V

    .line 672
    :goto_0
    return-object p0

    .line 670
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->userlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->clone()Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->clone()Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->clone()Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->clone()Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->clone()Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;
    .locals 2

    .prologue
    .line 361
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->create()Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;)Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;

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
    .line 311
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->clone()Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;
    .locals 1

    .prologue
    .line 370
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->getDefaultInstance()Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 365
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getPage()I
    .locals 1

    .prologue
    .line 745
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->page_:I

    return v0
.end method

.method public getPerpage()I
    .locals 1

    .prologue
    .line 770
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->perpage_:I

    return v0
.end method

.method public getTotal()I
    .locals 1

    .prologue
    .line 795
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->total_:I

    return v0
.end method

.method public getUserlist(I)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 562
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->userlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->userlist_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    .line 565
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->userlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    goto :goto_0
.end method

.method public getUserlistBuilder(I)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 688
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->getUserlistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;

    return-object v0
.end method

.method public getUserlistBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 723
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->getUserlistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUserlistCount()I
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->userlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 554
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->userlist_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 556
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->userlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getUserlistList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;",
            ">;"
        }
    .end annotation

    .prologue
    .line 545
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->userlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 546
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->userlist_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 548
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->userlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getUserlistOrBuilder(I)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_userOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 693
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->userlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 694
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->userlist_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_userOrBuilder;

    .line 696
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->userlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_userOrBuilder;

    goto :goto_0
.end method

.method public getUserlistOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/oppo/tribune/protobuf/UserInfoProto$pb_userOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 701
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->userlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 702
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->userlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 704
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->userlist_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public hasPage()Z
    .locals 2

    .prologue
    .line 741
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->bitField0_:I

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

.method public hasPerpage()Z
    .locals 2

    .prologue
    .line 766
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->bitField0_:I

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

.method public hasTotal()Z
    .locals 2

    .prologue
    .line 791
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 319
    # getter for: Lcom/oppo/tribune/protobuf/UserListProto;->internal_static_pb_userlist_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserListProto;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 477
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
    .line 311
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 311
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;

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
    .line 311
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;

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
    .line 311
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 311
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;

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
    .line 311
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 484
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 487
    .local v2, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 488
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    .line 494
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 496
    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 497
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->onChanged()V

    .line 498
    :goto_1
    return-object p0

    .line 490
    :sswitch_0
    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 491
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->onChanged()V

    goto :goto_1

    .line 503
    :sswitch_1
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;->newBuilder()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;

    move-result-object v0

    .line 505
    .local v0, "subBuilder":Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 506
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->addUserlist(Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;)Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;

    goto :goto_0

    .line 510
    .end local v0    # "subBuilder":Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;
    :sswitch_2
    iget v3, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->bitField0_:I

    .line 511
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->page_:I

    goto :goto_0

    .line 515
    :sswitch_3
    iget v3, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->bitField0_:I

    .line 516
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->perpage_:I

    goto :goto_0

    .line 520
    :sswitch_4
    iget v3, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->bitField0_:I

    .line 521
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->total_:I

    goto :goto_0

    .line 488
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 425
    instance-of v0, p1, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;

    if-eqz v0, :cond_0

    .line 426
    check-cast p1, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;)Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;

    move-result-object p0

    .line 429
    .end local p0    # "this":Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;
    :goto_0
    return-object p0

    .line 428
    .restart local p0    # "this":Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;)Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;
    .locals 2
    .param p1, "other"    # Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;

    .prologue
    const/4 v0, 0x0

    .line 435
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->getDefaultInstance()Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 473
    :goto_0
    return-object p0

    .line 438
    :cond_0
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->userlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_6

    .line 439
    # getter for: Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->userlist_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->access$700(Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 440
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->userlist_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 441
    # getter for: Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->userlist_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->access$700(Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->userlist_:Ljava/util/List;

    .line 442
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->bitField0_:I

    .line 447
    :goto_1
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->onChanged()V

    .line 463
    :cond_1
    :goto_2
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->hasPage()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 464
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->getPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->setPage(I)Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;

    .line 466
    :cond_2
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->hasPerpage()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 467
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->getPerpage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->setPerpage(I)Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;

    .line 469
    :cond_3
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->hasTotal()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 470
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->getTotal()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->setTotal(I)Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;

    .line 472
    :cond_4
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0

    .line 444
    :cond_5
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->ensureUserlistIsMutable()V

    .line 445
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->userlist_:Ljava/util/List;

    # getter for: Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->userlist_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->access$700(Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 450
    :cond_6
    # getter for: Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->userlist_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->access$700(Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 451
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->userlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 452
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->userlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 453
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->userlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 454
    # getter for: Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->userlist_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->access$700(Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->userlist_:Ljava/util/List;

    .line 455
    iget v1, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->bitField0_:I

    .line 456
    # getter for: Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->access$1200()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->getUserlistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :cond_7
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->userlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2

    .line 459
    :cond_8
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->userlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    # getter for: Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->userlist_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->access$700(Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2
.end method

.method public removeUserlist(I)Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 676
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->userlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 677
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->ensureUserlistIsMutable()V

    .line 678
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->userlist_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 679
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->onChanged()V

    .line 683
    :goto_0
    return-object p0

    .line 681
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->userlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public setPage(I)Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 749
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->bitField0_:I

    .line 750
    iput p1, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->page_:I

    .line 751
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->onChanged()V

    .line 752
    return-object p0
.end method

.method public setPerpage(I)Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 774
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->bitField0_:I

    .line 775
    iput p1, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->perpage_:I

    .line 776
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->onChanged()V

    .line 777
    return-object p0
.end method

.method public setTotal(I)Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 799
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->bitField0_:I

    .line 800
    iput p1, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->total_:I

    .line 801
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->onChanged()V

    .line 802
    return-object p0
.end method

.method public setUserlist(ILcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;)Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;

    .prologue
    .line 587
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->userlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 588
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->ensureUserlistIsMutable()V

    .line 589
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->userlist_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->build()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 590
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->onChanged()V

    .line 594
    :goto_0
    return-object p0

    .line 592
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->userlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user$Builder;->build()Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setUserlist(ILcom/oppo/tribune/protobuf/UserInfoProto$pb_user;)Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    .prologue
    .line 571
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->userlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 572
    if-nez p2, :cond_0

    .line 573
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 575
    :cond_0
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->ensureUserlistIsMutable()V

    .line 576
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->userlist_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 577
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->onChanged()V

    .line 581
    :goto_0
    return-object p0

    .line 579
    :cond_1
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->userlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method
