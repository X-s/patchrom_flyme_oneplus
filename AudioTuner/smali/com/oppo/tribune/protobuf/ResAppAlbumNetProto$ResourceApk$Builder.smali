.class public final Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "ResAppAlbumNetProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;",
        ">;",
        "Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkOrBuilder;"
    }
.end annotation


# instance fields
.field private apkType_:Ljava/lang/Object;

.field private author_:Ljava/lang/Object;

.field private bitField0_:I

.field private cid_:I

.field private description_:Ljava/lang/Object;

.field private downloads_:Ljava/lang/Object;

.field private ext_:Ljava/lang/Object;

.field private filesize_:Ljava/lang/Object;

.field private fileurl_:Ljava/lang/Object;

.field private gamedatasize_:Ljava/lang/Object;

.field private gamedataurl_:Ljava/lang/Object;

.field private icon_:Ljava/lang/Object;

.field private id_:J

.field private name_:Ljava/lang/Object;

.field private nearmeId_:J

.field private package_:Ljava/lang/Object;

.field private poor_:I

.field private praise_:I

.field private releaseTime_:J

.field private shotPicBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkShotPic;",
            "Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkShotPic$Builder;",
            "Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkShotPicOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private shotPic_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkShotPic;",
            ">;"
        }
    .end annotation
.end field

.field private versionName_:Ljava/lang/Object;

.field private versionNumber_:Ljava/lang/Object;

.field private views_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1731
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 2215
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->name_:Ljava/lang/Object;

    .line 2257
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->package_:Ljava/lang/Object;

    .line 2299
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->versionName_:Ljava/lang/Object;

    .line 2341
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->versionNumber_:Ljava/lang/Object;

    .line 2383
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->description_:Ljava/lang/Object;

    .line 2425
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->author_:Ljava/lang/Object;

    .line 2492
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->filesize_:Ljava/lang/Object;

    .line 2534
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->downloads_:Ljava/lang/Object;

    .line 2576
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->views_:Ljava/lang/Object;

    .line 2618
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->fileurl_:Ljava/lang/Object;

    .line 2660
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->icon_:Ljava/lang/Object;

    .line 2702
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->shotPic_:Ljava/util/List;

    .line 2913
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->apkType_:Ljava/lang/Object;

    .line 3030
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->ext_:Ljava/lang/Object;

    .line 3072
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->gamedataurl_:Ljava/lang/Object;

    .line 3114
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->gamedatasize_:Ljava/lang/Object;

    .line 1732
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->maybeForceBuilderInitialization()V

    .line 1733
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 1736
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 2215
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->name_:Ljava/lang/Object;

    .line 2257
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->package_:Ljava/lang/Object;

    .line 2299
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->versionName_:Ljava/lang/Object;

    .line 2341
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->versionNumber_:Ljava/lang/Object;

    .line 2383
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->description_:Ljava/lang/Object;

    .line 2425
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->author_:Ljava/lang/Object;

    .line 2492
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->filesize_:Ljava/lang/Object;

    .line 2534
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->downloads_:Ljava/lang/Object;

    .line 2576
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->views_:Ljava/lang/Object;

    .line 2618
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->fileurl_:Ljava/lang/Object;

    .line 2660
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->icon_:Ljava/lang/Object;

    .line 2702
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->shotPic_:Ljava/util/List;

    .line 2913
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->apkType_:Ljava/lang/Object;

    .line 3030
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->ext_:Ljava/lang/Object;

    .line 3072
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->gamedataurl_:Ljava/lang/Object;

    .line 3114
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->gamedatasize_:Ljava/lang/Object;

    .line 1737
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->maybeForceBuilderInitialization()V

    .line 1738
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$1;

    .prologue
    .line 1717
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1717
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;
    .locals 1

    .prologue
    .line 1717
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->create()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1827
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;

    move-result-object v0

    .line 1828
    .local v0, "result":Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1829
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 1832
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;
    .locals 1

    .prologue
    .line 1747
    new-instance v0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;-><init>()V

    return-object v0
.end method

.method private ensureShotPicIsMutable()V
    .locals 2

    .prologue
    .line 2706
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-eq v0, v1, :cond_0

    .line 2707
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->shotPic_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->shotPic_:Ljava/util/List;

    .line 2709
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2711
    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1722
    # getter for: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto;->internal_static_protobuf_ResourceApk_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto;->access$1100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getShotPicFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkShotPic;",
            "Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkShotPic$Builder;",
            "Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkShotPicOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2902
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->shotPicBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2903
    new-instance v1, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v2, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->shotPic_:Ljava/util/List;

    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v3, 0x2000

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->isClean()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->shotPicBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 2907
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->shotPic_:Ljava/util/List;

    .line 2909
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->shotPicBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 2903
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 1741
    # getter for: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->access$1600()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1742
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->getShotPicFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 1744
    :cond_0
    return-void
.end method


