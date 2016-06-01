.class public final Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "ResPhoneModelNetProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelListOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;",
        ">;",
        "Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelListOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private modellistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;",
            "Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;",
            "Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModelOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private modellist_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;",
            ">;"
        }
    .end annotation
.end field

.field private total_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 989
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 1168
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->modellist_:Ljava/util/List;

    .line 990
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->maybeForceBuilderInitialization()V

    .line 991
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 994
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 1168
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->modellist_:Ljava/util/List;

    .line 995
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->maybeForceBuilderInitialization()V

    .line 996
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$1;

    .prologue
    .line 975
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;)Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 975
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;
    .locals 1

    .prologue
    .line 975
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->create()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1045
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;

    move-result-object v0

    .line 1046
    .local v0, "result":Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1047
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 1050
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;
    .locals 1

    .prologue
    .line 1005
    new-instance v0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;-><init>()V

    return-object v0
.end method

.method private ensureModellistIsMutable()V
    .locals 2

    .prologue
    .line 1172
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1173
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->modellist_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->modellist_:Ljava/util/List;

    .line 1175
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->bitField0_:I

    .line 1177
    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 980
    # getter for: Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto;->internal_static_protobuf_ModelList_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto;->access$1300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getModellistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;",
            "Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;",
            "Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModelOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 1370
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->modellistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_0

    .line 1371
    new-instance v1, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v2, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->modellist_:Ljava/util/List;

    iget v3, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v0, :cond_1

    :goto_0
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->isClean()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v1, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->modellistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 1375
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->modellist_:Ljava/util/List;

    .line 1377
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->modellistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 1371
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 999
    # getter for: Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;->access$1800()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1000
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->getModellistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 1002
    :cond_0
    return-void
.end method


# virtual methods
.method public addAllModellist(Ljava/lang/Iterable;)Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;",
            ">;)",
            "Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;"
        }
    .end annotation

    .prologue
    .line 1295
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;>;"
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->modellistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1296
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->ensureModellistIsMutable()V

    .line 1297
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->modellist_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1298
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->onChanged()V

    .line 1302
    :goto_0
    return-object p0

    .line 1300
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->modellistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addModellist(ILcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;)Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;

    .prologue
    .line 1282
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->modellistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1283
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->ensureModellistIsMutable()V

    .line 1284
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->modellist_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->build()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1285
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->onChanged()V

    .line 1290
    :goto_0
    return-object p0

    .line 1287
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->modellistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->build()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addModellist(ILcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;)Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;

    .prologue
    .line 1254
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->modellistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1255
    if-nez p2, :cond_0

    .line 1256
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1258
    :cond_0
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->ensureModellistIsMutable()V

    .line 1259
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->modellist_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1260
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->onChanged()V

    .line 1264
    :goto_0
    return-object p0

    .line 1262
    :cond_1
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->modellistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addModellist(Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;)Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;

    .prologue
    .line 1269
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->modellistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1270
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->ensureModellistIsMutable()V

    .line 1271
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->modellist_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->build()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1272
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->onChanged()V

    .line 1276
    :goto_0
    return-object p0

    .line 1274
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->modellistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->build()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addModellist(Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;)Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;
    .locals 1
    .param p1, "value"    # Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;

    .prologue
    .line 1238
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->modellistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1239
    if-nez p1, :cond_0

    .line 1240
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1242
    :cond_0
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->ensureModellistIsMutable()V

    .line 1243
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->modellist_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1244
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->onChanged()V

    .line 1248
    :goto_0
    return-object p0

    .line 1246
    :cond_1
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->modellistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addModellistBuilder()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;
    .locals 2

    .prologue
    .line 1350
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->getModellistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;

    return-object v0
.end method

.method public addModellistBuilder(I)Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 1358
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->getModellistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 975
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->build()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 975
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->build()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;
    .locals 2

    .prologue
    .line 1036
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;

    move-result-object v0

    .line 1037
    .local v0, "result":Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1038
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 1040
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 975
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 975
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;
    .locals 5

    .prologue
    .line 1054
    new-instance v1, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;-><init>(Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$1;)V

    .line 1056
    .local v1, "result":Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->bitField0_:I

    .line 1057
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 1058
    .local v2, "to_bitField0_":I
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->modellistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v3, :cond_2

    .line 1059
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1060
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->modellist_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->modellist_:Ljava/util/List;

    .line 1062
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->bitField0_:I

    .line 1064
    :cond_0
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->modellist_:Ljava/util/List;

    # setter for: Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;->modellist_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;->access$2002(Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;Ljava/util/List;)Ljava/util/List;

    .line 1068
    :goto_0
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 1069
    or-int/lit8 v2, v2, 0x1

    .line 1071
    :cond_1
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->total_:I

    # setter for: Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;->total_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;->access$2102(Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;I)I

    .line 1072
    # setter for: Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;->bitField0_:I
    invoke-static {v1, v2}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;->access$2202(Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;I)I

    .line 1073
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->onBuilt()V

    .line 1074
    return-object v1

    .line 1066
    :cond_2
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->modellistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v3

    # setter for: Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;->modellist_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;->access$2002(Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;Ljava/util/List;)Ljava/util/List;

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 975
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->clear()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 975
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->clear()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 975
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->clear()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 975
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->clear()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;
    .locals 1

    .prologue
    .line 1009
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 1010
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->modellistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1011
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->modellist_:Ljava/util/List;

    .line 1012
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->bitField0_:I

    .line 1016
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->total_:I

    .line 1017
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->bitField0_:I

    .line 1018
    return-object p0

    .line 1014
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->modellistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearModellist()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;
    .locals 1

    .prologue
    .line 1306
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->modellistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1307
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->modellist_:Ljava/util/List;

    .line 1308
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->bitField0_:I

    .line 1309
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->onChanged()V

    .line 1313
    :goto_0
    return-object p0

    .line 1311
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->modellistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearTotal()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;
    .locals 1

    .prologue
    .line 1399
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->bitField0_:I

    .line 1400
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->total_:I

    .line 1401
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->onChanged()V

    .line 1402
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 975
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->clone()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 975
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->clone()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 975
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->clone()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 975
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->clone()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 975
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->clone()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;
    .locals 2

    .prologue
    .line 1022
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->create()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;)Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;

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
    .line 975
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->clone()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 975
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 975
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;
    .locals 1

    .prologue
    .line 1031
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1026
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getModellist(I)Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1199
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->modellistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1200
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->modellist_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;

    .line 1202
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->modellistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;

    goto :goto_0
