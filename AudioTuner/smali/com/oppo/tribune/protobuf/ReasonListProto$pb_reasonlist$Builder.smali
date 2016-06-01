.class public final Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "ReasonListProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlistOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;",
        ">;",
        "Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlistOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private reasonlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;",
            "Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;",
            "Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private reasonlist_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 753
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 923
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->reasonlist_:Ljava/util/List;

    .line 754
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->maybeForceBuilderInitialization()V

    .line 755
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 758
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 923
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->reasonlist_:Ljava/util/List;

    .line 759
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->maybeForceBuilderInitialization()V

    .line 760
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/ReasonListProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/ReasonListProto$1;

    .prologue
    .line 739
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;)Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 739
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;
    .locals 1

    .prologue
    .line 739
    invoke-static {}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->create()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 807
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;

    move-result-object v0

    .line 808
    .local v0, "result":Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 809
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 812
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;
    .locals 1

    .prologue
    .line 769
    new-instance v0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;-><init>()V

    return-object v0
.end method

.method private ensureReasonlistIsMutable()V
    .locals 2

    .prologue
    .line 927
    iget v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 928
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->reasonlist_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->reasonlist_:Ljava/util/List;

    .line 930
    iget v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->bitField0_:I

    .line 932
    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 744
    # getter for: Lcom/oppo/tribune/protobuf/ReasonListProto;->internal_static_pb_reasonlist_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ReasonListProto;->access$1000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getReasonlistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;",
            "Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;",
            "Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 1121
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->reasonlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_0

    .line 1122
    new-instance v1, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v2, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->reasonlist_:Ljava/util/List;

    iget v3, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v0, :cond_1

    :goto_0
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->isClean()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v1, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->reasonlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 1126
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->reasonlist_:Ljava/util/List;

    .line 1128
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->reasonlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 1122
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 763
    # getter for: Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;->access$1500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 764
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->getReasonlistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 766
    :cond_0
    return-void
.end method


# virtual methods
.method public addAllReasonlist(Ljava/lang/Iterable;)Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;",
            ">;)",
            "Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;"
        }
    .end annotation

    .prologue
    .line 1048
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;>;"
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->reasonlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1049
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->ensureReasonlistIsMutable()V

    .line 1050
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->reasonlist_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1051
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->onChanged()V

    .line 1055
    :goto_0
    return-object p0

    .line 1053
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->reasonlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addReasonlist(ILcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;)Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;

    .prologue
    .line 1035
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->reasonlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1036
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->ensureReasonlistIsMutable()V

    .line 1037
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->reasonlist_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->build()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1038
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->onChanged()V

    .line 1043
    :goto_0
    return-object p0

    .line 1040
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->reasonlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->build()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addReasonlist(ILcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;)Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;

    .prologue
    .line 1007
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->reasonlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1008
    if-nez p2, :cond_0

    .line 1009
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1011
    :cond_0
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->ensureReasonlistIsMutable()V

    .line 1012
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->reasonlist_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1013
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->onChanged()V

    .line 1017
    :goto_0
    return-object p0

    .line 1015
    :cond_1
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->reasonlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addReasonlist(Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;)Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;

    .prologue
    .line 1022
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->reasonlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1023
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->ensureReasonlistIsMutable()V

    .line 1024
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->reasonlist_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->build()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1025
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->onChanged()V

    .line 1029
    :goto_0
    return-object p0

    .line 1027
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->reasonlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->build()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addReasonlist(Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;)Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;
    .locals 1
    .param p1, "value"    # Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;

    .prologue
    .line 992
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->reasonlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 993
    if-nez p1, :cond_0

    .line 994
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 996
    :cond_0
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->ensureReasonlistIsMutable()V

    .line 997
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->reasonlist_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 998
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->onChanged()V

    .line 1002
    :goto_0
    return-object p0

    .line 1000
    :cond_1
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->reasonlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addReasonlistBuilder()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;
    .locals 2

    .prologue
    .line 1103
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->getReasonlistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;

    return-object v0
.end method

.method public addReasonlistBuilder(I)Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 1110
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->getReasonlistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 739
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->build()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 739
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->build()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;
    .locals 2

    .prologue
    .line 798
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;

    move-result-object v0

    .line 799
    .local v0, "result":Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 800
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 802
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 739
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 739
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;
    .locals 4

    .prologue
    .line 816
    new-instance v1, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;-><init>(Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;Lcom/oppo/tribune/protobuf/ReasonListProto$1;)V

    .line 818
    .local v1, "result":Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;
    iget v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->bitField0_:I

    .line 819
    .local v0, "from_bitField0_":I
    iget-object v2, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->reasonlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v2, :cond_1

    .line 820
    iget v2, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 821
    iget-object v2, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->reasonlist_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->reasonlist_:Ljava/util/List;

    .line 823
    iget v2, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->bitField0_:I

    .line 825
    :cond_0
    iget-object v2, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->reasonlist_:Ljava/util/List;

    # setter for: Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;->reasonlist_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;->access$1702(Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;Ljava/util/List;)Ljava/util/List;

    .line 829
    :goto_0
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->onBuilt()V

    .line 830
    return-object v1

    .line 827
    :cond_1
    iget-object v2, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->reasonlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v2}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v2

    # setter for: Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;->reasonlist_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;->access$1702(Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;Ljava/util/List;)Ljava/util/List;

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 739
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->clear()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 739
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->clear()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 739
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->clear()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 739
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->clear()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;
    .locals 1

    .prologue
    .line 773
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 774
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->reasonlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 775
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->reasonlist_:Ljava/util/List;

    .line 776
    iget v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->bitField0_:I

    .line 780
    :goto_0
    return-object p0

    .line 778
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->reasonlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearReasonlist()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;
    .locals 1

    .prologue
    .line 1059
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->reasonlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1060
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->reasonlist_:Ljava/util/List;

    .line 1061
    iget v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->bitField0_:I

    .line 1062
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->onChanged()V

    .line 1066
    :goto_0
    return-object p0

    .line 1064
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->reasonlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 739
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->clone()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 739
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->clone()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 739
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->clone()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 739
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->clone()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 739
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->clone()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;
    .locals 2

    .prologue
    .line 784
    invoke-static {}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->create()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;)Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;

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
    .line 739
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->clone()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 739
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 739
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;
    .locals 1

    .prologue
    .line 793
    invoke-static {}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 788
    invoke-static {}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getReasonlist(I)Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 954
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->reasonlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 955
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->reasonlist_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;

    .line 957
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->reasonlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;

    goto :goto_0