# virtual methods
.method public addAllShotPic(Ljava/lang/Iterable;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkShotPic;",
            ">;)",
            "Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;"
        }
    .end annotation

    .prologue
    .line 2827
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkShotPic;>;"
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->shotPicBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2828
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->ensureShotPicIsMutable()V

    .line 2829
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->shotPic_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 2830
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->onChanged()V

    .line 2834
    :goto_0
    return-object p0

    .line 2832
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->shotPicBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addShotPic(ILcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkShotPic$Builder;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkShotPic$Builder;

    .prologue
    .line 2815
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->shotPicBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2816
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->ensureShotPicIsMutable()V

    .line 2817
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->shotPic_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkShotPic$Builder;->build()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkShotPic;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2818
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->onChanged()V

    .line 2822
    :goto_0
    return-object p0

    .line 2820
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->shotPicBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkShotPic$Builder;->build()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkShotPic;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addShotPic(ILcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkShotPic;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkShotPic;

    .prologue
    .line 2787
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->shotPicBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 2788
    if-nez p2, :cond_0

    .line 2789
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2791
    :cond_0
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->ensureShotPicIsMutable()V

    .line 2792
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->shotPic_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2793
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->onChanged()V

    .line 2797
    :goto_0
    return-object p0

    .line 2795
    :cond_1
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->shotPicBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addShotPic(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkShotPic$Builder;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkShotPic$Builder;

    .prologue
    .line 2802
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->shotPicBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2803
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->ensureShotPicIsMutable()V

    .line 2804
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->shotPic_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkShotPic$Builder;->build()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkShotPic;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2805
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->onChanged()V

    .line 2809
    :goto_0
    return-object p0

    .line 2807
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->shotPicBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkShotPic$Builder;->build()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkShotPic;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addShotPic(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkShotPic;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;
    .locals 1
    .param p1, "value"    # Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkShotPic;

    .prologue
    .line 2771
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->shotPicBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 2772
    if-nez p1, :cond_0

    .line 2773
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2775
    :cond_0
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->ensureShotPicIsMutable()V

    .line 2776
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->shotPic_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2777
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->onChanged()V

    .line 2781
    :goto_0
    return-object p0

    .line 2779
    :cond_1
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->shotPicBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addShotPicBuilder()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkShotPic$Builder;
    .locals 2

    .prologue
    .line 2882
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->getShotPicFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkShotPic;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkShotPic;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkShotPic$Builder;

    return-object v0
.end method

.method public addShotPicBuilder(I)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkShotPic$Builder;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 2890
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->getShotPicFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkShotPic;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkShotPic;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkShotPic$Builder;

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1717
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->build()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1717
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->build()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;
    .locals 2

    .prologue
    .line 1818
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;

    move-result-object v0

    .line 1819
    .local v0, "result":Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1820
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 1822
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1717
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1717
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;
    .locals 11

    .prologue
    const/high16 v10, 0x80000

    const/high16 v9, 0x40000

    const/high16 v8, 0x20000

    const/high16 v7, 0x10000

    const v6, 0x8000

    .line 1836
    new-instance v1, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;-><init>(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$1;)V

    .line 1838
    .local v1, "result":Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 1839
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 1840
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1841
    or-int/lit8 v2, v2, 0x1

    .line 1843
    :cond_0
    iget-wide v4, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->id_:J

    # setter for: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->id_:J
    invoke-static {v1, v4, v5}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->access$1802(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;J)J

    .line 1844
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 1845
    or-int/lit8 v2, v2, 0x2

    .line 1847
    :cond_1
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->name_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->name_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->access$1902(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1848
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 1849
    or-int/lit8 v2, v2, 0x4

    .line 1851
    :cond_2
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->package_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->package_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->access$2002(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1852
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 1853
    or-int/lit8 v2, v2, 0x8

    .line 1855
    :cond_3
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->versionName_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->versionName_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->access$2102(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1856
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 1857
    or-int/lit8 v2, v2, 0x10

    .line 1859
    :cond_4
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->versionNumber_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->versionNumber_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->access$2202(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1860
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 1861
    or-int/lit8 v2, v2, 0x20

    .line 1863
    :cond_5
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->description_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->description_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->access$2302(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1864
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 1865
    or-int/lit8 v2, v2, 0x40

    .line 1867
    :cond_6
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->author_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->author_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->access$2402(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1868
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 1869
    or-int/lit16 v2, v2, 0x80

    .line 1871
    :cond_7
    iget-wide v4, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->releaseTime_:J

    # setter for: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->releaseTime_:J
    invoke-static {v1, v4, v5}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->access$2502(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;J)J

    .line 1872
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_8

    .line 1873
    or-int/lit16 v2, v2, 0x100

    .line 1875
    :cond_8
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->filesize_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->filesize_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->access$2602(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1876
    and-int/lit16 v3, v0, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_9

    .line 1877
    or-int/lit16 v2, v2, 0x200

    .line 1879
    :cond_9
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->downloads_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->downloads_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->access$2702(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1880
    and-int/lit16 v3, v0, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_a

    .line 1881
    or-int/lit16 v2, v2, 0x400

    .line 1883
    :cond_a
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->views_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->views_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->access$2802(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1884
    and-int/lit16 v3, v0, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_b

    .line 1885
    or-int/lit16 v2, v2, 0x800

    .line 1887
    :cond_b
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->fileurl_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->fileurl_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->access$2902(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1888
    and-int/lit16 v3, v0, 0x1000

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_c

    .line 1889
    or-int/lit16 v2, v2, 0x1000

    .line 1891
    :cond_c
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->icon_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->icon_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->access$3002(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1892
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->shotPicBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v3, :cond_16

    .line 1893
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    and-int/lit16 v3, v3, 0x2000

    const/16 v4, 0x2000

    if-ne v3, v4, :cond_d

    .line 1894
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->shotPic_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->shotPic_:Ljava/util/List;

    .line 1896
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x2001

    iput v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 1898
    :cond_d
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->shotPic_:Ljava/util/List;

    # setter for: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->shotPic_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->access$3102(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;Ljava/util/List;)Ljava/util/List;

    .line 1902
    :goto_0
    and-int/lit16 v3, v0, 0x4000

    const/16 v4, 0x4000

    if-ne v3, v4, :cond_e

    .line 1903
    or-int/lit16 v2, v2, 0x2000

    .line 1905
    :cond_e
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->apkType_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->apkType_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->access$3202(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1906
    and-int v3, v0, v6

    if-ne v3, v6, :cond_f

    .line 1907
    or-int/lit16 v2, v2, 0x4000

    .line 1909
    :cond_f
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->praise_:I

    # setter for: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->praise_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->access$3302(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;I)I

    .line 1910
    and-int v3, v0, v7

    if-ne v3, v7, :cond_10

    .line 1911
    or-int/2addr v2, v6

    .line 1913
    :cond_10
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->poor_:I

    # setter for: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->poor_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->access$3402(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;I)I

    .line 1914
    and-int v3, v0, v8

    if-ne v3, v8, :cond_11

    .line 1915
    or-int/2addr v2, v7

    .line 1917
    :cond_11
    iget-wide v4, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->nearmeId_:J

    # setter for: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->nearmeId_:J
    invoke-static {v1, v4, v5}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->access$3502(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;J)J

    .line 1918
    and-int v3, v0, v9

    if-ne v3, v9, :cond_12

    .line 1919
    or-int/2addr v2, v8

    .line 1921
    :cond_12
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->ext_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->ext_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->access$3602(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1922
    and-int v3, v0, v10

    if-ne v3, v10, :cond_13

    .line 1923
    or-int/2addr v2, v9

    .line 1925
    :cond_13
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->gamedataurl_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->gamedataurl_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->access$3702(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1926
    const/high16 v3, 0x100000

    and-int/2addr v3, v0

    const/high16 v4, 0x100000

    if-ne v3, v4, :cond_14

    .line 1927
    or-int/2addr v2, v10

    .line 1929
    :cond_14
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->gamedatasize_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->gamedatasize_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->access$3802(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1930
    const/high16 v3, 0x200000

    and-int/2addr v3, v0

    const/high16 v4, 0x200000

    if-ne v3, v4, :cond_15

    .line 1931
    const/high16 v3, 0x100000

    or-int/2addr v2, v3

    .line 1933
    :cond_15
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->cid_:I

    # setter for: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->cid_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->access$3902(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;I)I

    .line 1934
    # setter for: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->bitField0_:I
    invoke-static {v1, v2}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->access$4002(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;I)I

    .line 1935
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->onBuilt()V

    .line 1936
    return-object v1

    .line 1900
    :cond_16
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->shotPicBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v3

    # setter for: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->shotPic_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->access$3102(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;Ljava/util/List;)Ljava/util/List;

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1717
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->clear()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1717
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->clear()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1717
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->clear()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1717
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->clear()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 1751
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 1752
    iput-wide v4, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->id_:J

    .line 1753
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 1754
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->name_:Ljava/lang/Object;

    .line 1755
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 1756
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->package_:Ljava/lang/Object;

    .line 1757
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 1758
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->versionName_:Ljava/lang/Object;

    .line 1759
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 1760
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->versionNumber_:Ljava/lang/Object;

    .line 1761
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 1762
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->description_:Ljava/lang/Object;

    .line 1763
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 1764
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->author_:Ljava/lang/Object;

    .line 1765
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 1766
    iput-wide v4, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->releaseTime_:J

    .line 1767
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 1768
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->filesize_:Ljava/lang/Object;

    .line 1769
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 1770
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->downloads_:Ljava/lang/Object;

    .line 1771
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 1772
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->views_:Ljava/lang/Object;

    .line 1773
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 1774
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->fileurl_:Ljava/lang/Object;

    .line 1775
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 1776
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->icon_:Ljava/lang/Object;

    .line 1777
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 1778
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->shotPicBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1779
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->shotPic_:Ljava/util/List;

    .line 1780
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 1784
    :goto_0
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->apkType_:Ljava/lang/Object;

    .line 1785
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 1786
    iput v2, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->praise_:I

    .line 1787
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 1788
    iput v2, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->poor_:I

    .line 1789
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 1790
    iput-wide v4, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->nearmeId_:J

    .line 1791
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 1792
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->ext_:Ljava/lang/Object;

    .line 1793
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 1794
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->gamedataurl_:Ljava/lang/Object;

    .line 1795
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 1796
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->gamedatasize_:Ljava/lang/Object;

    .line 1797
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    const v1, -0x100001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 1798
    iput v2, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->cid_:I

    .line 1799
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 1800
    return-object p0

    .line 1782
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->shotPicBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearApkType()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;
    .locals 1

    .prologue
    .line 2942
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2943
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->getApkType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->apkType_:Ljava/lang/Object;

    .line 2944
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->onChanged()V

    .line 2945
    return-object p0
.end method

.method public clearAuthor()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;
    .locals 1

    .prologue
    .line 2454
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2455
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->getAuthor()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->author_:Ljava/lang/Object;

    .line 2456
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->onChanged()V

    .line 2457
    return-object p0
.end method

.method public clearCid()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;
    .locals 2

    .prologue
    .line 3174
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 3175
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->cid_:I

    .line 3176
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->onChanged()V

    .line 3177
    return-object p0
.end method

.method public clearDescription()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;
    .locals 1

    .prologue
    .line 2412
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2413
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->description_:Ljava/lang/Object;

    .line 2414
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->onChanged()V

    .line 2415
    return-object p0
.end method

.method public clearDownloads()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;
    .locals 1

    .prologue
    .line 2563
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2564
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->getDownloads()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->downloads_:Ljava/lang/Object;

    .line 2565
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->onChanged()V

    .line 2566
    return-object p0
.end method

.method public clearExt()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;
    .locals 2

    .prologue
    .line 3059
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 3060
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->getExt()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->ext_:Ljava/lang/Object;

    .line 3061
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->onChanged()V

    .line 3062
    return-object p0
.end method

.method public clearFilesize()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;
    .locals 1

    .prologue
    .line 2521
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2522
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->getFilesize()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->filesize_:Ljava/lang/Object;

    .line 2523
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->onChanged()V

    .line 2524
    return-object p0
.end method

.method public clearFileurl()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;
    .locals 1

    .prologue
    .line 2647
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2648
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->getFileurl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->fileurl_:Ljava/lang/Object;

    .line 2649
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->onChanged()V

    .line 2650
    return-object p0
.end method

.method public clearGamedatasize()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;
    .locals 2

    .prologue
    .line 3143
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    const v1, -0x100001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 3144
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->getGamedatasize()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->gamedatasize_:Ljava/lang/Object;

    .line 3145
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->onChanged()V

    .line 3146
    return-object p0
.end method

.method public clearGamedataurl()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;
    .locals 2

    .prologue
    .line 3101
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 3102
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->getGamedataurl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->gamedataurl_:Ljava/lang/Object;

    .line 3103
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->onChanged()V

    .line 3104
    return-object p0
.end method

.method public clearIcon()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;
    .locals 1

    .prologue
    .line 2689
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2690
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->getIcon()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->icon_:Ljava/lang/Object;

    .line 2691
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->onChanged()V

    .line 2692
    return-object p0
.end method

.method public clearId()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;
    .locals 2

    .prologue
    .line 2208
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2209
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->id_:J

    .line 2210
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->onChanged()V

    .line 2211
    return-object p0
.end method

.method public clearName()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;
    .locals 1

    .prologue
    .line 2244
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2245
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->name_:Ljava/lang/Object;

    .line 2246
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->onChanged()V

    .line 2247
    return-object p0
.end method

.method public clearNearmeId()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;
    .locals 2

    .prologue
    .line 3023
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 3024
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->nearmeId_:J

    .line 3025
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->onChanged()V

    .line 3026
    return-object p0
.end method

.method public clearPackage()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;
    .locals 1

    .prologue
    .line 2286
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2287
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->getPackage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->package_:Ljava/lang/Object;

    .line 2288
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->onChanged()V

    .line 2289
    return-object p0
.end method

.method public clearPoor()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;
    .locals 2

    .prologue
    .line 2998
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2999
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->poor_:I

    .line 3000
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->onChanged()V

    .line 3001
    return-object p0
.end method

.method public clearPraise()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;
    .locals 2

    .prologue
    .line 2973
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2974
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->praise_:I

    .line 2975
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->onChanged()V

    .line 2976
    return-object p0
.end method

.method public clearReleaseTime()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;
    .locals 2

    .prologue
    .line 2485
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2486
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->releaseTime_:J

    .line 2487
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->onChanged()V

    .line 2488
    return-object p0
.end method

.method public clearShotPic()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;
    .locals 1

    .prologue
    .line 2838
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->shotPicBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2839
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->shotPic_:Ljava/util/List;

    .line 2840
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2841
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->onChanged()V

    .line 2845
    :goto_0
    return-object p0

    .line 2843
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->shotPicBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearVersionName()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;
    .locals 1

    .prologue
    .line 2328
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2329
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->getVersionName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->versionName_:Ljava/lang/Object;

    .line 2330
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->onChanged()V

    .line 2331
    return-object p0
.end method

.method public clearVersionNumber()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;
    .locals 1

    .prologue
    .line 2370
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2371
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->getVersionNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->versionNumber_:Ljava/lang/Object;

    .line 2372
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->onChanged()V

    .line 2373
    return-object p0
.end method

.method public clearViews()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;
    .locals 1

    .prologue
    .line 2605
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2606
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->getViews()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->views_:Ljava/lang/Object;

    .line 2607
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->onChanged()V

    .line 2608
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1717
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->clone()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1717
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->clone()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1717
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->clone()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1717
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->clone()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1717
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->clone()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;
    .locals 2

    .prologue
    .line 1804
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->create()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;

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
    .line 1717
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->clone()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getApkType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2920
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->apkType_:Ljava/lang/Object;

    .line 2921
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2922
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2924
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->apkType_:Ljava/lang/Object;

    .line 2927
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

.method public getAuthor()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2432
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->author_:Ljava/lang/Object;

    .line 2433
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2434
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2436
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->author_:Ljava/lang/Object;

    .line 2439
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

.method public getCid()I
    .locals 1

    .prologue
    .line 3163
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->cid_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1717
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1717
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;
    .locals 1

    .prologue
    .line 1813
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2390
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->description_:Ljava/lang/Object;

    .line 2391
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2392
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2394
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->description_:Ljava/lang/Object;

    .line 2397
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
    .line 1808
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDownloads()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2541
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->downloads_:Ljava/lang/Object;

    .line 2542
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2543
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2545
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->downloads_:Ljava/lang/Object;

    .line 2548
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

.method public getExt()Ljava/lang/String;
    .locals 3

    .prologue
    .line 3037
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->ext_:Ljava/lang/Object;

    .line 3038
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 3039
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 3041
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->ext_:Ljava/lang/Object;

    .line 3044
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

.method public getFilesize()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2499
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->filesize_:Ljava/lang/Object;

    .line 2500
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2501
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2503
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->filesize_:Ljava/lang/Object;

    .line 2506
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

.method public getFileurl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2625
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->fileurl_:Ljava/lang/Object;

    .line 2626
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2627
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2629
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->fileurl_:Ljava/lang/Object;

    .line 2632
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

.method public getGamedatasize()Ljava/lang/String;
    .locals 3

    .prologue
    .line 3121
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->gamedatasize_:Ljava/lang/Object;

    .line 3122
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 3123
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 3125
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->gamedatasize_:Ljava/lang/Object;

    .line 3128
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

.method public getGamedataurl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 3079
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->gamedataurl_:Ljava/lang/Object;

    .line 3080
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 3081
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 3083
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->gamedataurl_:Ljava/lang/Object;

    .line 3086
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

.method public getIcon()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2667
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->icon_:Ljava/lang/Object;

    .line 2668
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2669
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2671
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->icon_:Ljava/lang/Object;

    .line 2674
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

.method public getId()J
    .locals 2

    .prologue
    .line 2197
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->id_:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2222
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->name_:Ljava/lang/Object;

    .line 2223
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2224
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2226
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->name_:Ljava/lang/Object;

    .line 2229
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

.method public getNearmeId()J
    .locals 2

    .prologue
    .line 3012
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->nearmeId_:J

    return-wide v0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2264
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->package_:Ljava/lang/Object;

    .line 2265
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2266
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2268
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->package_:Ljava/lang/Object;

    .line 2271
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

.method public getPoor()I
    .locals 1

    .prologue
    .line 2987
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->poor_:I

    return v0
.end method

.method public getPraise()I
    .locals 1

    .prologue
    .line 2962
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->praise_:I

    return v0
.end method

.method public getReleaseTime()J
    .locals 2

    .prologue
    .line 2474
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->releaseTime_:J

    return-wide v0
.end method

.method public getShotPic(I)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkShotPic;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 2733
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->shotPicBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2734
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->shotPic_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkShotPic;

    .line 2736
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->shotPicBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkShotPic;

    goto :goto_0
.end method

.method public getShotPicBuilder(I)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkShotPic$Builder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 2861
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->getShotPicFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkShotPic$Builder;

    return-object v0
.end method

.method public getShotPicBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkShotPic$Builder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2898
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->getShotPicFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getShotPicCount()I
    .locals 1

    .prologue
    .line 2724
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->shotPicBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2725
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->shotPic_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 2727
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->shotPicBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getShotPicList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkShotPic;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2716
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->shotPicBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2717
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->shotPic_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 2719
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->shotPicBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getShotPicOrBuilder(I)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkShotPicOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 2866
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->shotPicBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2867
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->shotPic_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkShotPicOrBuilder;

    .line 2869
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->shotPicBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkShotPicOrBuilder;

    goto :goto_0
.end method

.method public getShotPicOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkShotPicOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2874
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->shotPicBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 2875
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->shotPicBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 2877
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->shotPic_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2306
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->versionName_:Ljava/lang/Object;

    .line 2307
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2308
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2310
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->versionName_:Ljava/lang/Object;

    .line 2313
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

.method public getVersionNumber()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2348
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->versionNumber_:Ljava/lang/Object;

    .line 2349
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2350
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2352
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->versionNumber_:Ljava/lang/Object;

    .line 2355
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

.method public getViews()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2583
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->views_:Ljava/lang/Object;

    .line 2584
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2585
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2587
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->views_:Ljava/lang/Object;

    .line 2590
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

.method public hasApkType()Z
    .locals 2

    .prologue
    .line 2916
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasAuthor()Z
    .locals 2

    .prologue
    .line 2428
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCid()Z
    .locals 2

    .prologue
    const/high16 v1, 0x200000

    .line 3159
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    and-int/2addr v0, v1

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
    .line 2386
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

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

.method public hasDownloads()Z
    .locals 2

    .prologue
    .line 2537
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasExt()Z
    .locals 2

    .prologue
    const/high16 v1, 0x40000

    .line 3033
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFilesize()Z
    .locals 2

    .prologue
    .line 2495
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFileurl()Z
    .locals 2

    .prologue
    .line 2621
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasGamedatasize()Z
    .locals 2

    .prologue
    const/high16 v1, 0x100000

    .line 3117
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasGamedataurl()Z
    .locals 2

    .prologue
    const/high16 v1, 0x80000

    .line 3075
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIcon()Z
    .locals 2

    .prologue
    .line 2663
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

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

    .line 2193
    iget v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

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
    .line 2218
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

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

.method public hasNearmeId()Z
    .locals 2

    .prologue
    const/high16 v1, 0x20000

    .line 3008
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPackage()Z
    .locals 2

    .prologue
    .line 2260
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

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

.method public hasPoor()Z
    .locals 2

    .prologue
    const/high16 v1, 0x10000

    .line 2983
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPraise()Z
    .locals 2

    .prologue
    const v1, 0x8000

    .line 2958
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    and-int/2addr v0, v1

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
    .line 2470
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasVersionName()Z
    .locals 2

    .prologue
    .line 2302
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

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

.method public hasVersionNumber()Z
    .locals 2

    .prologue
    .line 2344
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

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

.method public hasViews()Z
    .locals 2

    .prologue
    .line 2579
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

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
    .line 1726
    # getter for: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto;->internal_static_protobuf_ResourceApk_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto;->access$1200()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 2046
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
    .line 1717
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 1717
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;

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
    .line 1717
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;

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
    .line 1717
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 1717
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;

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
    .line 1717
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;
    .locals 6
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2053
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 2056
    .local v2, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 2057
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    .line 2063
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2065
    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 2066
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->onChanged()V

    .line 2067
    :goto_1
    return-object p0

    .line 2059
    :sswitch_0
    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 2060
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->onChanged()V

    goto :goto_1

    .line 2072
    :sswitch_1
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2073
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->id_:J

    goto :goto_0

    .line 2077
    :sswitch_2
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2078
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->name_:Ljava/lang/Object;

    goto :goto_0

    .line 2082
    :sswitch_3
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2083
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->package_:Ljava/lang/Object;

    goto :goto_0

    .line 2087
    :sswitch_4
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2088
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->versionName_:Ljava/lang/Object;

    goto :goto_0

    .line 2092
    :sswitch_5
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2093
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->versionNumber_:Ljava/lang/Object;

    goto :goto_0

    .line 2097
    :sswitch_6
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2098
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->description_:Ljava/lang/Object;

    goto :goto_0

    .line 2102
    :sswitch_7
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x40

    iput v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2103
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->author_:Ljava/lang/Object;

    goto :goto_0

    .line 2107
    :sswitch_8
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    or-int/lit16 v3, v3, 0x80

    iput v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2108
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->releaseTime_:J

    goto/16 :goto_0

    .line 2112
    :sswitch_9
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    or-int/lit16 v3, v3, 0x100

    iput v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2113
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->filesize_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 2117
    :sswitch_a
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    or-int/lit16 v3, v3, 0x200

    iput v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2118
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->downloads_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 2122
    :sswitch_b
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    or-int/lit16 v3, v3, 0x400

    iput v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2123
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->views_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 2127
    :sswitch_c
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    or-int/lit16 v3, v3, 0x800

    iput v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2128
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->fileurl_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 2132
    :sswitch_d
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    or-int/lit16 v3, v3, 0x1000

    iput v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2133
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->icon_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 2137
    :sswitch_e
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkShotPic;->newBuilder()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkShotPic$Builder;

    move-result-object v0

    .line 2139
    .local v0, "subBuilder":Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkShotPic$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 2140
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkShotPic$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkShotPic;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->addShotPic(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkShotPic;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;

    goto/16 :goto_0

    .line 2144
    .end local v0    # "subBuilder":Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkShotPic$Builder;
    :sswitch_f
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    or-int/lit16 v3, v3, 0x4000

    iput v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2145
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->apkType_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 2149
    :sswitch_10
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    const v4, 0x8000

    or-int/2addr v3, v4

    iput v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2150
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->praise_:I

    goto/16 :goto_0

    .line 2154
    :sswitch_11
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    const/high16 v4, 0x10000

    or-int/2addr v3, v4

    iput v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2155
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->poor_:I

    goto/16 :goto_0

    .line 2159
    :sswitch_12
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    const/high16 v4, 0x20000

    or-int/2addr v3, v4

    iput v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2160
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->nearmeId_:J

    goto/16 :goto_0

    .line 2164
    :sswitch_13
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    const/high16 v4, 0x40000

    or-int/2addr v3, v4

    iput v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2165
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->ext_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 2169
    :sswitch_14
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    const/high16 v4, 0x80000

    or-int/2addr v3, v4

    iput v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2170
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->gamedataurl_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 2174
    :sswitch_15
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    const/high16 v4, 0x100000

    or-int/2addr v3, v4

    iput v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2175
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->gamedatasize_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 2179
    :sswitch_16
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    const/high16 v4, 0x200000

    or-int/2addr v3, v4

    iput v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2180
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->cid_:I

    goto/16 :goto_0

    .line 2057
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
        0x40 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
        0x62 -> :sswitch_c
        0x6a -> :sswitch_d
        0x72 -> :sswitch_e
        0x7a -> :sswitch_f
        0x80 -> :sswitch_10
        0x88 -> :sswitch_11
        0x90 -> :sswitch_12
        0x9a -> :sswitch_13
        0xa2 -> :sswitch_14
        0xaa -> :sswitch_15
        0xb0 -> :sswitch_16
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 1940
    instance-of v0, p1, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;

    if-eqz v0, :cond_0

    .line 1941
    check-cast p1, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;

    move-result-object p0

    .line 1944
    .end local p0    # "this":Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;
    :goto_0
    return-object p0

    .line 1943
    .restart local p0    # "this":Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;
    .locals 4
    .param p1, "other"    # Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;

    .prologue
    const/4 v0, 0x0

    .line 1950
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 2042
    :goto_0
    return-object p0

    .line 1953
    :cond_0
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->hasId()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1954
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->getId()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->setId(J)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;

    .line 1956
    :cond_1
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->hasName()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1957
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->setName(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;

    .line 1959
    :cond_2
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->hasPackage()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1960
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->setPackage(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;

    .line 1962
    :cond_3
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->hasVersionName()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1963
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->getVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->setVersionName(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;

    .line 1965
    :cond_4
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->hasVersionNumber()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1966
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->getVersionNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->setVersionNumber(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;

    .line 1968
    :cond_5
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->hasDescription()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1969
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->setDescription(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;

    .line 1971
    :cond_6
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->hasAuthor()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1972
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->getAuthor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->setAuthor(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;

    .line 1974
    :cond_7
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->hasReleaseTime()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1975
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->getReleaseTime()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->setReleaseTime(J)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;

    .line 1977
    :cond_8
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->hasFilesize()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1978
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->getFilesize()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->setFilesize(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;

    .line 1980
    :cond_9
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->hasDownloads()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1981
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->getDownloads()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->setDownloads(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;

    .line 1983
    :cond_a
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->hasViews()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1984
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->getViews()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->setViews(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;

    .line 1986
    :cond_b
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->hasFileurl()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1987
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->getFileurl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->setFileurl(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;

    .line 1989
    :cond_c
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->hasIcon()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1990
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->getIcon()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->setIcon(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;

    .line 1992
    :cond_d
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->shotPicBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_18

    .line 1993
    # getter for: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->shotPic_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->access$3100(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1994
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->shotPic_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1995
    # getter for: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->shotPic_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->access$3100(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->shotPic_:Ljava/util/List;

    .line 1996
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2001
    :goto_1
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->onChanged()V

    .line 2017
    :cond_e
    :goto_2
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->hasApkType()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2018
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->getApkType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->setApkType(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;

    .line 2020
    :cond_f
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->hasPraise()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2021
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->getPraise()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->setPraise(I)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;

    .line 2023
    :cond_10
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->hasPoor()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2024
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->getPoor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->setPoor(I)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;

    .line 2026
    :cond_11
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->hasNearmeId()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2027
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->getNearmeId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->setNearmeId(J)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;

    .line 2029
    :cond_12
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->hasExt()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2030
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->getExt()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->setExt(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;

    .line 2032
    :cond_13
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->hasGamedataurl()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2033
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->getGamedataurl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->setGamedataurl(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;

    .line 2035
    :cond_14
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->hasGamedatasize()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2036
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->getGamedatasize()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->setGamedatasize(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;

    .line 2038
    :cond_15
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->hasCid()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2039
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->getCid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->setCid(I)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;

    .line 2041
    :cond_16
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto/16 :goto_0

    .line 1998
    :cond_17
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->ensureShotPicIsMutable()V

    .line 1999
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->shotPic_:Ljava/util/List;

    # getter for: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->shotPic_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->access$3100(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 2004
    :cond_18
    # getter for: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->shotPic_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->access$3100(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e

    .line 2005
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->shotPicBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 2006
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->shotPicBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 2007
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->shotPicBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 2008
    # getter for: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->shotPic_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->access$3100(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->shotPic_:Ljava/util/List;

    .line 2009
    iget v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x2001

    iput v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2010
    # getter for: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->access$4100()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->getShotPicFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :cond_19
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->shotPicBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto/16 :goto_2

    .line 2013
    :cond_1a
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->shotPicBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    # getter for: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->shotPic_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->access$3100(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto/16 :goto_2
.end method

.method public removeShotPic(I)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 2849
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->shotPicBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2850
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->ensureShotPicIsMutable()V

    .line 2851
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->shotPic_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2852
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->onChanged()V

    .line 2856
    :goto_0
    return-object p0

    .line 2854
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->shotPicBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public setApkType(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2932
    if-nez p1, :cond_0

    .line 2933
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2935
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2936
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->apkType_:Ljava/lang/Object;

    .line 2937
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->onChanged()V

    .line 2938
    return-object p0
.end method

.method setApkType(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 2949
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2950
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->apkType_:Ljava/lang/Object;

    .line 2951
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->onChanged()V

    .line 2952
    return-void
.end method

.method public setAuthor(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2444
    if-nez p1, :cond_0

    .line 2445
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2447
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2448
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->author_:Ljava/lang/Object;

    .line 2449
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->onChanged()V

    .line 2450
    return-object p0
.end method

.method setAuthor(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 2461
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2462
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->author_:Ljava/lang/Object;

    .line 2463
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->onChanged()V

    .line 2464
    return-void
.end method

.method public setCid(I)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 3167
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 3168
    iput p1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->cid_:I

    .line 3169
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->onChanged()V

    .line 3170
    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2402
    if-nez p1, :cond_0

    .line 2403
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2405
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2406
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->description_:Ljava/lang/Object;

    .line 2407
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->onChanged()V

    .line 2408
    return-object p0
.end method

.method setDescription(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 2419
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2420
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->description_:Ljava/lang/Object;

    .line 2421
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->onChanged()V

    .line 2422
    return-void
.end method

.method public setDownloads(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2553
    if-nez p1, :cond_0

    .line 2554
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2556
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2557
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->downloads_:Ljava/lang/Object;

    .line 2558
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->onChanged()V

    .line 2559
    return-object p0
.end method

.method setDownloads(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 2570
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2571
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->downloads_:Ljava/lang/Object;

    .line 2572
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->onChanged()V

    .line 2573
    return-void
.end method

.method public setExt(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3049
    if-nez p1, :cond_0

    .line 3050
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3052
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 3053
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->ext_:Ljava/lang/Object;

    .line 3054
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->onChanged()V

    .line 3055
    return-object p0
.end method

.method setExt(Lcom/google/protobuf/ByteString;)V
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 3066
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 3067
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->ext_:Ljava/lang/Object;

    .line 3068
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->onChanged()V

    .line 3069
    return-void
.end method

.method public setFilesize(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2511
    if-nez p1, :cond_0

    .line 2512
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2514
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2515
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->filesize_:Ljava/lang/Object;

    .line 2516
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->onChanged()V

    .line 2517
    return-object p0
.end method

.method setFilesize(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 2528
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2529
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->filesize_:Ljava/lang/Object;

    .line 2530
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->onChanged()V

    .line 2531
    return-void
.end method

.method public setFileurl(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2637
    if-nez p1, :cond_0

    .line 2638
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2640
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2641
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->fileurl_:Ljava/lang/Object;

    .line 2642
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->onChanged()V

    .line 2643
    return-object p0
.end method

.method setFileurl(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 2654
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2655
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->fileurl_:Ljava/lang/Object;

    .line 2656
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->onChanged()V

    .line 2657
    return-void
.end method

.method public setGamedatasize(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3133
    if-nez p1, :cond_0

    .line 3134
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3136
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 3137
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->gamedatasize_:Ljava/lang/Object;

    .line 3138
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->onChanged()V

    .line 3139
    return-object p0
.end method

.method setGamedatasize(Lcom/google/protobuf/ByteString;)V
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 3150
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 3151
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->gamedatasize_:Ljava/lang/Object;

    .line 3152
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->onChanged()V

    .line 3153
    return-void
.end method

.method public setGamedataurl(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3091
    if-nez p1, :cond_0

    .line 3092
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3094
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 3095
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->gamedataurl_:Ljava/lang/Object;

    .line 3096
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->onChanged()V

    .line 3097
    return-object p0
.end method

.method setGamedataurl(Lcom/google/protobuf/ByteString;)V
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 3108
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 3109
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->gamedataurl_:Ljava/lang/Object;

    .line 3110
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->onChanged()V

    .line 3111
    return-void
.end method

.method public setIcon(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2679
    if-nez p1, :cond_0

    .line 2680
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2682
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2683
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->icon_:Ljava/lang/Object;

    .line 2684
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->onChanged()V

    .line 2685
    return-object p0
.end method

.method setIcon(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 2696
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2697
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->icon_:Ljava/lang/Object;

    .line 2698
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->onChanged()V

    .line 2699
    return-void
.end method

.method public setId(J)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 2201
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2202
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->id_:J

    .line 2203
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->onChanged()V

    .line 2204
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2234
    if-nez p1, :cond_0

    .line 2235
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2237
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2238
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->name_:Ljava/lang/Object;

    .line 2239
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->onChanged()V

    .line 2240
    return-object p0
.end method

.method setName(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 2251
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2252
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->name_:Ljava/lang/Object;

    .line 2253
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->onChanged()V

    .line 2254
    return-void
.end method

.method public setNearmeId(J)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 3016
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 3017
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->nearmeId_:J

    .line 3018
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->onChanged()V

    .line 3019
    return-object p0
.end method

.method public setPackage(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2276
    if-nez p1, :cond_0

    .line 2277
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2279
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2280
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->package_:Ljava/lang/Object;

    .line 2281
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->onChanged()V

    .line 2282
    return-object p0
.end method

.method setPackage(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 2293
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2294
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->package_:Ljava/lang/Object;

    .line 2295
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->onChanged()V

    .line 2296
    return-void
.end method

.method public setPoor(I)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 2991
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2992
    iput p1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->poor_:I

    .line 2993
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->onChanged()V

    .line 2994
    return-object p0
.end method

.method public setPraise(I)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 2966
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2967
    iput p1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->praise_:I

    .line 2968
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->onChanged()V

    .line 2969
    return-object p0
.end method

.method public setReleaseTime(J)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 2478
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2479
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->releaseTime_:J

    .line 2480
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->onChanged()V

    .line 2481
    return-object p0
.end method

.method public setShotPic(ILcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkShotPic$Builder;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkShotPic$Builder;

    .prologue
    .line 2759
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->shotPicBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2760
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->ensureShotPicIsMutable()V

    .line 2761
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->shotPic_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkShotPic$Builder;->build()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkShotPic;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2762
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->onChanged()V

    .line 2766
    :goto_0
    return-object p0

    .line 2764
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->shotPicBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkShotPic$Builder;->build()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkShotPic;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setShotPic(ILcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkShotPic;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkShotPic;

    .prologue
    .line 2743
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->shotPicBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 2744
    if-nez p2, :cond_0

    .line 2745
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2747
    :cond_0
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->ensureShotPicIsMutable()V

    .line 2748
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->shotPic_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2749
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->onChanged()V

    .line 2753
    :goto_0
    return-object p0

    .line 2751
    :cond_1
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->shotPicBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setVersionName(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2318
    if-nez p1, :cond_0

    .line 2319
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2321
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2322
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->versionName_:Ljava/lang/Object;

    .line 2323
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->onChanged()V

    .line 2324
    return-object p0
.end method

.method setVersionName(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 2335
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2336
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->versionName_:Ljava/lang/Object;

    .line 2337
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->onChanged()V

    .line 2338
    return-void
.end method

.method public setVersionNumber(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2360
    if-nez p1, :cond_0

    .line 2361
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2363
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2364
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->versionNumber_:Ljava/lang/Object;

    .line 2365
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->onChanged()V

    .line 2366
    return-object p0
.end method

.method setVersionNumber(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 2377
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2378
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->versionNumber_:Ljava/lang/Object;

    .line 2379
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->onChanged()V

    .line 2380
    return-void
.end method

.method public setViews(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2595
    if-nez p1, :cond_0

    .line 2596
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2598
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2599
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->views_:Ljava/lang/Object;

    .line 2600
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->onChanged()V

    .line 2601
    return-object p0
.end method

.method setViews(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 2612
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2613
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->views_:Ljava/lang/Object;

    .line 2614
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->onChanged()V

    .line 2615
    return-void
.end method