.end method

.method public getModellistBuilder(I)Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1329
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->getModellistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;

    return-object v0
.end method

.method public getModellistBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1366
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->getModellistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getModellistCount()I
    .locals 1

    .prologue
    .line 1190
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->modellistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1191
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->modellist_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1193
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->modellistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getModellistList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1182
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->modellistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1183
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->modellist_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1185
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->modellistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getModellistOrBuilder(I)Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModelOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1334
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->modellistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1335
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->modellist_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModelOrBuilder;

    .line 1337
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->modellistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModelOrBuilder;

    goto :goto_0
.end method

.method public getModellistOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModelOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1342
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->modellistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 1343
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->modellistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 1345
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->modellist_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getTotal()I
    .locals 1

    .prologue
    .line 1388
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->total_:I

    return v0
.end method

.method public hasTotal()Z
    .locals 2

    .prologue
    .line 1384
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->bitField0_:I

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
    .line 984
    # getter for: Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto;->internal_static_protobuf_ModelList_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto;->access$1400()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1124
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
    .line 975
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 975
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;

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
    .line 975
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;

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
    .line 975
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 975
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;

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
    .line 975
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1131
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 1134
    .local v2, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 1135
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    .line 1141
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1143
    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 1144
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->onChanged()V

    .line 1145
    :goto_1
    return-object p0

    .line 1137
    :sswitch_0
    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 1138
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->onChanged()V

    goto :goto_1

    .line 1150
    :sswitch_1
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;->newBuilder()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;

    move-result-object v0

    .line 1152
    .local v0, "subBuilder":Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1153
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->addModellist(Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;)Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;

    goto :goto_0

    .line 1157
    .end local v0    # "subBuilder":Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;
    :sswitch_2
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->bitField0_:I

    .line 1158
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->total_:I

    goto :goto_0

    .line 1135
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 1078
    instance-of v0, p1, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;

    if-eqz v0, :cond_0

    .line 1079
    check-cast p1, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;)Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;

    move-result-object p0

    .line 1082
    .end local p0    # "this":Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;
    :goto_0
    return-object p0

    .line 1081
    .restart local p0    # "this":Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;)Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;
    .locals 2
    .param p1, "other"    # Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;

    .prologue
    const/4 v0, 0x0

    .line 1088
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 1120
    :goto_0
    return-object p0

    .line 1091
    :cond_0
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->modellistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_4

    .line 1092
    # getter for: Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;->modellist_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;->access$2000(Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1093
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->modellist_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1094
    # getter for: Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;->modellist_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;->access$2000(Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->modellist_:Ljava/util/List;

    .line 1095
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->bitField0_:I

    .line 1100
    :goto_1
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->onChanged()V

    .line 1116
    :cond_1
    :goto_2
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;->hasTotal()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1117
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;->getTotal()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->setTotal(I)Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;

    .line 1119
    :cond_2
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0

    .line 1097
    :cond_3
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->ensureModellistIsMutable()V

    .line 1098
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->modellist_:Ljava/util/List;

    # getter for: Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;->modellist_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;->access$2000(Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 1103
    :cond_4
    # getter for: Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;->modellist_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;->access$2000(Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1104
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->modellistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1105
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->modellistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 1106
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->modellistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 1107
    # getter for: Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;->modellist_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;->access$2000(Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->modellist_:Ljava/util/List;

    .line 1108
    iget v1, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->bitField0_:I

    .line 1109
    # getter for: Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;->access$2300()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->getModellistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :cond_5
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->modellistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2

    .line 1112
    :cond_6
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->modellistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    # getter for: Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;->modellist_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;->access$2000(Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2
.end method

.method public removeModellist(I)Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1317
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->modellistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1318
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->ensureModellistIsMutable()V

    .line 1319
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->modellist_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1320
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->onChanged()V

    .line 1324
    :goto_0
    return-object p0

    .line 1322
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->modellistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public setModellist(ILcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;)Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;

    .prologue
    .line 1225
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->modellistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1226
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->ensureModellistIsMutable()V

    .line 1227
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->modellist_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->build()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1228
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->onChanged()V

    .line 1233
    :goto_0
    return-object p0

    .line 1230
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->modellistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel$Builder;->build()Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setModellist(ILcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;)Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;

    .prologue
    .line 1209
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->modellistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1210
    if-nez p2, :cond_0

    .line 1211
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1213
    :cond_0
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->ensureModellistIsMutable()V

    .line 1214
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->modellist_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1215
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->onChanged()V

    .line 1219
    :goto_0
    return-object p0

    .line 1217
    :cond_1
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->modellistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setTotal(I)Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1392
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->bitField0_:I

    .line 1393
    iput p1, p0, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->total_:I

    .line 1394
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelList$Builder;->onChanged()V

    .line 1395
    return-object p0
.end method
