.class public final Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "ConfigNumProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignumOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;",
        ">;",
        "Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignumOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private brandId_:J

.field private eachTypeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;",
            "Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;",
            "Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_numOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private eachType_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 928
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 1142
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->eachType_:Ljava/util/List;

    .line 929
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->maybeForceBuilderInitialization()V

    .line 930
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 933
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 1142
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->eachType_:Ljava/util/List;

    .line 934
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->maybeForceBuilderInitialization()V

    .line 935
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/ConfigNumProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/ConfigNumProto$1;

    .prologue
    .line 914
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;)Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 914
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;
    .locals 1

    .prologue
    .line 914
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->create()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 984
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;

    move-result-object v0

    .line 985
    .local v0, "result":Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 986
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 989
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;
    .locals 1

    .prologue
    .line 944
    new-instance v0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;-><init>()V

    return-object v0
.end method

.method private ensureEachTypeIsMutable()V
    .locals 2

    .prologue
    .line 1146
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1147
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->eachType_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->eachType_:Ljava/util/List;

    .line 1149
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->bitField0_:I

    .line 1151
    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 919
    # getter for: Lcom/oppo/tribune/protobuf/ConfigNumProto;->internal_static_protobuf_pb_headset_confignum_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigNumProto;->access$1200()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getEachTypeFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;",
            "Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;",
            "Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_numOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1338
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->eachTypeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1339
    new-instance v1, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v2, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->eachType_:Ljava/util/List;

    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->isClean()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v1, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->eachTypeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 1343
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->eachType_:Ljava/util/List;

    .line 1345
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->eachTypeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 1339
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 938
    # getter for: Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;->access$1700()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 939
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->getEachTypeFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 941
    :cond_0
    return-void
.end method


# virtual methods
.method public addAllEachType(Ljava/lang/Iterable;)Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;",
            ">;)",
            "Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;"
        }
    .end annotation

    .prologue
    .line 1265
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;>;"
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->eachTypeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1266
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->ensureEachTypeIsMutable()V

    .line 1267
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->eachType_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1268
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->onChanged()V

    .line 1272
    :goto_0
    return-object p0

    .line 1270
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->eachTypeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addEachType(ILcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;)Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;

    .prologue
    .line 1253
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->eachTypeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1254
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->ensureEachTypeIsMutable()V

    .line 1255
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->eachType_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->build()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1256
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->onChanged()V

    .line 1260
    :goto_0
    return-object p0

    .line 1258
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->eachTypeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->build()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addEachType(ILcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;)Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;

    .prologue
    .line 1225
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->eachTypeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1226
    if-nez p2, :cond_0

    .line 1227
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1229
    :cond_0
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->ensureEachTypeIsMutable()V

    .line 1230
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->eachType_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1231
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->onChanged()V

    .line 1235
    :goto_0
    return-object p0

    .line 1233
    :cond_1
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->eachTypeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addEachType(Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;)Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;

    .prologue
    .line 1240
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->eachTypeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1241
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->ensureEachTypeIsMutable()V

    .line 1242
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->eachType_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->build()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1243
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->onChanged()V

    .line 1247
    :goto_0
    return-object p0

    .line 1245
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->eachTypeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->build()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addEachType(Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;)Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;
    .locals 1
    .param p1, "value"    # Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;

    .prologue
    .line 1210
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->eachTypeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1211
    if-nez p1, :cond_0

    .line 1212
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1214
    :cond_0
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->ensureEachTypeIsMutable()V

    .line 1215
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->eachType_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1216
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->onChanged()V

    .line 1220
    :goto_0
    return-object p0

    .line 1218
    :cond_1
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->eachTypeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addEachTypeBuilder()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;
    .locals 2

    .prologue
    .line 1320
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->getEachTypeFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;

    return-object v0
.end method

