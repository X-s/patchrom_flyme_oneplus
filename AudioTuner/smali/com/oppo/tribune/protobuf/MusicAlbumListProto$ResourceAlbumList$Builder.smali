.class public final Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "MusicAlbumListProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumListOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;",
        ">;",
        "Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumListOrBuilder;"
    }
.end annotation


# instance fields
.field private albumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;",
            "Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;",
            "Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbumOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private albumlist_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;",
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
    .line 2806
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 3041
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->label_:Ljava/lang/Object;

    .line 3183
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->albumlist_:Ljava/util/List;

    .line 2807
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->maybeForceBuilderInitialization()V

    .line 2808
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 2811
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 3041
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->label_:Ljava/lang/Object;

    .line 3183
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->albumlist_:Ljava/util/List;

    .line 2812
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->maybeForceBuilderInitialization()V

    .line 2813
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/MusicAlbumListProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/MusicAlbumListProto$1;

    .prologue
    .line 2792
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2792
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3600()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;
    .locals 1

    .prologue
    .line 2792
    invoke-static {}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->create()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2870
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;

    move-result-object v0

    .line 2871
    .local v0, "result":Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2872
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 2875
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;
    .locals 1

    .prologue
    .line 2822
    new-instance v0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;-><init>()V

    return-object v0
.end method

.method private ensureAlbumlistIsMutable()V
    .locals 2

    .prologue
    .line 3187
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    .line 3188
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->albumlist_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->albumlist_:Ljava/util/List;

    .line 3190
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->bitField0_:I

    .line 3192
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
            "Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;",
            "Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;",
            "Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbumOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3385
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->albumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 3386
    new-instance v1, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v2, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->albumlist_:Ljava/util/List;

    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v3, 0x20

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->isClean()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->albumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 3390
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->albumlist_:Ljava/util/List;

    .line 3392
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->albumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 3386
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 2797
    # getter for: Lcom/oppo/tribune/protobuf/MusicAlbumListProto;->internal_static_protobuf_ResourceAlbumList_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto;->access$3300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 2816
    # getter for: Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->access$3800()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2817
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->getAlbumlistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 2819
    :cond_0
    return-void
.end method


