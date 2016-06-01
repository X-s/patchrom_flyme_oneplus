.class public final Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "ToplineGalleryProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlistOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;",
        ">;",
        "Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlistOrBuilder;"
    }
.end annotation


# instance fields
.field private adlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;",
            "Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;",
            "Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private adlist_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;",
            ">;"
        }
    .end annotation
.end field

.field private bitField0_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1085
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 1254
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->adlist_:Ljava/util/List;

    .line 1086
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->maybeForceBuilderInitialization()V

    .line 1087
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 1090
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 1254
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->adlist_:Ljava/util/List;

    .line 1091
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->maybeForceBuilderInitialization()V

    .line 1092
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/ToplineGalleryProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/ToplineGalleryProto$1;

    .prologue
    .line 1071
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1071
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;
    .locals 1

    .prologue
    .line 1071
    invoke-static {}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->create()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1139
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;

    move-result-object v0

    .line 1140
    .local v0, "result":Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1141
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 1144
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;
    .locals 1

    .prologue
    .line 1101
    new-instance v0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;-><init>()V

    return-object v0
.end method

.method private ensureAdlistIsMutable()V
    .locals 2

    .prologue
    .line 1258
    iget v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1259
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->adlist_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->adlist_:Ljava/util/List;

    .line 1261
    iget v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->bitField0_:I

    .line 1263
    :cond_0
    return-void
.end method

.method private getAdlistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;",
            "Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;",
            "Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 1450
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->adlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_0

    .line 1451
    new-instance v1, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v2, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->adlist_:Ljava/util/List;

    iget v3, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v0, :cond_1

    :goto_0
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->isClean()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v1, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->adlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 1454
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->adlist_:Ljava/util/List;

    .line 1456
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->adlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 1451
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1076
    # getter for: Lcom/oppo/tribune/protobuf/ToplineGalleryProto;->internal_static_protobuf_pb_adlist_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto;->access$1400()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 1095
    # getter for: Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;->access$1900()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1096
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->getAdlistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 1098
    :cond_0
    return-void
.end method