.method public addEachTypeBuilder(I)Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 1327
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->getEachTypeFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 914
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->build()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 914
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->build()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;
    .locals 2

    .prologue
    .line 975
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;

    move-result-object v0

    .line 976
    .local v0, "result":Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 977
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 979
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 914
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 914
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;
    .locals 6

    .prologue
    .line 993
    new-instance v1, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;-><init>(Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;Lcom/oppo/tribune/protobuf/ConfigNumProto$1;)V

    .line 995
    .local v1, "result":Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->bitField0_:I

    .line 996
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 997
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 998
    or-int/lit8 v2, v2, 0x1

    .line 1000
    :cond_0
    iget-wide v4, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->brandId_:J

    # setter for: Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;->brandId_:J
    invoke-static {v1, v4, v5}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;->access$1902(Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;J)J

    .line 1001
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->eachTypeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v3, :cond_2

    .line 1002
    iget v3, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 1003
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->eachType_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->eachType_:Ljava/util/List;

    .line 1005
    iget v3, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->bitField0_:I

    .line 1007
    :cond_1
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->eachType_:Ljava/util/List;

    # setter for: Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;->eachType_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;->access$2002(Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;Ljava/util/List;)Ljava/util/List;

    .line 1011
    :goto_0
    # setter for: Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;->bitField0_:I
    invoke-static {v1, v2}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;->access$2102(Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;I)I

    .line 1012
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->onBuilt()V

    .line 1013
    return-object v1

    .line 1009
    :cond_2
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->eachTypeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v3

    # setter for: Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;->eachType_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;->access$2002(Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;Ljava/util/List;)Ljava/util/List;

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 914
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->clear()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 914
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->clear()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 914
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->clear()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 914
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->clear()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;
    .locals 2

    .prologue
    .line 948
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 949
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->brandId_:J

    .line 950
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->bitField0_:I

    .line 951
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->eachTypeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 952
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->eachType_:Ljava/util/List;

    .line 953
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->bitField0_:I

    .line 957
    :goto_0
    return-object p0

    .line 955
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->eachTypeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearBrandId()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;
    .locals 2

    .prologue
    .line 1135
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->bitField0_:I

    .line 1136
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->brandId_:J

    .line 1137
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->onChanged()V

    .line 1138
    return-object p0
.end method

.method public clearEachType()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;
    .locals 1

    .prologue
    .line 1276
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->eachTypeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1277
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->eachType_:Ljava/util/List;

    .line 1278
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->bitField0_:I

    .line 1279
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->onChanged()V

    .line 1283
    :goto_0
    return-object p0

    .line 1281
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->eachTypeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 914
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->clone()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 914
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->clone()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 914
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->clone()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 914
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->clone()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 914
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->clone()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;
    .locals 2

    .prologue
    .line 961
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->create()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;)Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;

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
    .line 914
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->clone()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getBrandId()J
    .locals 2

    .prologue
    .line 1124
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->brandId_:J

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 914
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 914
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;
    .locals 1

    .prologue
    .line 970
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 965
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getEachType(I)Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1173
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->eachTypeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1174
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->eachType_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;

    .line 1176
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->eachTypeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;

    goto :goto_0
.end method

.method public getEachTypeBuilder(I)Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1299
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->getEachTypeFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;

    return-object v0
.end method

.method public getEachTypeBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1334
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->getEachTypeFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEachTypeCount()I
    .locals 1

    .prologue
    .line 1164
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->eachTypeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1165
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->eachType_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1167
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->eachTypeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getEachTypeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1156
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->eachTypeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1157
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->eachType_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1159
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->eachTypeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getEachTypeOrBuilder(I)Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_numOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1304
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->eachTypeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1305
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->eachType_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_numOrBuilder;

    .line 1307
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->eachTypeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_numOrBuilder;

    goto :goto_0
.end method

