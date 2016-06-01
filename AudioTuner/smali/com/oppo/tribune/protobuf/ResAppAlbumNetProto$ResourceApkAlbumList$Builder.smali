.class public final Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "ResAppAlbumNetProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumListOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;",
        ">;",
        "Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumListOrBuilder;"
    }
.end annotation


# instance fields
.field private albumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;",
            "Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;",
            "Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private albumlist_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;",
            ">;"
        }
    .end annotation
.end field

.field private bitField0_:I

.field private curpage_:I

.field private id_:I

.field private label_:Ljava/lang/Object;

.field private perpage_:I

.field private total_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 4839
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 5074
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->label_:Ljava/lang/Object;

    .line 5216
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->albumlist_:Ljava/util/List;

    .line 4840
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->maybeForceBuilderInitialization()V

    .line 4841
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 4844
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 5074
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->label_:Ljava/lang/Object;

    .line 5216
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->albumlist_:Ljava/util/List;

    .line 4845
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->maybeForceBuilderInitialization()V

    .line 4846
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$1;

    .prologue
    .line 4825
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$6100(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4825
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6200()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;
    .locals 1

    .prologue
    .line 4825
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->create()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4903
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;

    move-result-object v0

    .line 4904
    .local v0, "result":Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4905
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 4908
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;
    .locals 1

    .prologue
    .line 4855
    new-instance v0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;-><init>()V

    return-object v0
.end method

.method private ensureAlbumlistIsMutable()V
    .locals 2

    .prologue
    .line 5220
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    .line 5221
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->albumlist_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->albumlist_:Ljava/util/List;

    .line 5223
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->bitField0_:I

    .line 5225
    :cond_0
    return-void
.end method

.method private getAlbumlistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;",
            "Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;",
            "Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5418
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->albumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 5419
    new-instance v1, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v2, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->albumlist_:Ljava/util/List;

    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v3, 0x20

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->isClean()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->albumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 5423
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->albumlist_:Ljava/util/List;

    .line 5425
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->albumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 5419
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 4830
    # getter for: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto;->internal_static_protobuf_ResourceApkAlbumList_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto;->access$5900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 4849
    # getter for: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->access$6400()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4850
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->getAlbumlistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 4852
    :cond_0
    return-void
.end method


# virtual methods
.method public addAlbumlist(ILcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;

    .prologue
    .line 5330
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->albumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 5331
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->ensureAlbumlistIsMutable()V

    .line 5332
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->albumlist_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->build()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 5333
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->onChanged()V

    .line 5338
    :goto_0
    return-object p0

    .line 5335
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->albumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->build()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addAlbumlist(ILcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;

    .prologue
    .line 5302
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->albumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 5303
    if-nez p2, :cond_0

    .line 5304
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5306
    :cond_0
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->ensureAlbumlistIsMutable()V

    .line 5307
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->albumlist_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 5308
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->onChanged()V

    .line 5312
    :goto_0
    return-object p0

    .line 5310
    :cond_1
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->albumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addAlbumlist(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;

    .prologue
    .line 5317
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->albumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 5318
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->ensureAlbumlistIsMutable()V

    .line 5319
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->albumlist_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->build()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5320
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->onChanged()V

    .line 5324
    :goto_0
    return-object p0

    .line 5322
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->albumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->build()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addAlbumlist(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;
    .locals 1
    .param p1, "value"    # Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;

    .prologue
    .line 5286
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->albumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 5287
    if-nez p1, :cond_0

    .line 5288
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5290
    :cond_0
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->ensureAlbumlistIsMutable()V

    .line 5291
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->albumlist_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5292
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->onChanged()V

    .line 5296
    :goto_0
    return-object p0

    .line 5294
    :cond_1
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->albumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addAlbumlistBuilder()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;
    .locals 2

    .prologue
    .line 5398
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->getAlbumlistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;

    return-object v0
.end method

.method public addAlbumlistBuilder(I)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 5406
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->getAlbumlistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;

    return-object v0
.end method

.method public addAllAlbumlist(Ljava/lang/Iterable;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;",
            ">;)",
            "Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;"
        }
    .end annotation

    .prologue
    .line 5343
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;>;"
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->albumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 5344
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->ensureAlbumlistIsMutable()V

    .line 5345
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->albumlist_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 5346
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->onChanged()V

    .line 5350
    :goto_0
    return-object p0

    .line 5348
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->albumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 4825
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->build()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4825
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->build()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;
    .locals 2

    .prologue
    .line 4894
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;

    move-result-object v0

    .line 4895
    .local v0, "result":Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4896
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 4898
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 4825
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4825
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;
    .locals 5

    .prologue
    .line 4912
    new-instance v1, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;-><init>(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$1;)V

    .line 4914
    .local v1, "result":Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->bitField0_:I

    .line 4915
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 4916
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 4917
    or-int/lit8 v2, v2, 0x1

    .line 4919
    :cond_0
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->label_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->label_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->access$6602(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4920
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 4921
    or-int/lit8 v2, v2, 0x2

    .line 4923
    :cond_1
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->id_:I

    # setter for: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->id_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->access$6702(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;I)I

    .line 4924
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 4925
    or-int/lit8 v2, v2, 0x4

    .line 4927
    :cond_2
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->total_:I

    # setter for: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->total_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->access$6802(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;I)I

    .line 4928
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 4929
    or-int/lit8 v2, v2, 0x8

    .line 4931
    :cond_3
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->perpage_:I

    # setter for: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->perpage_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->access$6902(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;I)I

    .line 4932
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 4933
    or-int/lit8 v2, v2, 0x10

    .line 4935
    :cond_4
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->curpage_:I

    # setter for: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->curpage_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->access$7002(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;I)I

    .line 4936
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->albumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v3, :cond_6

    .line 4937
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 4938
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->albumlist_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->albumlist_:Ljava/util/List;

    .line 4940
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x21

    iput v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->bitField0_:I

    .line 4942
    :cond_5
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->albumlist_:Ljava/util/List;

    # setter for: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->albumlist_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->access$7102(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;Ljava/util/List;)Ljava/util/List;

    .line 4946
    :goto_0
    # setter for: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->bitField0_:I
    invoke-static {v1, v2}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->access$7202(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;I)I

    .line 4947
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->onBuilt()V

    .line 4948
    return-object v1

    .line 4944
    :cond_6
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->albumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v3

    # setter for: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->albumlist_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->access$7102(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;Ljava/util/List;)Ljava/util/List;

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 4825
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->clear()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 4825
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->clear()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 4825
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->clear()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4825
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->clear()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4859
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 4860
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->label_:Ljava/lang/Object;

    .line 4861
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->bitField0_:I

    .line 4862
    iput v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->id_:I

    .line 4863
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->bitField0_:I

    .line 4864
    iput v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->total_:I

    .line 4865
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->bitField0_:I

    .line 4866
    iput v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->perpage_:I

    .line 4867
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->bitField0_:I

    .line 4868
    iput v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->curpage_:I

    .line 4869
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->bitField0_:I

    .line 4870
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->albumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 4871
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->albumlist_:Ljava/util/List;

    .line 4872
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->bitField0_:I

    .line 4876
    :goto_0
    return-object p0

    .line 4874
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->albumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearAlbumlist()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;
    .locals 1

    .prologue
    .line 5354
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->albumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 5355
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->albumlist_:Ljava/util/List;

    .line 5356
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->bitField0_:I

    .line 5357
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->onChanged()V

    .line 5361
    :goto_0
    return-object p0

    .line 5359
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->albumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearCurpage()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;
    .locals 1

    .prologue
    .line 5209
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->bitField0_:I

    .line 5210
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->curpage_:I

    .line 5211
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->onChanged()V

    .line 5212
    return-object p0
.end method

.method public clearId()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;
    .locals 1

    .prologue
    .line 5134
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->bitField0_:I

    .line 5135
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->id_:I

    .line 5136
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->onChanged()V

    .line 5137
    return-object p0
.end method

.method public clearLabel()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;
    .locals 1

    .prologue
    .line 5103
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->bitField0_:I

    .line 5104
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->getLabel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->label_:Ljava/lang/Object;

    .line 5105
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->onChanged()V

    .line 5106
    return-object p0
.end method

.method public clearPerpage()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;
    .locals 1

    .prologue
    .line 5184
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->bitField0_:I

    .line 5185
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->perpage_:I

    .line 5186
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->onChanged()V

    .line 5187
    return-object p0
.end method

.method public clearTotal()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;
    .locals 1

    .prologue
    .line 5159
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->bitField0_:I

    .line 5160
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->total_:I

    .line 5161
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->onChanged()V

    .line 5162
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 4825
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->clone()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 4825
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->clone()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 4825
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->clone()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 4825
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->clone()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4825
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->clone()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;
    .locals 2

    .prologue
    .line 4880
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->create()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;

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
    .line 4825
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->clone()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAlbumlist(I)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 5247
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->albumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 5248
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->albumlist_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;

    .line 5250
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->albumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;

    goto :goto_0
.end method

.method public getAlbumlistBuilder(I)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 5377
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->getAlbumlistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;

    return-object v0
.end method

.method public getAlbumlistBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5414
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->getAlbumlistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAlbumlistCount()I
    .locals 1

    .prologue
    .line 5238
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->albumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 5239
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->albumlist_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 5241
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->albumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getAlbumlistList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5230
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->albumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 5231
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->albumlist_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 5233
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->albumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getAlbumlistOrBuilder(I)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 5382
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->albumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 5383
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->albumlist_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumOrBuilder;

    .line 5385
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->albumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumOrBuilder;

    goto :goto_0
.end method

.method public getAlbumlistOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5390
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->albumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 5391
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->albumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 5393
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->albumlist_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getCurpage()I
    .locals 1

    .prologue
    .line 5198
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->curpage_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 4825
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4825
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;
    .locals 1

    .prologue
    .line 4889
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 4884
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 5123
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->id_:I

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 3

    .prologue
    .line 5081
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->label_:Ljava/lang/Object;

    .line 5082
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 5083
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 5085
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->label_:Ljava/lang/Object;

    .line 5088
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

.method public getPerpage()I
    .locals 1

    .prologue
    .line 5173
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->perpage_:I

    return v0
.end method

.method public getTotal()I
    .locals 1

    .prologue
    .line 5148
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->total_:I

    return v0
.end method

.method public hasCurpage()Z
    .locals 2

    .prologue
    .line 5194
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->bitField0_:I

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

.method public hasId()Z
    .locals 2

    .prologue
    .line 5119
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->bitField0_:I

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

.method public hasLabel()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 5077
    iget v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPerpage()Z
    .locals 2

    .prologue
    .line 5169
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->bitField0_:I

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

.method public hasTotal()Z
    .locals 2

    .prologue
    .line 5144
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->bitField0_:I

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
    .line 4834
    # getter for: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto;->internal_static_protobuf_ResourceApkAlbumList_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto;->access$6000()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 5010
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
    .line 4825
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 4825
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;

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
    .line 4825
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;

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
    .line 4825
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 4825
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;

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
    .line 4825
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5017
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 5020
    .local v2, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 5021
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    .line 5027
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 5029
    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 5030
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->onChanged()V

    .line 5031
    :goto_1
    return-object p0

    .line 5023
    :sswitch_0
    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 5024
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->onChanged()V

    goto :goto_1

    .line 5036
    :sswitch_1
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->bitField0_:I

    .line 5037
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->label_:Ljava/lang/Object;

    goto :goto_0

    .line 5041
    :sswitch_2
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->bitField0_:I

    .line 5042
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->id_:I

    goto :goto_0

    .line 5046
    :sswitch_3
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->bitField0_:I

    .line 5047
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->total_:I

    goto :goto_0

    .line 5051
    :sswitch_4
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->bitField0_:I

    .line 5052
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->perpage_:I

    goto :goto_0

    .line 5056
    :sswitch_5
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->bitField0_:I

    .line 5057
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->curpage_:I

    goto :goto_0

    .line 5061
    :sswitch_6
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->newBuilder()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;

    move-result-object v0

    .line 5063
    .local v0, "subBuilder":Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 5064
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->addAlbumlist(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;

    goto :goto_0

    .line 5021
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 4952
    instance-of v0, p1, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;

    if-eqz v0, :cond_0

    .line 4953
    check-cast p1, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;

    move-result-object p0

    .line 4956
    .end local p0    # "this":Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;
    :goto_0
    return-object p0

    .line 4955
    .restart local p0    # "this":Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;
    .locals 2
    .param p1, "other"    # Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;

    .prologue
    const/4 v0, 0x0

    .line 4962
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 5006
    :goto_0
    return-object p0

    .line 4965
    :cond_0
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->hasLabel()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4966
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->setLabel(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;

    .line 4968
    :cond_1
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->hasId()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4969
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->getId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->setId(I)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;

    .line 4971
    :cond_2
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->hasTotal()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4972
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->getTotal()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->setTotal(I)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;

    .line 4974
    :cond_3
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->hasPerpage()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4975
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->getPerpage()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->setPerpage(I)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;

    .line 4977
    :cond_4
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->hasCurpage()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4978
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->getCurpage()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->setCurpage(I)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;

    .line 4980
    :cond_5
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->albumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_8

    .line 4981
    # getter for: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->albumlist_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->access$7100(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 4982
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->albumlist_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4983
    # getter for: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->albumlist_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->access$7100(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->albumlist_:Ljava/util/List;

    .line 4984
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->bitField0_:I

    .line 4989
    :goto_1
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->onChanged()V

    .line 5005
    :cond_6
    :goto_2
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0

    .line 4986
    :cond_7
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->ensureAlbumlistIsMutable()V

    .line 4987
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->albumlist_:Ljava/util/List;

    # getter for: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->albumlist_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->access$7100(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 4992
    :cond_8
    # getter for: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->albumlist_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->access$7100(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 4993
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->albumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 4994
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->albumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 4995
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->albumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 4996
    # getter for: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->albumlist_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->access$7100(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->albumlist_:Ljava/util/List;

    .line 4997
    iget v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x21

    iput v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->bitField0_:I

    .line 4998
    # getter for: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->access$7300()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->getAlbumlistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :cond_9
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->albumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2

    .line 5001
    :cond_a
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->albumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    # getter for: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->albumlist_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;->access$7100(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2
.end method

.method public removeAlbumlist(I)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 5365
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->albumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 5366
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->ensureAlbumlistIsMutable()V

    .line 5367
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->albumlist_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 5368
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->onChanged()V

    .line 5372
    :goto_0
    return-object p0

    .line 5370
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->albumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public setAlbumlist(ILcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;

    .prologue
    .line 5273
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->albumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 5274
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->ensureAlbumlistIsMutable()V

    .line 5275
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->albumlist_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->build()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5276
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->onChanged()V

    .line 5281
    :goto_0
    return-object p0

    .line 5278
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->albumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->build()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setAlbumlist(ILcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;

    .prologue
    .line 5257
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->albumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 5258
    if-nez p2, :cond_0

    .line 5259
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5261
    :cond_0
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->ensureAlbumlistIsMutable()V

    .line 5262
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->albumlist_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5263
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->onChanged()V

    .line 5267
    :goto_0
    return-object p0

    .line 5265
    :cond_1
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->albumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setCurpage(I)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5202
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->bitField0_:I

    .line 5203
    iput p1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->curpage_:I

    .line 5204
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->onChanged()V

    .line 5205
    return-object p0
.end method

.method public setId(I)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5127
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->bitField0_:I

    .line 5128
    iput p1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->id_:I

    .line 5129
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->onChanged()V

    .line 5130
    return-object p0
.end method

.method public setLabel(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 5093
    if-nez p1, :cond_0

    .line 5094
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5096
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->bitField0_:I

    .line 5097
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->label_:Ljava/lang/Object;

    .line 5098
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->onChanged()V

    .line 5099
    return-object p0
.end method

.method setLabel(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 5110
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->bitField0_:I

    .line 5111
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->label_:Ljava/lang/Object;

    .line 5112
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->onChanged()V

    .line 5113
    return-void
.end method

.method public setPerpage(I)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5177
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->bitField0_:I

    .line 5178
    iput p1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->perpage_:I

    .line 5179
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->onChanged()V

    .line 5180
    return-object p0
.end method

.method public setTotal(I)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5152
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->bitField0_:I

    .line 5153
    iput p1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->total_:I

    .line 5154
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;->onChanged()V

    .line 5155
    return-object p0
.end method