# virtual methods
.method public addAdlist(ILcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;

    .prologue
    .line 1365
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->adlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1366
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->ensureAdlistIsMutable()V

    .line 1367
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->adlist_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->build()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1368
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->onChanged()V

    .line 1372
    :goto_0
    return-object p0

    .line 1370
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->adlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->build()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addAdlist(ILcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;

    .prologue
    .line 1337
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->adlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1338
    if-nez p2, :cond_0

    .line 1339
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1341
    :cond_0
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->ensureAdlistIsMutable()V

    .line 1342
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->adlist_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1343
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->onChanged()V

    .line 1347
    :goto_0
    return-object p0

    .line 1345
    :cond_1
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->adlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addAdlist(Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;

    .prologue
    .line 1352
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->adlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1353
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->ensureAdlistIsMutable()V

    .line 1354
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->adlist_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->build()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1355
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->onChanged()V

    .line 1359
    :goto_0
    return-object p0

    .line 1357
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->adlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->build()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addAdlist(Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;
    .locals 1
    .param p1, "value"    # Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;

    .prologue
    .line 1322
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->adlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1323
    if-nez p1, :cond_0

    .line 1324
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1326
    :cond_0
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->ensureAdlistIsMutable()V

    .line 1327
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->adlist_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1328
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->onChanged()V

    .line 1332
    :goto_0
    return-object p0

    .line 1330
    :cond_1
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->adlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addAdlistBuilder()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;
    .locals 2

    .prologue
    .line 1432
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->getAdlistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;

    return-object v0
.end method

.method public addAdlistBuilder(I)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 1439
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->getAdlistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;

    return-object v0
.end method

.method public addAllAdlist(Ljava/lang/Iterable;)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;",
            ">;)",
            "Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;"
        }
    .end annotation

    .prologue
    .line 1377
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;>;"
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->adlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1378
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->ensureAdlistIsMutable()V

    .line 1379
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->adlist_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1380
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->onChanged()V

    .line 1384
    :goto_0
    return-object p0

    .line 1382
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->adlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1071
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->build()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1071
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->build()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;
    .locals 2

    .prologue
    .line 1130
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;

    move-result-object v0

    .line 1131
    .local v0, "result":Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1132
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 1134
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1071
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1071
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;
    .locals 4

    .prologue
    .line 1148
    new-instance v1, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;-><init>(Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;Lcom/oppo/tribune/protobuf/ToplineGalleryProto$1;)V

    .line 1150
    .local v1, "result":Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;
    iget v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->bitField0_:I

    .line 1151
    .local v0, "from_bitField0_":I
    iget-object v2, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->adlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v2, :cond_1

    .line 1152
    iget v2, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1153
    iget-object v2, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->adlist_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->adlist_:Ljava/util/List;

    .line 1155
    iget v2, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->bitField0_:I

    .line 1157
    :cond_0
    iget-object v2, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->adlist_:Ljava/util/List;

    # setter for: Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;->adlist_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;->access$2102(Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;Ljava/util/List;)Ljava/util/List;

    .line 1161
    :goto_0
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->onBuilt()V

    .line 1162
    return-object v1

    .line 1159
    :cond_1
    iget-object v2, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->adlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v2}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v2

    # setter for: Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;->adlist_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;->access$2102(Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;Ljava/util/List;)Ljava/util/List;

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1071
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->clear()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1071
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->clear()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1071
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->clear()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1071
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->clear()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;
    .locals 1

    .prologue
    .line 1105
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 1106
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->adlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1107
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->adlist_:Ljava/util/List;

    .line 1108
    iget v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->bitField0_:I

    .line 1112
    :goto_0
    return-object p0

    .line 1110
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->adlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearAdlist()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;
    .locals 1

    .prologue
    .line 1388
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->adlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1389
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->adlist_:Ljava/util/List;

    .line 1390
    iget v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->bitField0_:I

    .line 1391
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->onChanged()V

    .line 1395
    :goto_0
    return-object p0

    .line 1393
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->adlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1071
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->clone()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1071
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->clone()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1071
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->clone()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1071
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->clone()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1071
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->clone()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;
    .locals 2

    .prologue
    .line 1116
    invoke-static {}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->create()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;

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
    .line 1071
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->clone()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAdlist(I)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1285
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->adlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1286
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->adlist_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;

    .line 1288
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->adlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;

    goto :goto_0
.end method

.method public getAdlistBuilder(I)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1411
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->getAdlistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;

    return-object v0
.end method

.method public getAdlistBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1446
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->getAdlistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAdlistCount()I
    .locals 1

    .prologue
    .line 1276
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->adlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1277
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->adlist_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1279
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->adlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getAdlistList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1268
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->adlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1269
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->adlist_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1271
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->adlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getAdlistOrBuilder(I)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1416
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->adlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1417
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->adlist_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adOrBuilder;

    .line 1419
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->adlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adOrBuilder;

    goto :goto_0
.end method

.method public getAdlistOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1424
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->adlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 1425
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->adlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 1427
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->adlist_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1071
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1071
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;
    .locals 1

    .prologue
    .line 1125
    invoke-static {}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1120
    invoke-static {}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 1080
    # getter for: Lcom/oppo/tribune/protobuf/ToplineGalleryProto;->internal_static_protobuf_pb_adlist_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto;->access$1500()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    .line 1209
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->getAdlistCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1210
    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->getAdlist(I)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1212
    const/4 v1, 0x0

    .line 1215
    :goto_1
    return v1

    .line 1209
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1215
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
    .line 1071
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 1071
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;

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
    .line 1071
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;

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
    .line 1071
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 1071
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;

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
    .line 1071
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1222
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 1225
    .local v2, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 1226
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    .line 1232
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1234
    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 1235
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->onChanged()V

    .line 1236
    :goto_1
    return-object p0

    .line 1228
    :sswitch_0
    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 1229
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->onChanged()V

    goto :goto_1

    .line 1241
    :sswitch_1
    invoke-static {}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->newBuilder()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;

    move-result-object v0

    .line 1243
    .local v0, "subBuilder":Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1244
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->addAdlist(Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;

    goto :goto_0

    .line 1226
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 1166
    instance-of v0, p1, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;

    if-eqz v0, :cond_0

    .line 1167
    check-cast p1, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;

    move-result-object p0

    .line 1170
    .end local p0    # "this":Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;
    :goto_0
    return-object p0

    .line 1169
    .restart local p0    # "this":Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;
    .locals 2
    .param p1, "other"    # Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;

    .prologue
    const/4 v0, 0x0

    .line 1176
    invoke-static {}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 1205
    :goto_0
    return-object p0

    .line 1179
    :cond_0
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->adlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_3

    .line 1180
    # getter for: Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;->adlist_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;->access$2100(Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1181
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->adlist_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1182
    # getter for: Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;->adlist_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;->access$2100(Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->adlist_:Ljava/util/List;

    .line 1183
    iget v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->bitField0_:I

    .line 1188
    :goto_1
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->onChanged()V

    .line 1204
    :cond_1
    :goto_2
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0

    .line 1185
    :cond_2
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->ensureAdlistIsMutable()V

    .line 1186
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->adlist_:Ljava/util/List;

    # getter for: Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;->adlist_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;->access$2100(Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 1191
    :cond_3
    # getter for: Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;->adlist_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;->access$2100(Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1192
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->adlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1193
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->adlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 1194
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->adlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 1195
    # getter for: Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;->adlist_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;->access$2100(Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->adlist_:Ljava/util/List;

    .line 1196
    iget v1, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->bitField0_:I

    .line 1197
    # getter for: Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;->access$2200()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->getAdlistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :cond_4
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->adlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2

    .line 1200
    :cond_5
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->adlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    # getter for: Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;->adlist_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;->access$2100(Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2
.end method

.method public removeAdlist(I)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1399
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->adlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1400
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->ensureAdlistIsMutable()V

    .line 1401
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->adlist_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1402
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->onChanged()V

    .line 1406
    :goto_0
    return-object p0

    .line 1404
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->adlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public setAdlist(ILcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;

    .prologue
    .line 1310
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->adlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1311
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->ensureAdlistIsMutable()V

    .line 1312
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->adlist_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->build()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1313
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->onChanged()V

    .line 1317
    :goto_0
    return-object p0

    .line 1315
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->adlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;->build()Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setAdlist(ILcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;

    .prologue
    .line 1294
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->adlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1295
    if-nez p2, :cond_0

    .line 1296
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1298
    :cond_0
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->ensureAdlistIsMutable()V

    .line 1299
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->adlist_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1300
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->onChanged()V

    .line 1304
    :goto_0
    return-object p0

    .line 1302
    :cond_1
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;->adlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method