.end method

.method public getReasonlistBuilder(I)Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1082
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->getReasonlistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;

    return-object v0
.end method

.method public getReasonlistBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1117
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->getReasonlistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getReasonlistCount()I
    .locals 1

    .prologue
    .line 945
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->reasonlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 946
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->reasonlist_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 948
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->reasonlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getReasonlistList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;",
            ">;"
        }
    .end annotation

    .prologue
    .line 937
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->reasonlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 938
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->reasonlist_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 940
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->reasonlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getReasonlistOrBuilder(I)Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1087
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->reasonlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1088
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->reasonlist_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonOrBuilder;

    .line 1090
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->reasonlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonOrBuilder;

    goto :goto_0
.end method

.method public getReasonlistOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1095
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->reasonlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 1096
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->reasonlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 1098
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->reasonlist_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 748
    # getter for: Lcom/oppo/tribune/protobuf/ReasonListProto;->internal_static_pb_reasonlist_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ReasonListProto;->access$1100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    .line 878
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->getReasonlistCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 879
    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->getReasonlist(I)Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 881
    const/4 v1, 0x0

    .line 884
    :goto_1
    return v1

    .line 878
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 884
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
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
    .line 739
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 739
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;

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
    .line 739
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;

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
    .line 739
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 739
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;

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
    .line 739
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 891
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 894
    .local v2, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 895
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    .line 901
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 903
    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 904
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->onChanged()V

    .line 905
    :goto_1
    return-object p0

    .line 897
    :sswitch_0
    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 898
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->onChanged()V

    goto :goto_1

    .line 910
    :sswitch_1
    invoke-static {}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;->newBuilder()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;

    move-result-object v0

    .line 912
    .local v0, "subBuilder":Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 913
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->addReasonlist(Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;)Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;

    goto :goto_0

    .line 895
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 834
    instance-of v0, p1, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;

    if-eqz v0, :cond_0

    .line 835
    check-cast p1, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;)Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;

    move-result-object p0

    .line 838
    .end local p0    # "this":Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;
    :goto_0
    return-object p0

    .line 837
    .restart local p0    # "this":Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;)Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;
    .locals 2
    .param p1, "other"    # Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;

    .prologue
    const/4 v0, 0x0

    .line 844
    invoke-static {}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 874
    :goto_0
    return-object p0

    .line 847
    :cond_0
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->reasonlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_3

    .line 848
    # getter for: Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;->reasonlist_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;->access$1700(Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 849
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->reasonlist_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 850
    # getter for: Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;->reasonlist_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;->access$1700(Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->reasonlist_:Ljava/util/List;

    .line 851
    iget v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->bitField0_:I

    .line 856
    :goto_1
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->onChanged()V

    .line 873
    :cond_1
    :goto_2
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0

    .line 853
    :cond_2
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->ensureReasonlistIsMutable()V

    .line 854
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->reasonlist_:Ljava/util/List;

    # getter for: Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;->reasonlist_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;->access$1700(Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 859
    :cond_3
    # getter for: Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;->reasonlist_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;->access$1700(Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 860
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->reasonlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 861
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->reasonlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 862
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->reasonlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 863
    # getter for: Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;->reasonlist_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;->access$1700(Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->reasonlist_:Ljava/util/List;

    .line 864
    iget v1, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->bitField0_:I

    .line 865
    # getter for: Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;->access$1800()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->getReasonlistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :cond_4
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->reasonlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2

    .line 868
    :cond_5
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->reasonlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    # getter for: Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;->reasonlist_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;->access$1700(Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2
.end method

.method public removeReasonlist(I)Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1070
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->reasonlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1071
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->ensureReasonlistIsMutable()V

    .line 1072
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->reasonlist_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1073
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->onChanged()V

    .line 1077
    :goto_0
    return-object p0

    .line 1075
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->reasonlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public setReasonlist(ILcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;)Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;

    .prologue
    .line 979
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->reasonlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 980
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->ensureReasonlistIsMutable()V

    .line 981
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->reasonlist_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->build()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 982
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->onChanged()V

    .line 987
    :goto_0
    return-object p0

    .line 984
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->reasonlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->build()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setReasonlist(ILcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;)Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;

    .prologue
    .line 963
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->reasonlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 964
    if-nez p2, :cond_0

    .line 965
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 967
    :cond_0
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->ensureReasonlistIsMutable()V

    .line 968
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->reasonlist_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 969
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->onChanged()V

    .line 973
    :goto_0
    return-object p0

    .line 971
    :cond_1
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist$Builder;->reasonlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method
