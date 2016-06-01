.class public final Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "MusicAlbumListProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbumOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;",
        ">;",
        "Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbumOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private coverUrl_:Ljava/lang/Object;

.field private description_:Ljava/lang/Object;

.field private id_:J

.field private musiclistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;",
            "Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;",
            "Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private musiclist_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;",
            ">;"
        }
    .end annotation
.end field

.field private name_:Ljava/lang/Object;

.field private releaseTime_:Ljava/lang/Object;

.field private sharer_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1715
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 1989
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->name_:Ljava/lang/Object;

    .line 2031
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->sharer_:Ljava/lang/Object;

    .line 2073
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->releaseTime_:Ljava/lang/Object;

    .line 2115
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->description_:Ljava/lang/Object;

    .line 2157
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->coverUrl_:Ljava/lang/Object;

    .line 2199
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->musiclist_:Ljava/util/List;

    .line 1716
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->maybeForceBuilderInitialization()V

    .line 1717
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 1720
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 1989
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->name_:Ljava/lang/Object;

    .line 2031
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->sharer_:Ljava/lang/Object;

    .line 2073
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->releaseTime_:Ljava/lang/Object;

    .line 2115
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->description_:Ljava/lang/Object;

    .line 2157
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->coverUrl_:Ljava/lang/Object;

    .line 2199
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->musiclist_:Ljava/util/List;

    .line 1721
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->maybeForceBuilderInitialization()V

    .line 1722
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/MusicAlbumListProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/MusicAlbumListProto$1;

    .prologue
    .line 1701
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1701
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;
    .locals 1

    .prologue
    .line 1701
    invoke-static {}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->create()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1781
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;

    move-result-object v0

    .line 1782
    .local v0, "result":Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1783
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 1786
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;
    .locals 1

    .prologue
    .line 1731
    new-instance v0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;-><init>()V

    return-object v0
.end method

.method private ensureMusiclistIsMutable()V
    .locals 2

    .prologue
    .line 2203
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-eq v0, v1, :cond_0

    .line 2204
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->musiclist_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->musiclist_:Ljava/util/List;

    .line 2206
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->bitField0_:I

    .line 2208
    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1706
    # getter for: Lcom/oppo/tribune/protobuf/MusicAlbumListProto;->internal_static_protobuf_ResourceMusicAlbum_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto;->access$1700()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getMusiclistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;",
            "Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;",
            "Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2401
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->musiclistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2402
    new-instance v1, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v2, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->musiclist_:Ljava/util/List;

    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v3, 0x40

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->isClean()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->musiclistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 2406
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->musiclist_:Ljava/util/List;

    .line 2408
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->musiclistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 2402
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 1725
    # getter for: Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->access$2200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1726
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->getMusiclistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 1728
    :cond_0
    return-void
.end method


