.class public final Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "ConfigThreadProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_configOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;",
        ">;",
        "Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_configOrBuilder;"
    }
.end annotation


# instance fields
.field private attachment_:J

.field private author_:Ljava/lang/Object;

.field private authorid_:J

.field private bitField0_:I

.field private categoryId_:I

.field private configId_:J

.field private configIntro_:Ljava/lang/Object;

.field private configName_:Ljava/lang/Object;

.field private configParams_:Ljava/lang/Object;

.field private dateline_:J

.field private downloadNum_:I

.field private fid_:J

.field private groupid_:J

.field private imageBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/oppo/tribune/protobuf/PbUrlProto$pb_url;",
            "Lcom/oppo/tribune/protobuf/PbUrlProto$pb_url$Builder;",
            "Lcom/oppo/tribune/protobuf/PbUrlProto$pb_urlOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private image_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/PbUrlProto$pb_url;",
            ">;"
        }
    .end annotation
.end field

.field private isfollowing_:I

.field private islike_:I

.field private likeNum_:I

.field private likes_:J

.field private replies_:J

.field private shareTime_:I

.field private subject_:Ljava/lang/Object;

.field private summary_:Ljava/lang/Object;

.field private tid_:J

.field private userId_:J

.field private userName_:Ljava/lang/Object;

.field private views_:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 933
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 1509
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->userName_:Ljava/lang/Object;

    .line 1545
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->configName_:Ljava/lang/Object;

    .line 1581
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->configParams_:Ljava/lang/Object;

    .line 1617
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->configIntro_:Ljava/lang/Object;

    .line 1779
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->subject_:Ljava/lang/Object;

    .line 1815
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->summary_:Ljava/lang/Object;

    .line 1872
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->image_:Ljava/util/List;

    .line 2121
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->author_:Ljava/lang/Object;

    .line 934
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->maybeForceBuilderInitialization()V

    .line 935
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 938
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 1509
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->userName_:Ljava/lang/Object;

    .line 1545
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->configName_:Ljava/lang/Object;

    .line 1581
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->configParams_:Ljava/lang/Object;

    .line 1617
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->configIntro_:Ljava/lang/Object;

    .line 1779
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->subject_:Ljava/lang/Object;

    .line 1815
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->summary_:Ljava/lang/Object;

    .line 1872
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->image_:Ljava/util/List;

    .line 2121
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->author_:Ljava/lang/Object;

    .line 939
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->maybeForceBuilderInitialization()V

    .line 940
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/ConfigThreadProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/ConfigThreadProto$1;

    .prologue
    .line 919
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;)Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 919
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;
    .locals 1

    .prologue
    .line 919
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->create()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1032
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;

    move-result-object v0

    .line 1033
    .local v0, "result":Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1034
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 1037
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;
    .locals 1

    .prologue
    .line 947
    new-instance v0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;-><init>()V

    return-object v0
.end method

.method private ensureImageIsMutable()V
    .locals 3

    .prologue
    const v2, 0x8000

    .line 1875
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-eq v0, v2, :cond_0

    .line 1876
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->image_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->image_:Ljava/util/List;

    .line 1877
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 1879
    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 924
    # getter for: Lcom/oppo/tribune/protobuf/ConfigThreadProto;->internal_static_protobuf_pb_config_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigThreadProto;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getImageFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/oppo/tribune/protobuf/PbUrlProto$pb_url;",
            "Lcom/oppo/tribune/protobuf/PbUrlProto$pb_url$Builder;",
            "Lcom/oppo/tribune/protobuf/PbUrlProto$pb_urlOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    const v3, 0x8000

    .line 2045
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->imageBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2046
    new-instance v1, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v2, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->image_:Ljava/util/List;

    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->isClean()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->imageBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 2052
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->image_:Ljava/util/List;

    .line 2054
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->imageBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 2046
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 942
    # getter for: Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 943
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->getImageFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 945
    :cond_0
    return-void
.end method


# virtual methods
.method public addAllImage(Ljava/lang/Iterable;)Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/oppo/tribune/protobuf/PbUrlProto$pb_url;",
            ">;)",
            "Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;"
        }
    .end annotation

    .prologue
    .line 1981
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/oppo/tribune/protobuf/PbUrlProto$pb_url;>;"
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->imageBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1982
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->ensureImageIsMutable()V

    .line 1983
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->image_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1984
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->onChanged()V

    .line 1988
    :goto_0
    return-object p0

    .line 1986
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->imageBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addImage(ILcom/oppo/tribune/protobuf/PbUrlProto$pb_url$Builder;)Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/oppo/tribune/protobuf/PbUrlProto$pb_url$Builder;

    .prologue
    .line 1970
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->imageBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1971
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->ensureImageIsMutable()V

    .line 1972
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->image_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/PbUrlProto$pb_url$Builder;->build()Lcom/oppo/tribune/protobuf/PbUrlProto$pb_url;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1973
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->onChanged()V

    .line 1977
    :goto_0
    return-object p0

    .line 1975
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->imageBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/PbUrlProto$pb_url$Builder;->build()Lcom/oppo/tribune/protobuf/PbUrlProto$pb_url;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addImage(ILcom/oppo/tribune/protobuf/PbUrlProto$pb_url;)Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/oppo/tribune/protobuf/PbUrlProto$pb_url;

    .prologue
    .line 1945
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->imageBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1946
    if-nez p2, :cond_0

    .line 1947
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1949
    :cond_0
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->ensureImageIsMutable()V

    .line 1950
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->image_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1951
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->onChanged()V

    .line 1955
    :goto_0
    return-object p0

    .line 1953
    :cond_1
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->imageBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addImage(Lcom/oppo/tribune/protobuf/PbUrlProto$pb_url$Builder;)Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/oppo/tribune/protobuf/PbUrlProto$pb_url$Builder;

    .prologue
    .line 1959
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->imageBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1960
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->ensureImageIsMutable()V

    .line 1961
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->image_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PbUrlProto$pb_url$Builder;->build()Lcom/oppo/tribune/protobuf/PbUrlProto$pb_url;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1962
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->onChanged()V

    .line 1966
    :goto_0
    return-object p0

    .line 1964
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->imageBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/PbUrlProto$pb_url$Builder;->build()Lcom/oppo/tribune/protobuf/PbUrlProto$pb_url;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addImage(Lcom/oppo/tribune/protobuf/PbUrlProto$pb_url;)Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;
    .locals 1
    .param p1, "value"    # Lcom/oppo/tribune/protobuf/PbUrlProto$pb_url;

    .prologue
    .line 1931
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->imageBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1932
    if-nez p1, :cond_0

    .line 1933
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1935
    :cond_0
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->ensureImageIsMutable()V

    .line 1936
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->image_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1937
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->onChanged()V

    .line 1941
    :goto_0
    return-object p0

    .line 1939
    :cond_1
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->imageBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addImageBuilder()Lcom/oppo/tribune/protobuf/PbUrlProto$pb_url$Builder;
    .locals 2

    .prologue
    .line 2030
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->getImageFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/oppo/tribune/protobuf/PbUrlProto$pb_url;->getDefaultInstance()Lcom/oppo/tribune/protobuf/PbUrlProto$pb_url;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PbUrlProto$pb_url$Builder;

    return-object v0