.method public getEachTypeOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_numOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1312
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->eachTypeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 1313
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->eachTypeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 1315
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->eachType_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public hasBrandId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1120
    iget v1, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 923
    # getter for: Lcom/oppo/tribune/protobuf/ConfigNumProto;->internal_static_protobuf_pb_headset_confignum_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigNumProto;->access$1300()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1063
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->hasBrandId()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1073
    :cond_0
    :goto_0
    return v1

    .line 1067
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->getEachTypeCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 1068
    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->getEachType(I)Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1067
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1073
    :cond_2
    const/4 v1, 0x1

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
    .line 914
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 914
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;

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
    .line 914
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;

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
    .line 914
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 914
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;

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
    .line 914
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;
    .locals 6
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1080
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 1083
    .local v2, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 1084
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    .line 1090
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1092
    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 1093
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->onChanged()V

    .line 1094
    :goto_1
    return-object p0

    .line 1086
    :sswitch_0
    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 1087
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->onChanged()V

    goto :goto_1

    .line 1099
    :sswitch_1
    iget v3, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->bitField0_:I

    .line 1100
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->brandId_:J

    goto :goto_0

    .line 1104
    :sswitch_2
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->newBuilder()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;

    move-result-object v0

    .line 1106
    .local v0, "subBuilder":Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1107
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->addEachType(Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;)Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;

    goto :goto_0

    .line 1084
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 1017
    instance-of v0, p1, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;

    if-eqz v0, :cond_0

    .line 1018
    check-cast p1, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;)Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;

    move-result-object p0

    .line 1021
    .end local p0    # "this":Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;
    :goto_0
    return-object p0

    .line 1020
    .restart local p0    # "this":Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;)Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;
    .locals 4
    .param p1, "other"    # Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;

    .prologue
    const/4 v0, 0x0

    .line 1027
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 1059
    :goto_0
    return-object p0

    .line 1030
    :cond_0
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;->hasBrandId()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1031
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;->getBrandId()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->setBrandId(J)Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;

    .line 1033
    :cond_1
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->eachTypeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_4

    .line 1034
    # getter for: Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;->eachType_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;->access$2000(Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1035
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->eachType_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1036
    # getter for: Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;->eachType_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;->access$2000(Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->eachType_:Ljava/util/List;

    .line 1037
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->bitField0_:I

    .line 1042
    :goto_1
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->onChanged()V

    .line 1058
    :cond_2
    :goto_2
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0

    .line 1039
    :cond_3
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->ensureEachTypeIsMutable()V

    .line 1040
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->eachType_:Ljava/util/List;

    # getter for: Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;->eachType_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;->access$2000(Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 1045
    :cond_4
    # getter for: Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;->eachType_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;->access$2000(Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1046
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->eachTypeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1047
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->eachTypeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 1048
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->eachTypeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 1049
    # getter for: Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;->eachType_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;->access$2000(Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->eachType_:Ljava/util/List;

    .line 1050
    iget v1, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->bitField0_:I

    .line 1051
    # getter for: Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;->access$2200()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->getEachTypeFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :cond_5
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->eachTypeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2

    .line 1054
    :cond_6
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->eachTypeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    # getter for: Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;->eachType_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;->access$2000(Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2
.end method

.method public removeEachType(I)Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1287
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->eachTypeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1288
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->ensureEachTypeIsMutable()V

    .line 1289
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->eachType_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1290
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->onChanged()V

    .line 1294
    :goto_0
    return-object p0

    .line 1292
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->eachTypeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public setBrandId(J)Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 1128
    iget v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->bitField0_:I

    .line 1129
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->brandId_:J

    .line 1130
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->onChanged()V

    .line 1131
    return-object p0
.end method

.method public setEachType(ILcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;)Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;

    .prologue
    .line 1198
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->eachTypeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1199
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->ensureEachTypeIsMutable()V

    .line 1200
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->eachType_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->build()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1201
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->onChanged()V

    .line 1205
    :goto_0
    return-object p0

    .line 1203
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->eachTypeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num$Builder;->build()Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setEachType(ILcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;)Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;

    .prologue
    .line 1182
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->eachTypeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1183
    if-nez p2, :cond_0

    .line 1184
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1186
    :cond_0
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->ensureEachTypeIsMutable()V

    .line 1187
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->eachType_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1188
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->onChanged()V

    .line 1192
    :goto_0
    return-object p0

    .line 1190
    :cond_1
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum$Builder;->eachTypeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method