# virtual methods
.method public addAllMusiclist(Ljava/lang/Iterable;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;",
            ">;)",
            "Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;"
        }
    .end annotation

    .prologue
    .line 2326
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;>;"
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->musiclistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2327
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->ensureMusiclistIsMutable()V

    .line 2328
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->musiclist_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 2329
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->onChanged()V

    .line 2333
    :goto_0
    return-object p0

    .line 2331
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->musiclistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addMusiclist(ILcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;

    .prologue
    .line 2313
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->musiclistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2314
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->ensureMusiclistIsMutable()V

    .line 2315
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->musiclist_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->build()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2316
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->onChanged()V

    .line 2321
    :goto_0
    return-object p0

    .line 2318
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->musiclistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->build()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addMusiclist(ILcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;

    .prologue
    .line 2285
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->musiclistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 2286
    if-nez p2, :cond_0

    .line 2287
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2289
    :cond_0
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->ensureMusiclistIsMutable()V

    .line 2290
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->musiclist_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2291
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->onChanged()V

    .line 2295
    :goto_0
    return-object p0

    .line 2293
    :cond_1
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->musiclistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addMusiclist(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;

    .prologue
    .line 2300
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->musiclistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2301
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->ensureMusiclistIsMutable()V

    .line 2302
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->musiclist_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->build()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2303
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->onChanged()V

    .line 2307
    :goto_0
    return-object p0

    .line 2305
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->musiclistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->build()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addMusiclist(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;
    .locals 1
    .param p1, "value"    # Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;

    .prologue
    .line 2269
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->musiclistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 2270
    if-nez p1, :cond_0

    .line 2271
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2273
    :cond_0
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->ensureMusiclistIsMutable()V

    .line 2274
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->musiclist_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2275
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->onChanged()V

    .line 2279
    :goto_0
    return-object p0

    .line 2277
    :cond_1
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->musiclistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addMusiclistBuilder()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;
    .locals 2

    .prologue
    .line 2381
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->getMusiclistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->getDefaultInstance()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;

    return-object v0
.end method

.method public addMusiclistBuilder(I)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 2389
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->getMusiclistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->getDefaultInstance()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1701
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->build()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1701
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->build()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;
    .locals 2

    .prologue
    .line 1772
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;

    move-result-object v0

    .line 1773
    .local v0, "result":Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1774
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 1776
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1701
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1701
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;
    .locals 6

    .prologue
    .line 1790
    new-instance v1, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;-><init>(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;Lcom/oppo/tribune/protobuf/MusicAlbumListProto$1;)V

    .line 1792
    .local v1, "result":Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->bitField0_:I

    .line 1793
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 1794
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1795
    or-int/lit8 v2, v2, 0x1

    .line 1797
    :cond_0
    iget-wide v4, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->id_:J

    # setter for: Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->id_:J
    invoke-static {v1, v4, v5}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->access$2402(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;J)J

    .line 1798
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 1799
    or-int/lit8 v2, v2, 0x2

    .line 1801
    :cond_1
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->name_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->name_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->access$2502(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1802
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 1803
    or-int/lit8 v2, v2, 0x4

    .line 1805
    :cond_2
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->sharer_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->sharer_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->access$2602(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1806
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 1807
    or-int/lit8 v2, v2, 0x8

    .line 1809
    :cond_3
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->releaseTime_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->releaseTime_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->access$2702(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1810
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 1811
    or-int/lit8 v2, v2, 0x10

    .line 1813
    :cond_4
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->description_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->description_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->access$2802(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1814
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 1815
    or-int/lit8 v2, v2, 0x20

    .line 1817
    :cond_5
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->coverUrl_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->coverUrl_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->access$2902(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1818
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->musiclistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v3, :cond_7

    .line 1819
    iget v3, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 1820
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->musiclist_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->musiclist_:Ljava/util/List;

    .line 1822
    iget v3, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x41

    iput v3, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->bitField0_:I

    .line 1824
    :cond_6
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->musiclist_:Ljava/util/List;

    # setter for: Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->musiclist_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->access$3002(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;Ljava/util/List;)Ljava/util/List;

    .line 1828
    :goto_0
    # setter for: Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->bitField0_:I
    invoke-static {v1, v2}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->access$3102(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;I)I

    .line 1829
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->onBuilt()V

    .line 1830
    return-object v1

    .line 1826
    :cond_7
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->musiclistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v3

    # setter for: Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->musiclist_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->access$3002(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;Ljava/util/List;)Ljava/util/List;

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1701
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->clear()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1701
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->clear()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1701
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->clear()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1701
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->clear()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;
    .locals 2

    .prologue
    .line 1735
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 1736
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->id_:J

    .line 1737
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->bitField0_:I

    .line 1738
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->name_:Ljava/lang/Object;

    .line 1739
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->bitField0_:I

    .line 1740
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->sharer_:Ljava/lang/Object;

    .line 1741
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->bitField0_:I

    .line 1742
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->releaseTime_:Ljava/lang/Object;

    .line 1743
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->bitField0_:I

    .line 1744
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->description_:Ljava/lang/Object;

    .line 1745
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->bitField0_:I

    .line 1746
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->coverUrl_:Ljava/lang/Object;

    .line 1747
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->bitField0_:I

    .line 1748
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->musiclistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1749
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->musiclist_:Ljava/util/List;

    .line 1750
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->bitField0_:I

    .line 1754
    :goto_0
    return-object p0

    .line 1752
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->musiclistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearCoverUrl()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;
    .locals 1

    .prologue
    .line 2186
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->bitField0_:I

    .line 2187
    invoke-static {}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->getDefaultInstance()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->getCoverUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->coverUrl_:Ljava/lang/Object;

    .line 2188
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->onChanged()V

    .line 2189
    return-object p0
.end method

.method public clearDescription()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;
    .locals 1

    .prologue
    .line 2144
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->bitField0_:I

    .line 2145
    invoke-static {}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->getDefaultInstance()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->description_:Ljava/lang/Object;

    .line 2146
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->onChanged()V

    .line 2147
    return-object p0
.end method

.method public clearId()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;
    .locals 2

    .prologue
    .line 1982
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->bitField0_:I

    .line 1983
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->id_:J

    .line 1984
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->onChanged()V

    .line 1985
    return-object p0
.end method

.method public clearMusiclist()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;
    .locals 1

    .prologue
    .line 2337
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->musiclistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2338
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->musiclist_:Ljava/util/List;

    .line 2339
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->bitField0_:I

    .line 2340
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->onChanged()V

    .line 2344
    :goto_0
    return-object p0

    .line 2342
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->musiclistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearName()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;
    .locals 1

    .prologue
    .line 2018
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->bitField0_:I

    .line 2019
    invoke-static {}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->getDefaultInstance()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->name_:Ljava/lang/Object;

    .line 2020
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->onChanged()V

    .line 2021
    return-object p0
.end method

.method public clearReleaseTime()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;
    .locals 1

    .prologue
    .line 2102
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->bitField0_:I

    .line 2103
    invoke-static {}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->getDefaultInstance()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->getReleaseTime()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->releaseTime_:Ljava/lang/Object;

    .line 2104
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->onChanged()V

    .line 2105
    return-object p0
.end method

.method public clearSharer()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;
    .locals 1

    .prologue
    .line 2060
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->bitField0_:I

    .line 2061
    invoke-static {}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->getDefaultInstance()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->getSharer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->sharer_:Ljava/lang/Object;

    .line 2062
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->onChanged()V

    .line 2063
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1701
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->clone()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1701
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->clone()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1701
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->clone()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1701
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->clone()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1701
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->clone()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;
    .locals 2

    .prologue
    .line 1758
    invoke-static {}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->create()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;

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
    .line 1701
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->clone()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCoverUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2164
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->coverUrl_:Ljava/lang/Object;

    .line 2165
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2166
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2168
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->coverUrl_:Ljava/lang/Object;

    .line 2171
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

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1701
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1701
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;
    .locals 1

    .prologue
    .line 1767
    invoke-static {}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->getDefaultInstance()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2122
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->description_:Ljava/lang/Object;

    .line 2123
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2124
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2126
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->description_:Ljava/lang/Object;

    .line 2129
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

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1762
    invoke-static {}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 1971
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->id_:J

    return-wide v0
.end method

.method public getMusiclist(I)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 2230
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->musiclistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2231
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->musiclist_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;

    .line 2233
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->musiclistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;

    goto :goto_0
.end method

.method public getMusiclistBuilder(I)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 2360
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->getMusiclistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;

    return-object v0
.end method

.method public getMusiclistBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2397
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->getMusiclistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMusiclistCount()I
    .locals 1

    .prologue
    .line 2221
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->musiclistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2222
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->musiclist_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 2224
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->musiclistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getMusiclistList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2213
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->musiclistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2214
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->musiclist_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 2216
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->musiclistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getMusiclistOrBuilder(I)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 2365
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->musiclistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2366
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->musiclist_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicOrBuilder;

    .line 2368
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->musiclistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicOrBuilder;

    goto :goto_0
.end method

.method public getMusiclistOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2373
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->musiclistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 2374
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->musiclistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 2376
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->musiclist_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1996
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->name_:Ljava/lang/Object;

    .line 1997
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1998
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2000
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->name_:Ljava/lang/Object;

    .line 2003
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

.method public getReleaseTime()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2080
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->releaseTime_:Ljava/lang/Object;

    .line 2081
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2082
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2084
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->releaseTime_:Ljava/lang/Object;

    .line 2087
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

.method public getSharer()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2038
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->sharer_:Ljava/lang/Object;

    .line 2039
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2040
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2042
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->sharer_:Ljava/lang/Object;

    .line 2045
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

.method public hasCoverUrl()Z
    .locals 2

    .prologue
    .line 2160
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->bitField0_:I

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

.method public hasDescription()Z
    .locals 2

    .prologue
    .line 2118
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->bitField0_:I

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
    const/4 v0, 0x1

    .line 1967
    iget v1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasName()Z
    .locals 2

    .prologue
    .line 1992
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->bitField0_:I

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

.method public hasReleaseTime()Z
    .locals 2

    .prologue
    .line 2076
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->bitField0_:I

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

.method public hasSharer()Z
    .locals 2

    .prologue
    .line 2034
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->bitField0_:I

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
    .line 1710
    # getter for: Lcom/oppo/tribune/protobuf/MusicAlbumListProto;->internal_static_protobuf_ResourceMusicAlbum_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto;->access$1800()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1895
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
    .line 1701
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 1701
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;

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
    .line 1701
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;

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
    .line 1701
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 1701
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;

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
    .line 1701
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;
    .locals 6
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1902
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 1905
    .local v2, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 1906
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    .line 1912
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1914
    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 1915
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->onChanged()V

    .line 1916
    :goto_1
    return-object p0

    .line 1908
    :sswitch_0
    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 1909
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->onChanged()V

    goto :goto_1

    .line 1921
    :sswitch_1
    iget v3, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->bitField0_:I

    .line 1922
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->id_:J

    goto :goto_0

    .line 1926
    :sswitch_2
    iget v3, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->bitField0_:I

    .line 1927
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->name_:Ljava/lang/Object;

    goto :goto_0

    .line 1931
    :sswitch_3
    iget v3, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->bitField0_:I

    .line 1932
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->sharer_:Ljava/lang/Object;

    goto :goto_0

    .line 1936
    :sswitch_4
    iget v3, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->bitField0_:I

    .line 1937
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->releaseTime_:Ljava/lang/Object;

    goto :goto_0

    .line 1941
    :sswitch_5
    iget v3, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->bitField0_:I

    .line 1942
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->description_:Ljava/lang/Object;

    goto :goto_0

    .line 1946
    :sswitch_6
    iget v3, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->bitField0_:I

    .line 1947
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->coverUrl_:Ljava/lang/Object;

    goto :goto_0

    .line 1951
    :sswitch_7
    invoke-static {}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->newBuilder()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;

    move-result-object v0

    .line 1953
    .local v0, "subBuilder":Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1954
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->addMusiclist(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;

    goto :goto_0

    .line 1906
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 1834
    instance-of v0, p1, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;

    if-eqz v0, :cond_0

    .line 1835
    check-cast p1, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;

    move-result-object p0

    .line 1838
    .end local p0    # "this":Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;
    :goto_0
    return-object p0

    .line 1837
    .restart local p0    # "this":Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;
    .locals 4
    .param p1, "other"    # Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;

    .prologue
    const/4 v0, 0x0

    .line 1844
    invoke-static {}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->getDefaultInstance()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 1891
    :goto_0
    return-object p0

    .line 1847
    :cond_0
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->hasId()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1848
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->getId()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->setId(J)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;

    .line 1850
    :cond_1
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->hasName()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1851
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->setName(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;

    .line 1853
    :cond_2
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->hasSharer()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1854
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->getSharer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->setSharer(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;

    .line 1856
    :cond_3
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->hasReleaseTime()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1857
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->getReleaseTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->setReleaseTime(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;

    .line 1859
    :cond_4
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->hasDescription()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1860
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->setDescription(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;

    .line 1862
    :cond_5
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->hasCoverUrl()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1863
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->getCoverUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->setCoverUrl(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;

    .line 1865
    :cond_6
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->musiclistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_9

    .line 1866
    # getter for: Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->musiclist_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->access$3000(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1867
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->musiclist_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1868
    # getter for: Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->musiclist_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->access$3000(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->musiclist_:Ljava/util/List;

    .line 1869
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->bitField0_:I

    .line 1874
    :goto_1
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->onChanged()V

    .line 1890
    :cond_7
    :goto_2
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0

    .line 1871
    :cond_8
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->ensureMusiclistIsMutable()V

    .line 1872
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->musiclist_:Ljava/util/List;

    # getter for: Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->musiclist_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->access$3000(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 1877
    :cond_9
    # getter for: Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->musiclist_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->access$3000(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1878
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->musiclistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1879
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->musiclistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 1880
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->musiclistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 1881
    # getter for: Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->musiclist_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->access$3000(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->musiclist_:Ljava/util/List;

    .line 1882
    iget v1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x41

    iput v1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->bitField0_:I

    .line 1883
    # getter for: Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->access$3200()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->getMusiclistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :cond_a
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->musiclistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2

    .line 1886
    :cond_b
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->musiclistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    # getter for: Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->musiclist_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->access$3000(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2
.end method

.method public removeMusiclist(I)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 2348
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->musiclistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2349
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->ensureMusiclistIsMutable()V

    .line 2350
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->musiclist_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2351
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->onChanged()V

    .line 2355
    :goto_0
    return-object p0

    .line 2353
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->musiclistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public setCoverUrl(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2176
    if-nez p1, :cond_0

    .line 2177
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2179
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->bitField0_:I

    .line 2180
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->coverUrl_:Ljava/lang/Object;

    .line 2181
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->onChanged()V

    .line 2182
    return-object p0
.end method

.method setCoverUrl(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 2193
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->bitField0_:I

    .line 2194
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->coverUrl_:Ljava/lang/Object;

    .line 2195
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->onChanged()V

    .line 2196
    return-void
.end method

.method public setDescription(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2134
    if-nez p1, :cond_0

    .line 2135
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2137
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->bitField0_:I

    .line 2138
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->description_:Ljava/lang/Object;

    .line 2139
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->onChanged()V

    .line 2140
    return-object p0
.end method

.method setDescription(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 2151
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->bitField0_:I

    .line 2152
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->description_:Ljava/lang/Object;

    .line 2153
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->onChanged()V

    .line 2154
    return-void
.end method

.method public setId(J)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 1975
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->bitField0_:I

    .line 1976
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->id_:J

    .line 1977
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->onChanged()V

    .line 1978
    return-object p0
.end method

.method public setMusiclist(ILcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;

    .prologue
    .line 2256
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->musiclistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2257
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->ensureMusiclistIsMutable()V

    .line 2258
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->musiclist_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->build()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2259
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->onChanged()V

    .line 2264
    :goto_0
    return-object p0

    .line 2261
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->musiclistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->build()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setMusiclist(ILcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;

    .prologue
    .line 2240
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->musiclistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 2241
    if-nez p2, :cond_0

    .line 2242
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2244
    :cond_0
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->ensureMusiclistIsMutable()V

    .line 2245
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->musiclist_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2246
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->onChanged()V

    .line 2250
    :goto_0
    return-object p0

    .line 2248
    :cond_1
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->musiclistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setName(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2008
    if-nez p1, :cond_0

    .line 2009
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2011
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->bitField0_:I

    .line 2012
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->name_:Ljava/lang/Object;

    .line 2013
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->onChanged()V

    .line 2014
    return-object p0
.end method

.method setName(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 2025
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->bitField0_:I

    .line 2026
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->name_:Ljava/lang/Object;

    .line 2027
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->onChanged()V

    .line 2028
    return-void
.end method

.method public setReleaseTime(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2092
    if-nez p1, :cond_0

    .line 2093
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2095
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->bitField0_:I

    .line 2096
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->releaseTime_:Ljava/lang/Object;

    .line 2097
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->onChanged()V

    .line 2098
    return-object p0
.end method

.method setReleaseTime(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 2109
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->bitField0_:I

    .line 2110
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->releaseTime_:Ljava/lang/Object;

    .line 2111
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->onChanged()V

    .line 2112
    return-void
.end method

.method public setSharer(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2050
    if-nez p1, :cond_0

    .line 2051
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2053
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->bitField0_:I

    .line 2054
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->sharer_:Ljava/lang/Object;

    .line 2055
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->onChanged()V

    .line 2056
    return-object p0
.end method

.method setSharer(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 2067
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->bitField0_:I

    .line 2068
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->sharer_:Ljava/lang/Object;

    .line 2069
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->onChanged()V

    .line 2070
    return-void
.end method