.end method

.method public addImageBuilder(I)Lcom/oppo/tribune/protobuf/PbUrlProto$pb_url$Builder;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 2035
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->getImageFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/oppo/tribune/protobuf/PbUrlProto$pb_url;->getDefaultInstance()Lcom/oppo/tribune/protobuf/PbUrlProto$pb_url;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PbUrlProto$pb_url$Builder;

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 919
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->build()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 919
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->build()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;
    .locals 2

    .prologue
    .line 1023
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;

    move-result-object v0

    .line 1024
    .local v0, "result":Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1025
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 1027
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 919
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 919
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;
    .locals 11

    .prologue
    const/high16 v10, 0x80000

    const/high16 v9, 0x40000

    const/high16 v8, 0x20000

    const/high16 v7, 0x10000

    const v6, 0x8000

    .line 1041
    new-instance v1, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;-><init>(Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;Lcom/oppo/tribune/protobuf/ConfigThreadProto$1;)V

    .line 1042
    .local v1, "result":Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 1043
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 1044
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1045
    or-int/lit8 v2, v2, 0x1

    .line 1047
    :cond_0
    iget-wide v4, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->configId_:J

    # setter for: Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->configId_:J
    invoke-static {v1, v4, v5}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->access$702(Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;J)J

    .line 1048
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 1049
    or-int/lit8 v2, v2, 0x2

    .line 1051
    :cond_1
    iget-wide v4, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->userId_:J

    # setter for: Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->userId_:J
    invoke-static {v1, v4, v5}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->access$802(Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;J)J

    .line 1052
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 1053
    or-int/lit8 v2, v2, 0x4

    .line 1055
    :cond_2
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->userName_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->userName_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->access$902(Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1056
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 1057
    or-int/lit8 v2, v2, 0x8

    .line 1059
    :cond_3
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->configName_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->configName_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->access$1002(Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1060
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 1061
    or-int/lit8 v2, v2, 0x10

    .line 1063
    :cond_4
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->configParams_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->configParams_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->access$1102(Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1064
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 1065
    or-int/lit8 v2, v2, 0x20

    .line 1067
    :cond_5
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->configIntro_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->configIntro_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->access$1202(Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1068
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 1069
    or-int/lit8 v2, v2, 0x40

    .line 1071
    :cond_6
    iget v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->shareTime_:I

    # setter for: Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->shareTime_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->access$1302(Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;I)I

    .line 1072
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 1073
    or-int/lit16 v2, v2, 0x80

    .line 1075
    :cond_7
    iget v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->likeNum_:I

    # setter for: Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->likeNum_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->access$1402(Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;I)I

    .line 1076
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_8

    .line 1077
    or-int/lit16 v2, v2, 0x100

    .line 1079
    :cond_8
    iget v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->categoryId_:I

    # setter for: Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->categoryId_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->access$1502(Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;I)I

    .line 1080
    and-int/lit16 v3, v0, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_9

    .line 1081
    or-int/lit16 v2, v2, 0x200

    .line 1083
    :cond_9
    iget v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->downloadNum_:I

    # setter for: Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->downloadNum_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->access$1602(Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;I)I

    .line 1084
    and-int/lit16 v3, v0, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_a

    .line 1085
    or-int/lit16 v2, v2, 0x400

    .line 1087
    :cond_a
    iget-wide v4, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->tid_:J

    # setter for: Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->tid_:J
    invoke-static {v1, v4, v5}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->access$1702(Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;J)J

    .line 1088
    and-int/lit16 v3, v0, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_b

    .line 1089
    or-int/lit16 v2, v2, 0x800

    .line 1091
    :cond_b
    iget-wide v4, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->fid_:J

    # setter for: Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->fid_:J
    invoke-static {v1, v4, v5}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->access$1802(Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;J)J

    .line 1092
    and-int/lit16 v3, v0, 0x1000

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_c

    .line 1093
    or-int/lit16 v2, v2, 0x1000

    .line 1095
    :cond_c
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->subject_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->subject_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->access$1902(Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1096
    and-int/lit16 v3, v0, 0x2000

    const/16 v4, 0x2000

    if-ne v3, v4, :cond_d

    .line 1097
    or-int/lit16 v2, v2, 0x2000

    .line 1099
    :cond_d
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->summary_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->summary_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->access$2002(Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1100
    and-int/lit16 v3, v0, 0x4000

    const/16 v4, 0x4000

    if-ne v3, v4, :cond_e

    .line 1101
    or-int/lit16 v2, v2, 0x4000

    .line 1103
    :cond_e
    iget-wide v4, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->dateline_:J

    # setter for: Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->dateline_:J
    invoke-static {v1, v4, v5}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->access$2102(Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;J)J

    .line 1104
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->imageBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v3, :cond_19

    .line 1105
    iget v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    and-int/2addr v3, v6

    if-ne v3, v6, :cond_f

    .line 1106
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->image_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->image_:Ljava/util/List;

    .line 1107
    iget v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    const v4, -0x8001

    and-int/2addr v3, v4

    iput v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 1109
    :cond_f
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->image_:Ljava/util/List;

    # setter for: Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->image_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->access$2202(Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;Ljava/util/List;)Ljava/util/List;

    .line 1113
    :goto_0
    and-int v3, v0, v7

    if-ne v3, v7, :cond_10

    .line 1114
    or-int/2addr v2, v6

    .line 1116
    :cond_10
    iget-wide v4, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->replies_:J

    # setter for: Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->replies_:J
    invoke-static {v1, v4, v5}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->access$2302(Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;J)J

    .line 1117
    and-int v3, v0, v8

    if-ne v3, v8, :cond_11

    .line 1118
    or-int/2addr v2, v7

    .line 1120
    :cond_11
    iget-wide v4, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->views_:J

    # setter for: Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->views_:J
    invoke-static {v1, v4, v5}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->access$2402(Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;J)J

    .line 1121
    and-int v3, v0, v9

    if-ne v3, v9, :cond_12

    .line 1122
    or-int/2addr v2, v8

    .line 1124
    :cond_12
    iget-wide v4, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->attachment_:J

    # setter for: Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->attachment_:J
    invoke-static {v1, v4, v5}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->access$2502(Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;J)J

    .line 1125
    and-int v3, v0, v10

    if-ne v3, v10, :cond_13

    .line 1126
    or-int/2addr v2, v9

    .line 1128
    :cond_13
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->author_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->author_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->access$2602(Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1129
    const/high16 v3, 0x100000

    and-int/2addr v3, v0

    const/high16 v4, 0x100000

    if-ne v3, v4, :cond_14

    .line 1130
    or-int/2addr v2, v10

    .line 1132
    :cond_14
    iget-wide v4, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->authorid_:J

    # setter for: Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->authorid_:J
    invoke-static {v1, v4, v5}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->access$2702(Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;J)J

    .line 1133
    const/high16 v3, 0x200000

    and-int/2addr v3, v0

    const/high16 v4, 0x200000

    if-ne v3, v4, :cond_15

    .line 1134
    const/high16 v3, 0x100000

    or-int/2addr v2, v3

    .line 1136
    :cond_15
    iget-wide v4, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->groupid_:J

    # setter for: Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->groupid_:J
    invoke-static {v1, v4, v5}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->access$2802(Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;J)J

    .line 1137
    const/high16 v3, 0x400000

    and-int/2addr v3, v0

    const/high16 v4, 0x400000

    if-ne v3, v4, :cond_16

    .line 1138
    const/high16 v3, 0x200000

    or-int/2addr v2, v3

    .line 1140
    :cond_16
    iget v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->isfollowing_:I

    # setter for: Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->isfollowing_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->access$2902(Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;I)I

    .line 1141
    const/high16 v3, 0x800000

    and-int/2addr v3, v0

    const/high16 v4, 0x800000

    if-ne v3, v4, :cond_17

    .line 1142
    const/high16 v3, 0x400000

    or-int/2addr v2, v3

    .line 1144
    :cond_17
    iget-wide v4, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->likes_:J

    # setter for: Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->likes_:J
    invoke-static {v1, v4, v5}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->access$3002(Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;J)J

    .line 1145
    const/high16 v3, 0x1000000

    and-int/2addr v3, v0

    const/high16 v4, 0x1000000

    if-ne v3, v4, :cond_18

    .line 1146
    const/high16 v3, 0x800000

    or-int/2addr v2, v3

    .line 1148
    :cond_18
    iget v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->islike_:I

    # setter for: Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->islike_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->access$3102(Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;I)I

    .line 1149
    # setter for: Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->bitField0_:I
    invoke-static {v1, v2}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->access$3202(Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;I)I

    .line 1150
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->onBuilt()V

    .line 1151
    return-object v1

    .line 1111
    :cond_19
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->imageBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v3

    # setter for: Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->image_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->access$2202(Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;Ljava/util/List;)Ljava/util/List;

    goto/16 :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 919
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->clear()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 919
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->clear()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 919
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->clear()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 919
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->clear()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    .line 951
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 952
    iput-wide v2, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->configId_:J

    .line 953
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 954
    iput-wide v2, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->userId_:J

    .line 955
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 956
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->userName_:Ljava/lang/Object;

    .line 957
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 958
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->configName_:Ljava/lang/Object;

    .line 959
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 960
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->configParams_:Ljava/lang/Object;

    .line 961
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 962
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->configIntro_:Ljava/lang/Object;

    .line 963
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 964
    iput v4, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->shareTime_:I

    .line 965
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 966
    iput v4, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->likeNum_:I

    .line 967
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 968
    iput v4, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->categoryId_:I

    .line 969
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 970
    iput v4, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->downloadNum_:I

    .line 971
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 972
    iput-wide v2, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->tid_:J

    .line 973
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 974
    iput-wide v2, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->fid_:J

    .line 975
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 976
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->subject_:Ljava/lang/Object;

    .line 977
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 978
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->summary_:Ljava/lang/Object;

    .line 979
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 980
    iput-wide v2, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->dateline_:J

    .line 981
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 982
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->imageBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 983
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->image_:Ljava/util/List;

    .line 984
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 988
    :goto_0
    iput-wide v2, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->replies_:J

    .line 989
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 990
    iput-wide v2, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->views_:J

    .line 991
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 992
    iput-wide v2, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->attachment_:J

    .line 993
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 994
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->author_:Ljava/lang/Object;

    .line 995
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 996
    iput-wide v2, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->authorid_:J

    .line 997
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    const v1, -0x100001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 998
    iput-wide v2, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->groupid_:J

    .line 999
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 1000
    iput v4, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->isfollowing_:I

    .line 1001
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    const v1, -0x400001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 1002
    iput-wide v2, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->likes_:J

    .line 1003
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    const v1, -0x800001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 1004
    iput v4, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->islike_:I

    .line 1005
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    const v1, -0x1000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 1006
    return-object p0

    .line 986
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->imageBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearAttachment()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;
    .locals 2

    .prologue
    .line 2114
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 2115
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->attachment_:J

    .line 2116
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->onChanged()V

    .line 2117
    return-object p0
.end method

.method public clearAuthor()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;
    .locals 2

    .prologue
    .line 2145
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 2146
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->getAuthor()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->author_:Ljava/lang/Object;

    .line 2147
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->onChanged()V

    .line 2148
    return-object p0
.end method

.method public clearAuthorid()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;
    .locals 2

    .prologue
    .line 2171
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    const v1, -0x100001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 2172
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->authorid_:J

    .line 2173
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->onChanged()V

    .line 2174
    return-object p0
.end method

.method public clearCategoryId()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;
    .locals 1

    .prologue
    .line 1709
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 1710
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->categoryId_:I

    .line 1711
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->onChanged()V

    .line 1712
    return-object p0
.end method

.method public clearConfigId()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;
    .locals 2

    .prologue
    .line 1481
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 1482
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->configId_:J

    .line 1483
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->onChanged()V

    .line 1484
    return-object p0
.end method

.method public clearConfigIntro()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;
    .locals 1

    .prologue
    .line 1641
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 1642
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->getConfigIntro()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->configIntro_:Ljava/lang/Object;

    .line 1643
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->onChanged()V

    .line 1644
    return-object p0
.end method

.method public clearConfigName()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;
    .locals 1

    .prologue
    .line 1569
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 1570
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->getConfigName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->configName_:Ljava/lang/Object;

    .line 1571
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->onChanged()V

    .line 1572
    return-object p0
.end method

.method public clearConfigParams()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;
    .locals 1

    .prologue
    .line 1605
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 1606
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->getConfigParams()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->configParams_:Ljava/lang/Object;

    .line 1607
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->onChanged()V

    .line 1608
    return-object p0
.end method

.method public clearDateline()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;
    .locals 2

    .prologue
    .line 1865
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 1866
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->dateline_:J

    .line 1867
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->onChanged()V

    .line 1868
    return-object p0
.end method

.method public clearDownloadNum()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;
    .locals 1

    .prologue
    .line 1730
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 1731
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->downloadNum_:I

    .line 1732
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->onChanged()V

    .line 1733
    return-object p0
.end method

.method public clearFid()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;
    .locals 2

    .prologue
    .line 1772
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 1773
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->fid_:J

    .line 1774
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->onChanged()V

    .line 1775
    return-object p0
.end method

.method public clearGroupid()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;
    .locals 2

    .prologue
    .line 2192
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 2193
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->groupid_:J

    .line 2194
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->onChanged()V

    .line 2195
    return-object p0
.end method

.method public clearImage()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;
    .locals 2

    .prologue
    .line 1991
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->imageBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1992
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->image_:Ljava/util/List;

    .line 1993
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 1994
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->onChanged()V

    .line 1998
    :goto_0
    return-object p0

    .line 1996
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->imageBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearIsfollowing()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;
    .locals 2

    .prologue
    .line 2213
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    const v1, -0x400001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 2214
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->isfollowing_:I

    .line 2215
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->onChanged()V

    .line 2216
    return-object p0
.end method

.method public clearIslike()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;
    .locals 2

    .prologue
    .line 2255
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    const v1, -0x1000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 2256
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->islike_:I

    .line 2257
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->onChanged()V

    .line 2258
    return-object p0
.end method

.method public clearLikeNum()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;
    .locals 1

    .prologue
    .line 1688
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 1689
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->likeNum_:I

    .line 1690
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->onChanged()V

    .line 1691
    return-object p0
.end method

.method public clearLikes()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;
    .locals 2

    .prologue
    .line 2234
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    const v1, -0x800001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 2235
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->likes_:J

    .line 2236
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->onChanged()V

    .line 2237
    return-object p0
.end method

.method public clearReplies()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;
    .locals 2

    .prologue
    .line 2072
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 2073
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->replies_:J

    .line 2074
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->onChanged()V

    .line 2075
    return-object p0
.end method

.method public clearShareTime()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;
    .locals 1

    .prologue
    .line 1667
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 1668
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->shareTime_:I

    .line 1669
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->onChanged()V

    .line 1670
    return-object p0
.end method

.method public clearSubject()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;
    .locals 1

    .prologue
    .line 1803
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 1804
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->getSubject()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->subject_:Ljava/lang/Object;

    .line 1805
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->onChanged()V

    .line 1806
    return-object p0
.end method

.method public clearSummary()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;
    .locals 1

    .prologue
    .line 1839
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 1840
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->getSummary()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->summary_:Ljava/lang/Object;

    .line 1841
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->onChanged()V

    .line 1842
    return-object p0
.end method

.method public clearTid()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;
    .locals 2

    .prologue
    .line 1751
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 1752
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->tid_:J

    .line 1753
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->onChanged()V

    .line 1754
    return-object p0
.end method

.method public clearUserId()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;
    .locals 2

    .prologue
    .line 1502
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 1503
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->userId_:J

    .line 1504
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->onChanged()V

    .line 1505
    return-object p0
.end method

.method public clearUserName()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;
    .locals 1

    .prologue
    .line 1533
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 1534
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->getUserName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->userName_:Ljava/lang/Object;

    .line 1535
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->onChanged()V

    .line 1536
    return-object p0
.end method

.method public clearViews()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;
    .locals 2

    .prologue
    .line 2093
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 2094
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->views_:J

    .line 2095
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->onChanged()V

    .line 2096
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 919
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->clone()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 919
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->clone()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 919
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->clone()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 919
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->clone()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 919
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->clone()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;
    .locals 2

    .prologue
    .line 1010
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->create()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;)Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;

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
    .line 919
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->clone()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAttachment()J
    .locals 2

    .prologue
    .line 2105
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->attachment_:J

    return-wide v0
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2126
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->author_:Ljava/lang/Object;

    .line 2127
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2128
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2129
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->author_:Ljava/lang/Object;

    .line 2132
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

.method public getAuthorid()J
    .locals 2

    .prologue
    .line 2162
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->authorid_:J

    return-wide v0
.end method

.method public getCategoryId()I
    .locals 1

    .prologue
    .line 1700
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->categoryId_:I

    return v0
.end method

.method public getConfigId()J
    .locals 2

    .prologue
    .line 1472
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->configId_:J

    return-wide v0
.end method

.method public getConfigIntro()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1622
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->configIntro_:Ljava/lang/Object;

    .line 1623
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1624
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1625
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->configIntro_:Ljava/lang/Object;

    .line 1628
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

.method public getConfigName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1550
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->configName_:Ljava/lang/Object;

    .line 1551
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1552
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1553
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->configName_:Ljava/lang/Object;

    .line 1556
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

.method public getConfigParams()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1586
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->configParams_:Ljava/lang/Object;

    .line 1587
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1588
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1589
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->configParams_:Ljava/lang/Object;

    .line 1592
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

.method public getDateline()J
    .locals 2

    .prologue
    .line 1856
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->dateline_:J

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 919
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 919
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;
    .locals 1

    .prologue
    .line 1019
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1015
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadNum()I
    .locals 1

    .prologue
    .line 1721
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->downloadNum_:I

    return v0
.end method

.method public getFid()J
    .locals 2

    .prologue
    .line 1763
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->fid_:J

    return-wide v0
.end method

.method public getGroupid()J
    .locals 2

    .prologue
    .line 2183
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->groupid_:J

    return-wide v0
.end method

.method public getImage(I)Lcom/oppo/tribune/protobuf/PbUrlProto$pb_url;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1899
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->imageBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1900
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->image_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PbUrlProto$pb_url;

    .line 1902
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->imageBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PbUrlProto$pb_url;

    goto :goto_0
.end method

.method public getImageBuilder(I)Lcom/oppo/tribune/protobuf/PbUrlProto$pb_url$Builder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 2012
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->getImageFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PbUrlProto$pb_url$Builder;

    return-object v0
.end method

.method public getImageBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/PbUrlProto$pb_url$Builder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2040
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->getImageFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getImageCount()I
    .locals 1

    .prologue
    .line 1892
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->imageBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1893
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->image_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1895
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->imageBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getImageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/PbUrlProto$pb_url;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1885
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->imageBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1886
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->image_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1888
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->imageBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getImageOrBuilder(I)Lcom/oppo/tribune/protobuf/PbUrlProto$pb_urlOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 2016
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->imageBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2017
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->image_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PbUrlProto$pb_urlOrBuilder;

    .line 2018
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->imageBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PbUrlProto$pb_urlOrBuilder;

    goto :goto_0
.end method

.method public getImageOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/oppo/tribune/protobuf/PbUrlProto$pb_urlOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2023
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->imageBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 2024
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->imageBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 2026
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->image_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getIsfollowing()I
    .locals 1

    .prologue
    .line 2204
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->isfollowing_:I

    return v0
.end method

.method public getIslike()I
    .locals 1

    .prologue
    .line 2246
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->islike_:I

    return v0
.end method

.method public getLikeNum()I
    .locals 1

    .prologue
    .line 1679
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->likeNum_:I

    return v0
.end method

.method public getLikes()J
    .locals 2

    .prologue
    .line 2225
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->likes_:J

    return-wide v0
.end method

.method public getReplies()J
    .locals 2

    .prologue
    .line 2063
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->replies_:J

    return-wide v0
.end method

.method public getShareTime()I
    .locals 1

    .prologue
    .line 1658
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->shareTime_:I

    return v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1784
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->subject_:Ljava/lang/Object;

    .line 1785
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1786
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1787
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->subject_:Ljava/lang/Object;

    .line 1790
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

.method public getSummary()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1820
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->summary_:Ljava/lang/Object;

    .line 1821
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1822
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1823
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->summary_:Ljava/lang/Object;

    .line 1826
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

.method public getTid()J
    .locals 2

    .prologue
    .line 1742
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->tid_:J

    return-wide v0
.end method

.method public getUserId()J
    .locals 2

    .prologue
    .line 1493
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->userId_:J

    return-wide v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1514
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->userName_:Ljava/lang/Object;

    .line 1515
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1516
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1517
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->userName_:Ljava/lang/Object;

    .line 1520
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

.method public getViews()J
    .locals 2

    .prologue
    .line 2084
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->views_:J

    return-wide v0
.end method

.method public hasAttachment()Z
    .locals 2

    .prologue
    const/high16 v1, 0x40000

    .line 2102
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    and-int/2addr v0, v1

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
    const/high16 v1, 0x80000

    .line 2123
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasAuthorid()Z
    .locals 2

    .prologue
    const/high16 v1, 0x100000

    .line 2159
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCategoryId()Z
    .locals 2

    .prologue
    .line 1697
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

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

.method public hasConfigId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1469
    iget v1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasConfigIntro()Z
    .locals 2

    .prologue
    .line 1619
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

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

.method public hasConfigName()Z
    .locals 2

    .prologue
    .line 1547
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

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

.method public hasConfigParams()Z
    .locals 2

    .prologue
    .line 1583
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

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

.method public hasDateline()Z
    .locals 2

    .prologue
    .line 1853
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

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

.method public hasDownloadNum()Z
    .locals 2

    .prologue
    .line 1718
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

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

.method public hasFid()Z
    .locals 2

    .prologue
    .line 1760
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

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

.method public hasGroupid()Z
    .locals 2

    .prologue
    const/high16 v1, 0x200000

    .line 2180
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIsfollowing()Z
    .locals 2

    .prologue
    const/high16 v1, 0x400000

    .line 2201
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIslike()Z
    .locals 2

    .prologue
    const/high16 v1, 0x1000000

    .line 2243
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLikeNum()Z
    .locals 2

    .prologue
    .line 1676
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

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

.method public hasLikes()Z
    .locals 2

    .prologue
    const/high16 v1, 0x800000

    .line 2222
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasReplies()Z
    .locals 2

    .prologue
    const/high16 v1, 0x10000

    .line 2060
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasShareTime()Z
    .locals 2

    .prologue
    .line 1655
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

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

.method public hasSubject()Z
    .locals 2

    .prologue
    .line 1781
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

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

.method public hasSummary()Z
    .locals 2

    .prologue
    .line 1817
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTid()Z
    .locals 2

    .prologue
    .line 1739
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

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

.method public hasUserId()Z
    .locals 2

    .prologue
    .line 1490
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

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

.method public hasUserName()Z
    .locals 2

    .prologue
    .line 1511
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

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

.method public hasViews()Z
    .locals 2

    .prologue
    const/high16 v1, 0x20000

    .line 2081
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    and-int/2addr v0, v1

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
    .line 929
    # getter for: Lcom/oppo/tribune/protobuf/ConfigThreadProto;->internal_static_protobuf_pb_config_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigThreadProto;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1268
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->hasConfigId()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1308
    :cond_0
    :goto_0
    return v0

    .line 1272
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->hasUserId()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1276
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->hasUserName()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1280
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->hasConfigName()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1284
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->hasConfigParams()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1288
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->hasConfigIntro()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1292
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->hasShareTime()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1296
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->hasLikeNum()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1300
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->hasCategoryId()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1304
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->hasDownloadNum()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1308
    const/4 v0, 0x1

    goto :goto_0
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
    .line 919
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 919
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;

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
    .line 919
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;

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
    .line 919
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 919
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;

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
    .line 919
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;
    .locals 6
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1315
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 1319
    .local v2, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 1320
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    .line 1326
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1328
    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 1329
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->onChanged()V

    .line 1330
    :goto_1
    return-object p0

    .line 1322
    :sswitch_0
    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 1323
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->onChanged()V

    goto :goto_1

    .line 1335
    :sswitch_1
    iget v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    or-int/lit16 v3, v3, 0x400

    iput v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 1336
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->tid_:J

    goto :goto_0

    .line 1340
    :sswitch_2
    iget v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    or-int/lit16 v3, v3, 0x800

    iput v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 1341
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->fid_:J

    goto :goto_0

    .line 1345
    :sswitch_3
    iget v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    or-int/lit16 v3, v3, 0x1000

    iput v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 1346
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->subject_:Ljava/lang/Object;

    goto :goto_0

    .line 1350
    :sswitch_4
    iget v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    or-int/lit16 v3, v3, 0x2000

    iput v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 1351
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->summary_:Ljava/lang/Object;

    goto :goto_0

    .line 1355
    :sswitch_5
    iget v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    or-int/lit16 v3, v3, 0x4000

    iput v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 1356
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->dateline_:J

    goto :goto_0

    .line 1360
    :sswitch_6
    invoke-static {}, Lcom/oppo/tribune/protobuf/PbUrlProto$pb_url;->newBuilder()Lcom/oppo/tribune/protobuf/PbUrlProto$pb_url$Builder;

    move-result-object v0

    .line 1361
    .local v0, "subBuilder":Lcom/oppo/tribune/protobuf/PbUrlProto$pb_url$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1362
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/PbUrlProto$pb_url$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/PbUrlProto$pb_url;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->addImage(Lcom/oppo/tribune/protobuf/PbUrlProto$pb_url;)Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;

    goto :goto_0

    .line 1366
    .end local v0    # "subBuilder":Lcom/oppo/tribune/protobuf/PbUrlProto$pb_url$Builder;
    :sswitch_7
    iget v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    const/high16 v4, 0x10000

    or-int/2addr v3, v4

    iput v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 1367
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->replies_:J

    goto :goto_0

    .line 1371
    :sswitch_8
    iget v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    const/high16 v4, 0x20000

    or-int/2addr v3, v4

    iput v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 1372
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->views_:J

    goto/16 :goto_0

    .line 1376
    :sswitch_9
    iget v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    const/high16 v4, 0x40000

    or-int/2addr v3, v4

    iput v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 1377
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->attachment_:J

    goto/16 :goto_0

    .line 1381
    :sswitch_a
    iget v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    const/high16 v4, 0x80000

    or-int/2addr v3, v4

    iput v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 1382
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->author_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 1386
    :sswitch_b
    iget v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    const/high16 v4, 0x100000

    or-int/2addr v3, v4

    iput v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 1387
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->authorid_:J

    goto/16 :goto_0

    .line 1391
    :sswitch_c
    iget v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    const/high16 v4, 0x200000

    or-int/2addr v3, v4

    iput v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 1392
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->groupid_:J

    goto/16 :goto_0

    .line 1396
    :sswitch_d
    iget v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    const/high16 v4, 0x400000

    or-int/2addr v3, v4

    iput v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 1397
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->isfollowing_:I

    goto/16 :goto_0

    .line 1401
    :sswitch_e
    iget v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    const/high16 v4, 0x800000

    or-int/2addr v3, v4

    iput v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 1402
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->likes_:J

    goto/16 :goto_0

    .line 1406
    :sswitch_f
    iget v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    const/high16 v4, 0x1000000

    or-int/2addr v3, v4

    iput v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 1407
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->islike_:I

    goto/16 :goto_0

    .line 1411
    :sswitch_10
    iget v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 1412
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->configId_:J

    goto/16 :goto_0

    .line 1416
    :sswitch_11
    iget v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 1417
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->userId_:J

    goto/16 :goto_0

    .line 1421
    :sswitch_12
    iget v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 1422
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->userName_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 1426
    :sswitch_13
    iget v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 1427
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->configName_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 1431
    :sswitch_14
    iget v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 1432
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->configParams_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 1436
    :sswitch_15
    iget v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 1437
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->configIntro_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 1441
    :sswitch_16
    iget v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x40

    iput v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 1442
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->shareTime_:I

    goto/16 :goto_0

    .line 1446
    :sswitch_17
    iget v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    or-int/lit16 v3, v3, 0x80

    iput v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 1447
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->likeNum_:I

    goto/16 :goto_0

    .line 1451
    :sswitch_18
    iget v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    or-int/lit16 v3, v3, 0x100

    iput v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 1452
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->categoryId_:I

    goto/16 :goto_0

    .line 1456
    :sswitch_19
    iget v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    or-int/lit16 v3, v3, 0x200

    iput v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 1457
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->downloadNum_:I

    goto/16 :goto_0

    .line 1320
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
        0x52 -> :sswitch_a
        0x58 -> :sswitch_b
        0x60 -> :sswitch_c
        0x68 -> :sswitch_d
        0x70 -> :sswitch_e
        0x78 -> :sswitch_f
        0xa0 -> :sswitch_10
        0xa8 -> :sswitch_11
        0xb2 -> :sswitch_12
        0xba -> :sswitch_13
        0xc2 -> :sswitch_14
        0xca -> :sswitch_15
        0xd0 -> :sswitch_16
        0xd8 -> :sswitch_17
        0xe0 -> :sswitch_18
        0xe8 -> :sswitch_19
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 1155
    instance-of v0, p1, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;

    if-eqz v0, :cond_0

    .line 1156
    check-cast p1, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;)Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;

    move-result-object p0

    .line 1159
    .end local p0    # "this":Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;
    :goto_0
    return-object p0

    .line 1158
    .restart local p0    # "this":Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;)Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;
    .locals 5
    .param p1, "other"    # Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;

    .prologue
    const/4 v0, 0x0

    const v4, -0x8001

    .line 1164
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 1264
    :goto_0
    return-object p0

    .line 1165
    :cond_0
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->hasConfigId()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1166
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->getConfigId()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->setConfigId(J)Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;

    .line 1168
    :cond_1
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->hasUserId()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1169
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->getUserId()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->setUserId(J)Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;

    .line 1171
    :cond_2
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->hasUserName()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1172
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->setUserName(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;

    .line 1174
    :cond_3
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->hasConfigName()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1175
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->getConfigName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->setConfigName(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;

    .line 1177
    :cond_4
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->hasConfigParams()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1178
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->getConfigParams()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->setConfigParams(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;

    .line 1180
    :cond_5
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->hasConfigIntro()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1181
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->getConfigIntro()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->setConfigIntro(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;

    .line 1183
    :cond_6
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->hasShareTime()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1184
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->getShareTime()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->setShareTime(I)Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;

    .line 1186
    :cond_7
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->hasLikeNum()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1187
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->getLikeNum()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->setLikeNum(I)Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;

    .line 1189
    :cond_8
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->hasCategoryId()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1190
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->getCategoryId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->setCategoryId(I)Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;

    .line 1192
    :cond_9
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->hasDownloadNum()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1193
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->getDownloadNum()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->setDownloadNum(I)Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;

    .line 1195
    :cond_a
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->hasTid()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1196
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->getTid()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->setTid(J)Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;

    .line 1198
    :cond_b
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->hasFid()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1199
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->getFid()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->setFid(J)Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;

    .line 1201
    :cond_c
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->hasSubject()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1202
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->getSubject()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->setSubject(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;

    .line 1204
    :cond_d
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->hasSummary()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1205
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->getSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->setSummary(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;

    .line 1207
    :cond_e
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->hasDateline()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1208
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->getDateline()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->setDateline(J)Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;

    .line 1210
    :cond_f
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->imageBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_1b

    .line 1211
    # getter for: Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->image_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->access$2200(Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 1212
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->image_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1213
    # getter for: Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->image_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->access$2200(Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->image_:Ljava/util/List;

    .line 1214
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    and-int/2addr v0, v4

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 1219
    :goto_1
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->onChanged()V

    .line 1236
    :cond_10
    :goto_2
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->hasReplies()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1237
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->getReplies()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->setReplies(J)Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;

    .line 1239
    :cond_11
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->hasViews()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1240
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->getViews()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->setViews(J)Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;

    .line 1242
    :cond_12
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->hasAttachment()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1243
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->getAttachment()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->setAttachment(J)Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;

    .line 1245
    :cond_13
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->hasAuthor()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1246
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->getAuthor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->setAuthor(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;

    .line 1248
    :cond_14
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->hasAuthorid()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1249
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->getAuthorid()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->setAuthorid(J)Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;

    .line 1251
    :cond_15
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->hasGroupid()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1252
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->getGroupid()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->setGroupid(J)Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;

    .line 1254
    :cond_16
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->hasIsfollowing()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1255
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->getIsfollowing()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->setIsfollowing(I)Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;

    .line 1257
    :cond_17
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->hasLikes()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1258
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->getLikes()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->setLikes(J)Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;

    .line 1260
    :cond_18
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->hasIslike()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1261
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->getIslike()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->setIslike(I)Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;

    .line 1263
    :cond_19
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto/16 :goto_0

    .line 1216
    :cond_1a
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->ensureImageIsMutable()V

    .line 1217
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->image_:Ljava/util/List;

    # getter for: Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->image_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->access$2200(Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 1222
    :cond_1b
    # getter for: Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->image_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->access$2200(Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_10

    .line 1223
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->imageBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1224
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->imageBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 1225
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->imageBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 1226
    # getter for: Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->image_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->access$2200(Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->image_:Ljava/util/List;

    .line 1227
    iget v1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    and-int/2addr v1, v4

    iput v1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 1228
    # getter for: Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->access$3300()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->getImageFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :cond_1c
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->imageBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto/16 :goto_2

    .line 1232
    :cond_1d
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->imageBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    # getter for: Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->image_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;->access$2200(Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto/16 :goto_2
.end method

.method public removeImage(I)Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 2001
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->imageBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2002
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->ensureImageIsMutable()V

    .line 2003
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->image_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2004
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->onChanged()V

    .line 2008
    :goto_0
    return-object p0

    .line 2006
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->imageBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public setAttachment(J)Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 2108
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 2109
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->attachment_:J

    .line 2110
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->onChanged()V

    .line 2111
    return-object p0
.end method

.method public setAuthor(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2136
    if-nez p1, :cond_0

    .line 2137
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2139
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 2140
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->author_:Ljava/lang/Object;

    .line 2141
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->onChanged()V

    .line 2142
    return-object p0
.end method

.method setAuthor(Lcom/google/protobuf/ByteString;)V
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 2151
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 2152
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->author_:Ljava/lang/Object;

    .line 2153
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->onChanged()V

    .line 2154
    return-void
.end method

.method public setAuthorid(J)Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 2165
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 2166
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->authorid_:J

    .line 2167
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->onChanged()V

    .line 2168
    return-object p0
.end method

.method public setCategoryId(I)Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1703
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 1704
    iput p1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->categoryId_:I

    .line 1705
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->onChanged()V

    .line 1706
    return-object p0
.end method

.method public setConfigId(J)Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 1475
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 1476
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->configId_:J

    .line 1477
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->onChanged()V

    .line 1478
    return-object p0
.end method

.method public setConfigIntro(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1632
    if-nez p1, :cond_0

    .line 1633
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1635
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 1636
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->configIntro_:Ljava/lang/Object;

    .line 1637
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->onChanged()V

    .line 1638
    return-object p0
.end method

.method setConfigIntro(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 1647
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 1648
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->configIntro_:Ljava/lang/Object;

    .line 1649
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->onChanged()V

    .line 1650
    return-void
.end method

.method public setConfigName(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1560
    if-nez p1, :cond_0

    .line 1561
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1563
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 1564
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->configName_:Ljava/lang/Object;

    .line 1565
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->onChanged()V

    .line 1566
    return-object p0
.end method

.method setConfigName(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 1575
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 1576
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->configName_:Ljava/lang/Object;

    .line 1577
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->onChanged()V

    .line 1578
    return-void
.end method

.method public setConfigParams(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1596
    if-nez p1, :cond_0

    .line 1597
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1599
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 1600
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->configParams_:Ljava/lang/Object;

    .line 1601
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->onChanged()V

    .line 1602
    return-object p0
.end method

.method setConfigParams(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 1611
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 1612
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->configParams_:Ljava/lang/Object;

    .line 1613
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->onChanged()V

    .line 1614
    return-void
.end method

.method public setDateline(J)Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 1859
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 1860
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->dateline_:J

    .line 1861
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->onChanged()V

    .line 1862
    return-object p0
.end method

.method public setDownloadNum(I)Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1724
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 1725
    iput p1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->downloadNum_:I

    .line 1726
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->onChanged()V

    .line 1727
    return-object p0
.end method

.method public setFid(J)Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 1766
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 1767
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->fid_:J

    .line 1768
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->onChanged()V

    .line 1769
    return-object p0
.end method

.method public setGroupid(J)Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 2186
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 2187
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->groupid_:J

    .line 2188
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->onChanged()V

    .line 2189
    return-object p0
.end method

.method public setImage(ILcom/oppo/tribune/protobuf/PbUrlProto$pb_url$Builder;)Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/oppo/tribune/protobuf/PbUrlProto$pb_url$Builder;

    .prologue
    .line 1921
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->imageBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1922
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->ensureImageIsMutable()V

    .line 1923
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->image_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/PbUrlProto$pb_url$Builder;->build()Lcom/oppo/tribune/protobuf/PbUrlProto$pb_url;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1924
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->onChanged()V

    .line 1928
    :goto_0
    return-object p0

    .line 1926
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->imageBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/PbUrlProto$pb_url$Builder;->build()Lcom/oppo/tribune/protobuf/PbUrlProto$pb_url;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setImage(ILcom/oppo/tribune/protobuf/PbUrlProto$pb_url;)Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/oppo/tribune/protobuf/PbUrlProto$pb_url;

    .prologue
    .line 1907
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->imageBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1908
    if-nez p2, :cond_0

    .line 1909
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1911
    :cond_0
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->ensureImageIsMutable()V

    .line 1912
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->image_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1913
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->onChanged()V

    .line 1917
    :goto_0
    return-object p0

    .line 1915
    :cond_1
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->imageBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setIsfollowing(I)Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 2207
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    const/high16 v1, 0x400000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 2208
    iput p1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->isfollowing_:I

    .line 2209
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->onChanged()V

    .line 2210
    return-object p0
.end method

.method public setIslike(I)Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 2249
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 2250
    iput p1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->islike_:I

    .line 2251
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->onChanged()V

    .line 2252
    return-object p0
.end method

.method public setLikeNum(I)Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1682
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 1683
    iput p1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->likeNum_:I

    .line 1684
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->onChanged()V

    .line 1685
    return-object p0
.end method

.method public setLikes(J)Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 2228
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    const/high16 v1, 0x800000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 2229
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->likes_:J

    .line 2230
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->onChanged()V

    .line 2231
    return-object p0
.end method

.method public setReplies(J)Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 2066
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 2067
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->replies_:J

    .line 2068
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->onChanged()V

    .line 2069
    return-object p0
.end method

.method public setShareTime(I)Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1661
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 1662
    iput p1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->shareTime_:I

    .line 1663
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->onChanged()V

    .line 1664
    return-object p0
.end method

.method public setSubject(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1794
    if-nez p1, :cond_0

    .line 1795
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1797
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 1798
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->subject_:Ljava/lang/Object;

    .line 1799
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->onChanged()V

    .line 1800
    return-object p0
.end method

.method setSubject(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 1809
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 1810
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->subject_:Ljava/lang/Object;

    .line 1811
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->onChanged()V

    .line 1812
    return-void
.end method

.method public setSummary(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1830
    if-nez p1, :cond_0

    .line 1831
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1833
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 1834
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->summary_:Ljava/lang/Object;

    .line 1835
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->onChanged()V

    .line 1836
    return-object p0
.end method

.method setSummary(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 1845
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 1846
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->summary_:Ljava/lang/Object;

    .line 1847
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->onChanged()V

    .line 1848
    return-void
.end method

.method public setTid(J)Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 1745
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 1746
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->tid_:J

    .line 1747
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->onChanged()V

    .line 1748
    return-object p0
.end method

.method public setUserId(J)Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 1496
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 1497
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->userId_:J

    .line 1498
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->onChanged()V

    .line 1499
    return-object p0
.end method

.method public setUserName(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1524
    if-nez p1, :cond_0

    .line 1525
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1527
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 1528
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->userName_:Ljava/lang/Object;

    .line 1529
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->onChanged()V

    .line 1530
    return-object p0
.end method

.method setUserName(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 1539
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 1540
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->userName_:Ljava/lang/Object;

    .line 1541
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->onChanged()V

    .line 1542
    return-void
.end method

.method public setViews(J)Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 2087
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->bitField0_:I

    .line 2088
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->views_:J

    .line 2089
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;->onChanged()V

    .line 2090
    return-object p0
.end method
