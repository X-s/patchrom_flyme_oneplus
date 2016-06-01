.class public final Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "ResAppNetProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;",
        ">;",
        "Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkOrBuilder;"
    }
.end annotation


# instance fields
.field private apkType_:Ljava/lang/Object;

.field private author_:Ljava/lang/Object;

.field private bitField0_:I

.field private description_:Ljava/lang/Object;

.field private downloads_:Ljava/lang/Object;

.field private ext_:Ljava/lang/Object;

.field private filesize_:Ljava/lang/Object;

.field private fileurl_:Ljava/lang/Object;

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
            "Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;",
            "Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;",
            "Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPicOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private shotPic_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;",
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
    .line 1611
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 2053
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->name_:Ljava/lang/Object;

    .line 2095
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->package_:Ljava/lang/Object;

    .line 2137
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->versionName_:Ljava/lang/Object;

    .line 2179
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->versionNumber_:Ljava/lang/Object;

    .line 2221
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->description_:Ljava/lang/Object;

    .line 2263
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->author_:Ljava/lang/Object;

    .line 2330
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->filesize_:Ljava/lang/Object;

    .line 2372
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->downloads_:Ljava/lang/Object;

    .line 2414
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->views_:Ljava/lang/Object;

    .line 2456
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->fileurl_:Ljava/lang/Object;

    .line 2498
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->icon_:Ljava/lang/Object;

    .line 2540
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->shotPic_:Ljava/util/List;

    .line 2751
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->apkType_:Ljava/lang/Object;

    .line 2868
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->ext_:Ljava/lang/Object;

    .line 1612
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->maybeForceBuilderInitialization()V

    .line 1613
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 1616
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 2053
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->name_:Ljava/lang/Object;

    .line 2095
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->package_:Ljava/lang/Object;

    .line 2137
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->versionName_:Ljava/lang/Object;

    .line 2179
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->versionNumber_:Ljava/lang/Object;

    .line 2221
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->description_:Ljava/lang/Object;

    .line 2263
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->author_:Ljava/lang/Object;

    .line 2330
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->filesize_:Ljava/lang/Object;

    .line 2372
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->downloads_:Ljava/lang/Object;

    .line 2414
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->views_:Ljava/lang/Object;

    .line 2456
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->fileurl_:Ljava/lang/Object;

    .line 2498
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->icon_:Ljava/lang/Object;

    .line 2540
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->shotPic_:Ljava/util/List;

    .line 2751
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->apkType_:Ljava/lang/Object;

    .line 2868
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->ext_:Ljava/lang/Object;

    .line 1617
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->maybeForceBuilderInitialization()V

    .line 1618
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/ResAppNetProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/ResAppNetProto$1;

    .prologue
    .line 1598
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1598
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;
    .locals 1

    .prologue
    .line 1598
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->create()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1701
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;

    move-result-object v0

    .line 1702
    .local v0, "result":Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1703
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 1706
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;
    .locals 1

    .prologue
    .line 1627
    new-instance v0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;-><init>()V

    return-object v0
.end method

.method private ensureShotPicIsMutable()V
    .locals 2

    .prologue
    .line 2544
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-eq v0, v1, :cond_0

    .line 2545
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->shotPic_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->shotPic_:Ljava/util/List;

    .line 2547
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2549
    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1602
    # getter for: Lcom/oppo/tribune/protobuf/ResAppNetProto;->internal_static_protobuf_ResourceApk_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppNetProto;->access$1100()Lcom/google/protobuf/Descriptors$Descriptor;

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
            "Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;",
            "Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;",
            "Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPicOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2740
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->shotPicBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2741
    new-instance v1, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v2, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->shotPic_:Ljava/util/List;

    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v3, 0x2000

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->isClean()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->shotPicBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 2745
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->shotPic_:Ljava/util/List;

    .line 2747
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->shotPicBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 2741
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 1621
    # getter for: Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->access$1600()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1622
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->getShotPicFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 1624
    :cond_0
    return-void
.end method