# virtual methods
.method public addAlbumlist(ILcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;

    .prologue
    .line 3297
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->albumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 3298
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->ensureAlbumlistIsMutable()V

    .line 3299
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->albumlist_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->build()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3300
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->onChanged()V

    .line 3305
    :goto_0
    return-object p0

    .line 3302
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->albumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->build()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addAlbumlist(ILcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;

    .prologue
    .line 3269
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->albumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 3270
    if-nez p2, :cond_0

    .line 3271
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3273
    :cond_0
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->ensureAlbumlistIsMutable()V

    .line 3274
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->albumlist_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3275
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->onChanged()V

    .line 3279
    :goto_0
    return-object p0

    .line 3277
    :cond_1
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->albumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addAlbumlist(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;

    .prologue
    .line 3284
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->albumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 3285
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->ensureAlbumlistIsMutable()V

    .line 3286
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->albumlist_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->build()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3287
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->onChanged()V

    .line 3291
    :goto_0
    return-object p0

    .line 3289
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->albumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->build()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addAlbumlist(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;
    .locals 1
    .param p1, "value"    # Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;

    .prologue
    .line 3253
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->albumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 3254
    if-nez p1, :cond_0

    .line 3255
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3257
    :cond_0
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->ensureAlbumlistIsMutable()V

    .line 3258
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->albumlist_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3259
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->onChanged()V

    .line 3263
    :goto_0
    return-object p0

    .line 3261
    :cond_1
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->albumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addAlbumlistBuilder()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;
    .locals 2

    .prologue
    .line 3365
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->getAlbumlistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->getDefaultInstance()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;

    return-object v0
.end method

.method public addAlbumlistBuilder(I)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 3373
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->getAlbumlistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->getDefaultInstance()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;

    return-object v0
.end method

.method public addAllAlbumlist(Ljava/lang/Iterable;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;",
            ">;)",
            "Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;"
        }
    .end annotation

    .prologue
    .line 3310
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;>;"
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->albumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 3311
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->ensureAlbumlistIsMutable()V

    .line 3312
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->albumlist_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 3313
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->onChanged()V

    .line 3317
    :goto_0
    return-object p0

    .line 3315
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->albumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2792
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->build()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2792
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->build()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;
    .locals 2

    .prologue
    .line 2861
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;

    move-result-object v0

    .line 2862
    .local v0, "result":Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2863
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 2865
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2792
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2792
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;
    .locals 5

    .prologue
    .line 2879
    new-instance v1, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;-><init>(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;Lcom/oppo/tribune/protobuf/MusicAlbumListProto$1;)V

    .line 2881
    .local v1, "result":Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->bitField0_:I

    .line 2882
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 2883
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 2884
    or-int/lit8 v2, v2, 0x1

    .line 2886
    :cond_0
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->label_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->label_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->access$4002(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2887
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 2888
    or-int/lit8 v2, v2, 0x2

    .line 2890
    :cond_1
    iget v3, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->id_:I

    # setter for: Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->id_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->access$4102(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;I)I

    .line 2891
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 2892
    or-int/lit8 v2, v2, 0x4

    .line 2894
    :cond_2
    iget v3, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->total_:I

    # setter for: Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->total_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->access$4202(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;I)I

    .line 2895
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 2896
    or-int/lit8 v2, v2, 0x8

    .line 2898
    :cond_3
    iget v3, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->perpage_:I

    # setter for: Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->perpage_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->access$4302(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;I)I

    .line 2899
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 2900
    or-int/lit8 v2, v2, 0x10

    .line 2902
    :cond_4
    iget v3, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->curpage_:I

    # setter for: Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->curpage_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->access$4402(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;I)I

    .line 2903
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->albumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v3, :cond_6

    .line 2904
    iget v3, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 2905
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->albumlist_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->albumlist_:Ljava/util/List;

    .line 2907
    iget v3, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x21

    iput v3, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->bitField0_:I

    .line 2909
    :cond_5
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->albumlist_:Ljava/util/List;

    # setter for: Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->albumlist_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->access$4502(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;Ljava/util/List;)Ljava/util/List;

    .line 2913
    :goto_0
    # setter for: Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->bitField0_:I
    invoke-static {v1, v2}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->access$4602(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;I)I

    .line 2914
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->onBuilt()V

    .line 2915
    return-object v1

    .line 2911
    :cond_6
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->albumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v3

    # setter for: Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->albumlist_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->access$4502(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;Ljava/util/List;)Ljava/util/List;

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 2792
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->clear()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 2792
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->clear()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2792
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->clear()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2792
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->clear()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2826
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 2827
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->label_:Ljava/lang/Object;

    .line 2828
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->bitField0_:I

    .line 2829
    iput v1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->id_:I

    .line 2830
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->bitField0_:I

    .line 2831
    iput v1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->total_:I

    .line 2832
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->bitField0_:I

    .line 2833
    iput v1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->perpage_:I

    .line 2834
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->bitField0_:I

    .line 2835
    iput v1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->curpage_:I

    .line 2836
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->bitField0_:I

    .line 2837
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->albumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2838
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->albumlist_:Ljava/util/List;

    .line 2839
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->bitField0_:I

    .line 2843
    :goto_0
    return-object p0

    .line 2841
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->albumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearAlbumlist()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;
    .locals 1

    .prologue
    .line 3321
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->albumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 3322
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->albumlist_:Ljava/util/List;

    .line 3323
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->bitField0_:I

    .line 3324
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->onChanged()V

    .line 3328
    :goto_0
    return-object p0

    .line 3326
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->albumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearCurpage()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;
    .locals 1

    .prologue
    .line 3176
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->bitField0_:I

    .line 3177
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->curpage_:I

    .line 3178
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->onChanged()V

    .line 3179
    return-object p0
.end method

.method public clearId()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;
    .locals 1

    .prologue
    .line 3101
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->bitField0_:I

    .line 3102
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->id_:I

    .line 3103
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->onChanged()V

    .line 3104
    return-object p0
.end method

.method public clearLabel()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;
    .locals 1

    .prologue
    .line 3070
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->bitField0_:I

    .line 3071
    invoke-static {}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->getDefaultInstance()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->getLabel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->label_:Ljava/lang/Object;

    .line 3072
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->onChanged()V

    .line 3073
    return-object p0
.end method

.method public clearPerpage()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;
    .locals 1

    .prologue
    .line 3151
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->bitField0_:I

    .line 3152
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->perpage_:I

    .line 3153
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->onChanged()V

    .line 3154
    return-object p0
.end method

.method public clearTotal()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;
    .locals 1

    .prologue
    .line 3126
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->bitField0_:I

    .line 3127
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->total_:I

    .line 3128
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->onChanged()V

    .line 3129
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 2792
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->clone()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 2792
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->clone()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 2792
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->clone()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2792
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->clone()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2792
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->clone()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;
    .locals 2

    .prologue
    .line 2847
    invoke-static {}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->create()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;

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
    .line 2792
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->clone()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAlbumlist(I)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 3214
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->albumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 3215
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->albumlist_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;

    .line 3217
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->albumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;

    goto :goto_0
.end method

.method public getAlbumlistBuilder(I)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 3344
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->getAlbumlistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;

    return-object v0
.end method

.method public getAlbumlistBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3381
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->getAlbumlistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAlbumlistCount()I
    .locals 1

    .prologue
    .line 3205
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->albumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 3206
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->albumlist_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 3208
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->albumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

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
            "Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3197
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->albumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 3198
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->albumlist_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 3200
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->albumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getAlbumlistOrBuilder(I)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbumOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 3349
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->albumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 3350
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->albumlist_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbumOrBuilder;

    .line 3352
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->albumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbumOrBuilder;

    goto :goto_0
.end method

.method public getAlbumlistOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbumOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3357
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->albumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 3358
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->albumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 3360
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->albumlist_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getCurpage()I
    .locals 1

    .prologue
    .line 3165
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->curpage_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2792
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2792
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;
    .locals 1

    .prologue
    .line 2856
    invoke-static {}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->getDefaultInstance()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 2851
    invoke-static {}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 3090
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->id_:I

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 3

    .prologue
    .line 3048
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->label_:Ljava/lang/Object;

    .line 3049
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 3050
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 3052
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->label_:Ljava/lang/Object;

    .line 3055
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
    .line 3140
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->perpage_:I

    return v0
.end method

.method public getTotal()I
    .locals 1

    .prologue
    .line 3115
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->total_:I

    return v0
.end method

.method public hasCurpage()Z
    .locals 2

    .prologue
    .line 3161
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->bitField0_:I

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
    .line 3086
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->bitField0_:I

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

    .line 3044
    iget v1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->bitField0_:I

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
    .line 3136
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->bitField0_:I

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
    .line 3111
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->bitField0_:I

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
    .line 2801
    # getter for: Lcom/oppo/tribune/protobuf/MusicAlbumListProto;->internal_static_protobuf_ResourceAlbumList_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto;->access$3400()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 2977
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
    .line 2792
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 2792
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;

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
    .line 2792
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;

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
    .line 2792
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 2792
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;

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
    .line 2792
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2984
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 2987
    .local v2, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 2988
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    .line 2994
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2996
    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 2997
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->onChanged()V

    .line 2998
    :goto_1
    return-object p0

    .line 2990
    :sswitch_0
    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 2991
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->onChanged()V

    goto :goto_1

    .line 3003
    :sswitch_1
    iget v3, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->bitField0_:I

    .line 3004
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->label_:Ljava/lang/Object;

    goto :goto_0

    .line 3008
    :sswitch_2
    iget v3, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->bitField0_:I

    .line 3009
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->id_:I

    goto :goto_0

    .line 3013
    :sswitch_3
    iget v3, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->bitField0_:I

    .line 3014
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->total_:I

    goto :goto_0

    .line 3018
    :sswitch_4
    iget v3, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->bitField0_:I

    .line 3019
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->perpage_:I

    goto :goto_0

    .line 3023
    :sswitch_5
    iget v3, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->bitField0_:I

    .line 3024
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->curpage_:I

    goto :goto_0

    .line 3028
    :sswitch_6
    invoke-static {}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;->newBuilder()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;

    move-result-object v0

    .line 3030
    .local v0, "subBuilder":Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 3031
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->addAlbumlist(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;

    goto :goto_0

    .line 2988
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

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 2919
    instance-of v0, p1, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;

    if-eqz v0, :cond_0

    .line 2920
    check-cast p1, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;

    move-result-object p0

    .line 2923
    .end local p0    # "this":Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;
    :goto_0
    return-object p0

    .line 2922
    .restart local p0    # "this":Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;
    .locals 2
    .param p1, "other"    # Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;

    .prologue
    const/4 v0, 0x0

    .line 2929
    invoke-static {}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->getDefaultInstance()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 2973
    :goto_0
    return-object p0

    .line 2932
    :cond_0
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->hasLabel()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2933
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->setLabel(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;

    .line 2935
    :cond_1
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->hasId()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2936
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->getId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->setId(I)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;

    .line 2938
    :cond_2
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->hasTotal()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2939
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->getTotal()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->setTotal(I)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;

    .line 2941
    :cond_3
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->hasPerpage()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2942
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->getPerpage()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->setPerpage(I)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;

    .line 2944
    :cond_4
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->hasCurpage()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2945
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->getCurpage()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->setCurpage(I)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;

    .line 2947
    :cond_5
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->albumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_8

    .line 2948
    # getter for: Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->albumlist_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->access$4500(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 2949
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->albumlist_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2950
    # getter for: Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->albumlist_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->access$4500(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->albumlist_:Ljava/util/List;

    .line 2951
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->bitField0_:I

    .line 2956
    :goto_1
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->onChanged()V

    .line 2972
    :cond_6
    :goto_2
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0

    .line 2953
    :cond_7
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->ensureAlbumlistIsMutable()V

    .line 2954
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->albumlist_:Ljava/util/List;

    # getter for: Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->albumlist_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->access$4500(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 2959
    :cond_8
    # getter for: Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->albumlist_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->access$4500(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 2960
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->albumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2961
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->albumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 2962
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->albumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 2963
    # getter for: Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->albumlist_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->access$4500(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->albumlist_:Ljava/util/List;

    .line 2964
    iget v1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x21

    iput v1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->bitField0_:I

    .line 2965
    # getter for: Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->access$4700()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->getAlbumlistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :cond_9
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->albumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2

    .line 2968
    :cond_a
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->albumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    # getter for: Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->albumlist_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;->access$4500(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2
.end method

.method public removeAlbumlist(I)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 3332
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->albumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 3333
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->ensureAlbumlistIsMutable()V

    .line 3334
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->albumlist_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3335
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->onChanged()V

    .line 3339
    :goto_0
    return-object p0

    .line 3337
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->albumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public setAlbumlist(ILcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;

    .prologue
    .line 3240
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->albumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 3241
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->ensureAlbumlistIsMutable()V

    .line 3242
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->albumlist_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->build()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3243
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->onChanged()V

    .line 3248
    :goto_0
    return-object p0

    .line 3245
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->albumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;->build()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setAlbumlist(ILcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;

    .prologue
    .line 3224
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->albumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 3225
    if-nez p2, :cond_0

    .line 3226
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3228
    :cond_0
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->ensureAlbumlistIsMutable()V

    .line 3229
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->albumlist_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3230
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->onChanged()V

    .line 3234
    :goto_0
    return-object p0

    .line 3232
    :cond_1
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->albumlistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setCurpage(I)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3169
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->bitField0_:I

    .line 3170
    iput p1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->curpage_:I

    .line 3171
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->onChanged()V

    .line 3172
    return-object p0
.end method

.method public setId(I)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3094
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->bitField0_:I

    .line 3095
    iput p1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->id_:I

    .line 3096
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->onChanged()V

    .line 3097
    return-object p0
.end method

.method public setLabel(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3060
    if-nez p1, :cond_0

    .line 3061
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3063
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->bitField0_:I

    .line 3064
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->label_:Ljava/lang/Object;

    .line 3065
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->onChanged()V

    .line 3066
    return-object p0
.end method

.method setLabel(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 3077
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->bitField0_:I

    .line 3078
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->label_:Ljava/lang/Object;

    .line 3079
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->onChanged()V

    .line 3080
    return-void
.end method

.method public setPerpage(I)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3144
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->bitField0_:I

    .line 3145
    iput p1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->perpage_:I

    .line 3146
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->onChanged()V

    .line 3147
    return-object p0
.end method

.method public setTotal(I)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3119
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->bitField0_:I

    .line 3120
    iput p1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->total_:I

    .line 3121
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;->onChanged()V

    .line 3122
    return-object p0
.end method