# virtual methods
.method public addAllShotPic(Ljava/lang/Iterable;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;",
            ">;)",
            "Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;"
        }
    .end annotation

    .prologue
    .line 2665
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;>;"
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->shotPicBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2666
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->ensureShotPicIsMutable()V

    .line 2667
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->shotPic_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 2668
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->onChanged()V

    .line 2672
    :goto_0
    return-object p0

    .line 2670
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->shotPicBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addShotPic(ILcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;

    .prologue
    .line 2653
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->shotPicBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2654
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->ensureShotPicIsMutable()V

    .line 2655
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->shotPic_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->build()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2656
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->onChanged()V

    .line 2660
    :goto_0
    return-object p0

    .line 2658
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->shotPicBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->build()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addShotPic(ILcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;

    .prologue
    .line 2625
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->shotPicBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 2626
    if-nez p2, :cond_0

    .line 2627
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2629
    :cond_0
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->ensureShotPicIsMutable()V

    .line 2630
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->shotPic_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2631
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->onChanged()V

    .line 2635
    :goto_0
    return-object p0

    .line 2633
    :cond_1
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->shotPicBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addShotPic(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;

    .prologue
    .line 2640
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->shotPicBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2641
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->ensureShotPicIsMutable()V

    .line 2642
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->shotPic_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->build()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2643
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->onChanged()V

    .line 2647
    :goto_0
    return-object p0

    .line 2645
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->shotPicBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->build()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addShotPic(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;
    .locals 1
    .param p1, "value"    # Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;

    .prologue
    .line 2609
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->shotPicBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 2610
    if-nez p1, :cond_0

    .line 2611
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2613
    :cond_0
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->ensureShotPicIsMutable()V

    .line 2614
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->shotPic_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2615
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->onChanged()V

    .line 2619
    :goto_0
    return-object p0

    .line 2617
    :cond_1
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->shotPicBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addShotPicBuilder()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;
    .locals 2

    .prologue
    .line 2720
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->getShotPicFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;

    return-object v0
.end method

.method public addShotPicBuilder(I)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 2728
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->getShotPicFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1598
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->build()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1598
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->build()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;
    .locals 2

    .prologue
    .line 1692
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;

    move-result-object v0

    .line 1693
    .local v0, "result":Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1694
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 1696
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1598
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1598
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;
    .locals 10

    .prologue
    const/high16 v9, 0x40000

    const/high16 v8, 0x20000

    const/high16 v7, 0x10000

    const v6, 0x8000

    .line 1710
    new-instance v1, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;-><init>(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;Lcom/oppo/tribune/protobuf/ResAppNetProto$1;)V

    .line 1712
    .local v1, "result":Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    .line 1713
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 1714
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1715
    or-int/lit8 v2, v2, 0x1

    .line 1717
    :cond_0
    iget-wide v4, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->id_:J

    # setter for: Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->id_:J
    invoke-static {v1, v4, v5}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->access$1802(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;J)J

    .line 1718
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 1719
    or-int/lit8 v2, v2, 0x2

    .line 1721
    :cond_1
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->name_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->name_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->access$1902(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1722
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 1723
    or-int/lit8 v2, v2, 0x4

    .line 1725
    :cond_2
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->package_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->package_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->access$2002(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1726
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 1727
    or-int/lit8 v2, v2, 0x8

    .line 1729
    :cond_3
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->versionName_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->versionName_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->access$2102(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1730
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 1731
    or-int/lit8 v2, v2, 0x10

    .line 1733
    :cond_4
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->versionNumber_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->versionNumber_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->access$2202(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1734
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 1735
    or-int/lit8 v2, v2, 0x20

    .line 1737
    :cond_5
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->description_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->description_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->access$2302(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1738
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 1739
    or-int/lit8 v2, v2, 0x40

    .line 1741
    :cond_6
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->author_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->author_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->access$2402(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1742
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 1743
    or-int/lit16 v2, v2, 0x80

    .line 1745
    :cond_7
    iget-wide v4, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->releaseTime_:J

    # setter for: Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->releaseTime_:J
    invoke-static {v1, v4, v5}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->access$2502(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;J)J

    .line 1746
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_8

    .line 1747
    or-int/lit16 v2, v2, 0x100

    .line 1749
    :cond_8
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->filesize_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->filesize_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->access$2602(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1750
    and-int/lit16 v3, v0, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_9

    .line 1751
    or-int/lit16 v2, v2, 0x200

    .line 1753
    :cond_9
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->downloads_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->downloads_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->access$2702(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1754
    and-int/lit16 v3, v0, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_a

    .line 1755
    or-int/lit16 v2, v2, 0x400

    .line 1757
    :cond_a
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->views_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->views_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->access$2802(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1758
    and-int/lit16 v3, v0, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_b

    .line 1759
    or-int/lit16 v2, v2, 0x800

    .line 1761
    :cond_b
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->fileurl_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->fileurl_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->access$2902(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1762
    and-int/lit16 v3, v0, 0x1000

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_c

    .line 1763
    or-int/lit16 v2, v2, 0x1000

    .line 1765
    :cond_c
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->icon_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->icon_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->access$3002(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1766
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->shotPicBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v3, :cond_13

    .line 1767
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    and-int/lit16 v3, v3, 0x2000

    const/16 v4, 0x2000

    if-ne v3, v4, :cond_d

    .line 1768
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->shotPic_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->shotPic_:Ljava/util/List;

    .line 1770
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x2001

    iput v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    .line 1772
    :cond_d
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->shotPic_:Ljava/util/List;

    # setter for: Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->shotPic_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->access$3102(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;Ljava/util/List;)Ljava/util/List;

    .line 1776
    :goto_0
    and-int/lit16 v3, v0, 0x4000

    const/16 v4, 0x4000

    if-ne v3, v4, :cond_e

    .line 1777
    or-int/lit16 v2, v2, 0x2000

    .line 1779
    :cond_e
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->apkType_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->apkType_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->access$3202(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1780
    and-int v3, v0, v6

    if-ne v3, v6, :cond_f

    .line 1781
    or-int/lit16 v2, v2, 0x4000

    .line 1783
    :cond_f
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->praise_:I

    # setter for: Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->praise_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->access$3302(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;I)I

    .line 1784
    and-int v3, v0, v7

    if-ne v3, v7, :cond_10

    .line 1785
    or-int/2addr v2, v6

    .line 1787
    :cond_10
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->poor_:I

    # setter for: Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->poor_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->access$3402(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;I)I

    .line 1788
    and-int v3, v0, v8

    if-ne v3, v8, :cond_11

    .line 1789
    or-int/2addr v2, v7

    .line 1791
    :cond_11
    iget-wide v4, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->nearmeId_:J

    # setter for: Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->nearmeId_:J
    invoke-static {v1, v4, v5}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->access$3502(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;J)J

    .line 1792
    and-int v3, v0, v9

    if-ne v3, v9, :cond_12

    .line 1793
    or-int/2addr v2, v8

    .line 1795
    :cond_12
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->ext_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->ext_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->access$3602(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1796
    # setter for: Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->bitField0_:I
    invoke-static {v1, v2}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->access$3702(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;I)I

    .line 1797
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->onBuilt()V

    .line 1798
    return-object v1

    .line 1774
    :cond_13
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->shotPicBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v3

    # setter for: Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->shotPic_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->access$3102(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;Ljava/util/List;)Ljava/util/List;

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1598
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->clear()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1598
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->clear()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1598
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->clear()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1598
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->clear()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    .line 1631
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 1632
    iput-wide v2, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->id_:J

    .line 1633
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    .line 1634
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->name_:Ljava/lang/Object;

    .line 1635
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    .line 1636
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->package_:Ljava/lang/Object;

    .line 1637
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    .line 1638
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->versionName_:Ljava/lang/Object;

    .line 1639
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    .line 1640
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->versionNumber_:Ljava/lang/Object;

    .line 1641
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    .line 1642
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->description_:Ljava/lang/Object;

    .line 1643
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    .line 1644
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->author_:Ljava/lang/Object;

    .line 1645
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    .line 1646
    iput-wide v2, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->releaseTime_:J

    .line 1647
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    .line 1648
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->filesize_:Ljava/lang/Object;

    .line 1649
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    .line 1650
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->downloads_:Ljava/lang/Object;

    .line 1651
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    .line 1652
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->views_:Ljava/lang/Object;

    .line 1653
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    .line 1654
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->fileurl_:Ljava/lang/Object;

    .line 1655
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    .line 1656
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->icon_:Ljava/lang/Object;

    .line 1657
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    .line 1658
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->shotPicBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1659
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->shotPic_:Ljava/util/List;

    .line 1660
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    .line 1664
    :goto_0
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->apkType_:Ljava/lang/Object;

    .line 1665
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    .line 1666
    iput v4, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->praise_:I

    .line 1667
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    .line 1668
    iput v4, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->poor_:I

    .line 1669
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    .line 1670
    iput-wide v2, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->nearmeId_:J

    .line 1671
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    .line 1672
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->ext_:Ljava/lang/Object;

    .line 1673
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    .line 1674
    return-object p0

    .line 1662
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->shotPicBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearApkType()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;
    .locals 1

    .prologue
    .line 2780
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2781
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->getApkType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->apkType_:Ljava/lang/Object;

    .line 2782
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->onChanged()V

    .line 2783
    return-object p0
.end method

.method public clearAuthor()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;
    .locals 1

    .prologue
    .line 2292
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2293
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->getAuthor()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->author_:Ljava/lang/Object;

    .line 2294
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->onChanged()V

    .line 2295
    return-object p0
.end method

.method public clearDescription()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;
    .locals 1

    .prologue
    .line 2250
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2251
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->description_:Ljava/lang/Object;

    .line 2252
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->onChanged()V

    .line 2253
    return-object p0
.end method

.method public clearDownloads()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;
    .locals 1

    .prologue
    .line 2401
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2402
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->getDownloads()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->downloads_:Ljava/lang/Object;

    .line 2403
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->onChanged()V

    .line 2404
    return-object p0
.end method

.method public clearExt()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;
    .locals 2

    .prologue
    .line 2897
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2898
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->getExt()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->ext_:Ljava/lang/Object;

    .line 2899
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->onChanged()V

    .line 2900
    return-object p0
.end method

.method public clearFilesize()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;
    .locals 1

    .prologue
    .line 2359
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2360
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->getFilesize()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->filesize_:Ljava/lang/Object;

    .line 2361
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->onChanged()V

    .line 2362
    return-object p0
.end method

.method public clearFileurl()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;
    .locals 1

    .prologue
    .line 2485
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2486
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->getFileurl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->fileurl_:Ljava/lang/Object;

    .line 2487
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->onChanged()V

    .line 2488
    return-object p0
.end method

.method public clearIcon()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;
    .locals 1

    .prologue
    .line 2527
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2528
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->getIcon()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->icon_:Ljava/lang/Object;

    .line 2529
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->onChanged()V

    .line 2530
    return-object p0
.end method

.method public clearId()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;
    .locals 2

    .prologue
    .line 2046
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2047
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->id_:J

    .line 2048
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->onChanged()V

    .line 2049
    return-object p0
.end method

.method public clearName()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;
    .locals 1

    .prologue
    .line 2082
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2083
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->name_:Ljava/lang/Object;

    .line 2084
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->onChanged()V

    .line 2085
    return-object p0
.end method

.method public clearNearmeId()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;
    .locals 2

    .prologue
    .line 2861
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2862
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->nearmeId_:J

    .line 2863
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->onChanged()V

    .line 2864
    return-object p0
.end method

.method public clearPackage()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;
    .locals 1

    .prologue
    .line 2124
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2125
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->getPackage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->package_:Ljava/lang/Object;

    .line 2126
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->onChanged()V

    .line 2127
    return-object p0
.end method

.method public clearPoor()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;
    .locals 2

    .prologue
    .line 2836
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2837
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->poor_:I

    .line 2838
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->onChanged()V

    .line 2839
    return-object p0
.end method

.method public clearPraise()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;
    .locals 2

    .prologue
    .line 2811
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2812
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->praise_:I

    .line 2813
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->onChanged()V

    .line 2814
    return-object p0
.end method

.method public clearReleaseTime()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;
    .locals 2

    .prologue
    .line 2323
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2324
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->releaseTime_:J

    .line 2325
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->onChanged()V

    .line 2326
    return-object p0
.end method

.method public clearShotPic()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;
    .locals 1

    .prologue
    .line 2676
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->shotPicBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2677
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->shotPic_:Ljava/util/List;

    .line 2678
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2679
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->onChanged()V

    .line 2683
    :goto_0
    return-object p0

    .line 2681
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->shotPicBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearVersionName()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;
    .locals 1

    .prologue
    .line 2166
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2167
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->getVersionName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->versionName_:Ljava/lang/Object;

    .line 2168
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->onChanged()V

    .line 2169
    return-object p0
.end method

.method public clearVersionNumber()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;
    .locals 1

    .prologue
    .line 2208
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2209
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->getVersionNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->versionNumber_:Ljava/lang/Object;

    .line 2210
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->onChanged()V

    .line 2211
    return-object p0
.end method

.method public clearViews()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;
    .locals 1

    .prologue
    .line 2443
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2444
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->getViews()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->views_:Ljava/lang/Object;

    .line 2445
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->onChanged()V

    .line 2446
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1598
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->clone()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1598
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->clone()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1598
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->clone()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1598
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->clone()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1598
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->clone()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;
    .locals 2

    .prologue
    .line 1678
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->create()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;

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
    .line 1598
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->clone()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getApkType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2758
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->apkType_:Ljava/lang/Object;

    .line 2759
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2760
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2762
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->apkType_:Ljava/lang/Object;

    .line 2765
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
    .line 2270
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->author_:Ljava/lang/Object;

    .line 2271
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2272
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2274
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->author_:Ljava/lang/Object;

    .line 2277
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
    .line 1598
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1598
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;
    .locals 1

    .prologue
    .line 1687
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2228
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->description_:Ljava/lang/Object;

    .line 2229
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2230
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2232
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->description_:Ljava/lang/Object;

    .line 2235
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
    .line 1682
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDownloads()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2379
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->downloads_:Ljava/lang/Object;

    .line 2380
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2381
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2383
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->downloads_:Ljava/lang/Object;

    .line 2386
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
    .line 2875
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->ext_:Ljava/lang/Object;

    .line 2876
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2877
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2879
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->ext_:Ljava/lang/Object;

    .line 2882
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
    .line 2337
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->filesize_:Ljava/lang/Object;

    .line 2338
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2339
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2341
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->filesize_:Ljava/lang/Object;

    .line 2344
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
    .line 2463
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->fileurl_:Ljava/lang/Object;

    .line 2464
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2465
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2467
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->fileurl_:Ljava/lang/Object;

    .line 2470
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
    .line 2505
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->icon_:Ljava/lang/Object;

    .line 2506
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2507
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2509
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->icon_:Ljava/lang/Object;

    .line 2512
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
    .line 2035
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->id_:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2060
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->name_:Ljava/lang/Object;

    .line 2061
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2062
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2064
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->name_:Ljava/lang/Object;

    .line 2067
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
    .line 2850
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->nearmeId_:J

    return-wide v0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2102
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->package_:Ljava/lang/Object;

    .line 2103
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2104
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2106
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->package_:Ljava/lang/Object;

    .line 2109
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
    .line 2825
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->poor_:I

    return v0
.end method

.method public getPraise()I
    .locals 1

    .prologue
    .line 2800
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->praise_:I

    return v0
.end method

.method public getReleaseTime()J
    .locals 2

    .prologue
    .line 2312
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->releaseTime_:J

    return-wide v0
.end method

.method public getShotPic(I)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 2571
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->shotPicBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2572
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->shotPic_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;

    .line 2574
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->shotPicBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;

    goto :goto_0
.end method

.method public getShotPicBuilder(I)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 2699
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->getShotPicFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;

    return-object v0
.end method

.method public getShotPicBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2736
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->getShotPicFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getShotPicCount()I
    .locals 1

    .prologue
    .line 2562
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->shotPicBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2563
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->shotPic_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 2565
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->shotPicBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

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
            "Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2554
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->shotPicBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2555
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->shotPic_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 2557
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->shotPicBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getShotPicOrBuilder(I)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPicOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 2704
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->shotPicBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2705
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->shotPic_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPicOrBuilder;

    .line 2707
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->shotPicBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPicOrBuilder;

    goto :goto_0
.end method

.method public getShotPicOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPicOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2712
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->shotPicBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 2713
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->shotPicBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 2715
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->shotPic_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2144
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->versionName_:Ljava/lang/Object;

    .line 2145
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2146
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2148
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->versionName_:Ljava/lang/Object;

    .line 2151
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
    .line 2186
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->versionNumber_:Ljava/lang/Object;

    .line 2187
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2188
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2190
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->versionNumber_:Ljava/lang/Object;

    .line 2193
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
    .line 2421
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->views_:Ljava/lang/Object;

    .line 2422
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2423
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2425
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->views_:Ljava/lang/Object;

    .line 2428
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
    .line 2754
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

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
    .line 2266
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

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

.method public hasDescription()Z
    .locals 2

    .prologue
    .line 2224
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

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
    .line 2375
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

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

    .line 2871
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

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
    .line 2333
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

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
    .line 2459
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

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

.method public hasIcon()Z
    .locals 2

    .prologue
    .line 2501
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

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

    .line 2031
    iget v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

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
    .line 2056
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

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

    .line 2846
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

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
    .line 2098
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

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

    .line 2821
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

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

    .line 2796
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

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
    .line 2308
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

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
    .line 2140
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

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
    .line 2182
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

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
    .line 2417
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

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
    .line 1606
    # getter for: Lcom/oppo/tribune/protobuf/ResAppNetProto;->internal_static_protobuf_ResourceApk_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppNetProto;->access$1200()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1899
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
    .line 1598
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 1598
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;

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
    .line 1598
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;

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
    .line 1598
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 1598
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;

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
    .line 1598
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;
    .locals 6
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1906
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 1909
    .local v2, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 1910
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    .line 1916
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1918
    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 1919
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->onChanged()V

    .line 1920
    :goto_1
    return-object p0

    .line 1912
    :sswitch_0
    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 1913
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->onChanged()V

    goto :goto_1

    .line 1925
    :sswitch_1
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    .line 1926
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->id_:J

    goto :goto_0

    .line 1930
    :sswitch_2
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    .line 1931
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->name_:Ljava/lang/Object;

    goto :goto_0

    .line 1935
    :sswitch_3
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    .line 1936
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->package_:Ljava/lang/Object;

    goto :goto_0

    .line 1940
    :sswitch_4
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    .line 1941
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->versionName_:Ljava/lang/Object;

    goto :goto_0

    .line 1945
    :sswitch_5
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    .line 1946
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->versionNumber_:Ljava/lang/Object;

    goto :goto_0

    .line 1950
    :sswitch_6
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    .line 1951
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->description_:Ljava/lang/Object;

    goto :goto_0

    .line 1955
    :sswitch_7
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x40

    iput v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    .line 1956
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->author_:Ljava/lang/Object;

    goto :goto_0

    .line 1960
    :sswitch_8
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    or-int/lit16 v3, v3, 0x80

    iput v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    .line 1961
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->releaseTime_:J

    goto/16 :goto_0

    .line 1965
    :sswitch_9
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    or-int/lit16 v3, v3, 0x100

    iput v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    .line 1966
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->filesize_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 1970
    :sswitch_a
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    or-int/lit16 v3, v3, 0x200

    iput v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    .line 1971
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->downloads_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 1975
    :sswitch_b
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    or-int/lit16 v3, v3, 0x400

    iput v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    .line 1976
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->views_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 1980
    :sswitch_c
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    or-int/lit16 v3, v3, 0x800

    iput v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    .line 1981
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->fileurl_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 1985
    :sswitch_d
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    or-int/lit16 v3, v3, 0x1000

    iput v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    .line 1986
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->icon_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 1990
    :sswitch_e
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;->newBuilder()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;

    move-result-object v0

    .line 1992
    .local v0, "subBuilder":Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1993
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->addShotPic(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;

    goto/16 :goto_0

    .line 1997
    .end local v0    # "subBuilder":Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;
    :sswitch_f
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    or-int/lit16 v3, v3, 0x4000

    iput v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    .line 1998
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->apkType_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 2002
    :sswitch_10
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    const v4, 0x8000

    or-int/2addr v3, v4

    iput v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2003
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->praise_:I

    goto/16 :goto_0

    .line 2007
    :sswitch_11
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    const/high16 v4, 0x10000

    or-int/2addr v3, v4

    iput v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2008
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->poor_:I

    goto/16 :goto_0

    .line 2012
    :sswitch_12
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    const/high16 v4, 0x20000

    or-int/2addr v3, v4

    iput v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2013
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->nearmeId_:J

    goto/16 :goto_0

    .line 2017
    :sswitch_13
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    const/high16 v4, 0x40000

    or-int/2addr v3, v4

    iput v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2018
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->ext_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 1910
    nop

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
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 1802
    instance-of v0, p1, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;

    if-eqz v0, :cond_0

    .line 1803
    check-cast p1, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;

    move-result-object p0

    .line 1806
    .end local p0    # "this":Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;
    :goto_0
    return-object p0

    .line 1805
    .restart local p0    # "this":Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;
    .locals 4
    .param p1, "other"    # Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;

    .prologue
    const/4 v0, 0x0

    .line 1812
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 1895
    :goto_0
    return-object p0

    .line 1815
    :cond_0
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->hasId()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1816
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->getId()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->setId(J)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;

    .line 1818
    :cond_1
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->hasName()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1819
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->setName(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;

    .line 1821
    :cond_2
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->hasPackage()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1822
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->setPackage(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;

    .line 1824
    :cond_3
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->hasVersionName()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1825
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->getVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->setVersionName(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;

    .line 1827
    :cond_4
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->hasVersionNumber()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1828
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->getVersionNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->setVersionNumber(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;

    .line 1830
    :cond_5
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->hasDescription()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1831
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->setDescription(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;

    .line 1833
    :cond_6
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->hasAuthor()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1834
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->getAuthor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->setAuthor(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;

    .line 1836
    :cond_7
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->hasReleaseTime()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1837
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->getReleaseTime()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->setReleaseTime(J)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;

    .line 1839
    :cond_8
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->hasFilesize()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1840
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->getFilesize()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->setFilesize(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;

    .line 1842
    :cond_9
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->hasDownloads()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1843
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->getDownloads()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->setDownloads(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;

    .line 1845
    :cond_a
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->hasViews()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1846
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->getViews()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->setViews(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;

    .line 1848
    :cond_b
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->hasFileurl()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1849
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->getFileurl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->setFileurl(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;

    .line 1851
    :cond_c
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->hasIcon()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1852
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->getIcon()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->setIcon(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;

    .line 1854
    :cond_d
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->shotPicBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_15

    .line 1855
    # getter for: Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->shotPic_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->access$3100(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1856
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->shotPic_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1857
    # getter for: Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->shotPic_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->access$3100(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->shotPic_:Ljava/util/List;

    .line 1858
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    .line 1863
    :goto_1
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->onChanged()V

    .line 1879
    :cond_e
    :goto_2
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->hasApkType()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1880
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->getApkType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->setApkType(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;

    .line 1882
    :cond_f
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->hasPraise()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1883
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->getPraise()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->setPraise(I)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;

    .line 1885
    :cond_10
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->hasPoor()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1886
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->getPoor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->setPoor(I)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;

    .line 1888
    :cond_11
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->hasNearmeId()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1889
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->getNearmeId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->setNearmeId(J)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;

    .line 1891
    :cond_12
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->hasExt()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1892
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->getExt()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->setExt(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;

    .line 1894
    :cond_13
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto/16 :goto_0

    .line 1860
    :cond_14
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->ensureShotPicIsMutable()V

    .line 1861
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->shotPic_:Ljava/util/List;

    # getter for: Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->shotPic_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->access$3100(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 1866
    :cond_15
    # getter for: Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->shotPic_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->access$3100(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e

    .line 1867
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->shotPicBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1868
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->shotPicBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 1869
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->shotPicBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 1870
    # getter for: Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->shotPic_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->access$3100(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->shotPic_:Ljava/util/List;

    .line 1871
    iget v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x2001

    iput v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    .line 1872
    # getter for: Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->access$3800()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->getShotPicFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :cond_16
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->shotPicBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto/16 :goto_2

    .line 1875
    :cond_17
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->shotPicBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    # getter for: Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->shotPic_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->access$3100(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto/16 :goto_2
.end method

.method public removeShotPic(I)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 2687
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->shotPicBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2688
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->ensureShotPicIsMutable()V

    .line 2689
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->shotPic_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2690
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->onChanged()V

    .line 2694
    :goto_0
    return-object p0

    .line 2692
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->shotPicBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public setApkType(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2770
    if-nez p1, :cond_0

    .line 2771
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2773
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2774
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->apkType_:Ljava/lang/Object;

    .line 2775
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->onChanged()V

    .line 2776
    return-object p0
.end method

.method setApkType(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 2787
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2788
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->apkType_:Ljava/lang/Object;

    .line 2789
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->onChanged()V

    .line 2790
    return-void
.end method

.method public setAuthor(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2282
    if-nez p1, :cond_0

    .line 2283
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2285
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2286
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->author_:Ljava/lang/Object;

    .line 2287
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->onChanged()V

    .line 2288
    return-object p0
.end method

.method setAuthor(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 2299
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2300
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->author_:Ljava/lang/Object;

    .line 2301
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->onChanged()V

    .line 2302
    return-void
.end method

.method public setDescription(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2240
    if-nez p1, :cond_0

    .line 2241
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2243
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2244
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->description_:Ljava/lang/Object;

    .line 2245
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->onChanged()V

    .line 2246
    return-object p0
.end method

.method setDescription(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 2257
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2258
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->description_:Ljava/lang/Object;

    .line 2259
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->onChanged()V

    .line 2260
    return-void
.end method

.method public setDownloads(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2391
    if-nez p1, :cond_0

    .line 2392
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2394
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2395
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->downloads_:Ljava/lang/Object;

    .line 2396
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->onChanged()V

    .line 2397
    return-object p0
.end method

.method setDownloads(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 2408
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2409
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->downloads_:Ljava/lang/Object;

    .line 2410
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->onChanged()V

    .line 2411
    return-void
.end method

.method public setExt(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2887
    if-nez p1, :cond_0

    .line 2888
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2890
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2891
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->ext_:Ljava/lang/Object;

    .line 2892
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->onChanged()V

    .line 2893
    return-object p0
.end method

.method setExt(Lcom/google/protobuf/ByteString;)V
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 2904
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2905
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->ext_:Ljava/lang/Object;

    .line 2906
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->onChanged()V

    .line 2907
    return-void
.end method

.method public setFilesize(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2349
    if-nez p1, :cond_0

    .line 2350
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2352
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2353
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->filesize_:Ljava/lang/Object;

    .line 2354
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->onChanged()V

    .line 2355
    return-object p0
.end method

.method setFilesize(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 2366
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2367
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->filesize_:Ljava/lang/Object;

    .line 2368
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->onChanged()V

    .line 2369
    return-void
.end method

.method public setFileurl(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2475
    if-nez p1, :cond_0

    .line 2476
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2478
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2479
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->fileurl_:Ljava/lang/Object;

    .line 2480
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->onChanged()V

    .line 2481
    return-object p0
.end method

.method setFileurl(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 2492
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2493
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->fileurl_:Ljava/lang/Object;

    .line 2494
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->onChanged()V

    .line 2495
    return-void
.end method

.method public setIcon(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2517
    if-nez p1, :cond_0

    .line 2518
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2520
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2521
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->icon_:Ljava/lang/Object;

    .line 2522
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->onChanged()V

    .line 2523
    return-object p0
.end method

.method setIcon(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 2534
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2535
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->icon_:Ljava/lang/Object;

    .line 2536
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->onChanged()V

    .line 2537
    return-void
.end method

.method public setId(J)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 2039
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2040
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->id_:J

    .line 2041
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->onChanged()V

    .line 2042
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2072
    if-nez p1, :cond_0

    .line 2073
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2075
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2076
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->name_:Ljava/lang/Object;

    .line 2077
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->onChanged()V

    .line 2078
    return-object p0
.end method

.method setName(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 2089
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2090
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->name_:Ljava/lang/Object;

    .line 2091
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->onChanged()V

    .line 2092
    return-void
.end method

.method public setNearmeId(J)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 2854
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2855
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->nearmeId_:J

    .line 2856
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->onChanged()V

    .line 2857
    return-object p0
.end method

.method public setPackage(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2114
    if-nez p1, :cond_0

    .line 2115
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2117
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2118
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->package_:Ljava/lang/Object;

    .line 2119
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->onChanged()V

    .line 2120
    return-object p0
.end method

.method setPackage(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 2131
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2132
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->package_:Ljava/lang/Object;

    .line 2133
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->onChanged()V

    .line 2134
    return-void
.end method

.method public setPoor(I)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 2829
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2830
    iput p1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->poor_:I

    .line 2831
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->onChanged()V

    .line 2832
    return-object p0
.end method

.method public setPraise(I)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 2804
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2805
    iput p1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->praise_:I

    .line 2806
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->onChanged()V

    .line 2807
    return-object p0
.end method

.method public setReleaseTime(J)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 2316
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2317
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->releaseTime_:J

    .line 2318
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->onChanged()V

    .line 2319
    return-object p0
.end method

.method public setShotPic(ILcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;

    .prologue
    .line 2597
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->shotPicBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2598
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->ensureShotPicIsMutable()V

    .line 2599
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->shotPic_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->build()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2600
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->onChanged()V

    .line 2604
    :goto_0
    return-object p0

    .line 2602
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->shotPicBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic$Builder;->build()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setShotPic(ILcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkShotPic;

    .prologue
    .line 2581
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->shotPicBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 2582
    if-nez p2, :cond_0

    .line 2583
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2585
    :cond_0
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->ensureShotPicIsMutable()V

    .line 2586
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->shotPic_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2587
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->onChanged()V

    .line 2591
    :goto_0
    return-object p0

    .line 2589
    :cond_1
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->shotPicBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setVersionName(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2156
    if-nez p1, :cond_0

    .line 2157
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2159
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2160
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->versionName_:Ljava/lang/Object;

    .line 2161
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->onChanged()V

    .line 2162
    return-object p0
.end method

.method setVersionName(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 2173
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2174
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->versionName_:Ljava/lang/Object;

    .line 2175
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->onChanged()V

    .line 2176
    return-void
.end method

.method public setVersionNumber(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2198
    if-nez p1, :cond_0

    .line 2199
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2201
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2202
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->versionNumber_:Ljava/lang/Object;

    .line 2203
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->onChanged()V

    .line 2204
    return-object p0
.end method

.method setVersionNumber(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 2215
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2216
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->versionNumber_:Ljava/lang/Object;

    .line 2217
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->onChanged()V

    .line 2218
    return-void
.end method

.method public setViews(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2433
    if-nez p1, :cond_0

    .line 2434
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2436
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2437
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->views_:Ljava/lang/Object;

    .line 2438
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->onChanged()V

    .line 2439
    return-object p0
.end method

.method setViews(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 2450
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->bitField0_:I

    .line 2451
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->views_:Ljava/lang/Object;

    .line 2452
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->onChanged()V

    .line 2453
    return-void
.end method
