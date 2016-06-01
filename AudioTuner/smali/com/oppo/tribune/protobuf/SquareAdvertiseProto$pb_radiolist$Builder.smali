.class public final Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "SquareAdvertiseProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolistOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;",
        ">;",
        "Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolistOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private radiolistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;",
            "Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;",
            "Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radioOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private radiolist_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 985
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 1154
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->radiolist_:Ljava/util/List;

    .line 986
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->maybeForceBuilderInitialization()V

    .line 987
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 990
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 1154
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->radiolist_:Ljava/util/List;

    .line 991
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->maybeForceBuilderInitialization()V

    .line 992
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$1;

    .prologue
    .line 971
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;)Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 971
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;
    .locals 1

    .prologue
    .line 971
    invoke-static {}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->create()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1039
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;

    move-result-object v0

    .line 1040
    .local v0, "result":Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1041
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 1044
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;
    .locals 1

    .prologue
    .line 1001
    new-instance v0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;-><init>()V

    return-object v0
.end method

.method private ensureRadiolistIsMutable()V
    .locals 2

    .prologue
    .line 1158
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1159
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->radiolist_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->radiolist_:Ljava/util/List;

    .line 1161
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->bitField0_:I

    .line 1163
    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 976
    # getter for: Lcom/oppo/tribune/protobuf/SquareAdvertiseProto;->internal_static_protobuf_pb_radiolist_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto;->access$1300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getRadiolistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;",
            "Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;",
            "Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radioOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 1354
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->radiolistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_0

    .line 1355
    new-instance v1, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v2, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->radiolist_:Ljava/util/List;

    iget v3, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v0, :cond_1

    :goto_0
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->isClean()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v1, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->radiolistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 1359
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->radiolist_:Ljava/util/List;

    .line 1361
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->radiolistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 1355
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 995
    # getter for: Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;->access$1800()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 996
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->getRadiolistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 998
    :cond_0
    return-void
.end method


# virtual methods
.method public addAllRadiolist(Ljava/lang/Iterable;)Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;",
            ">;)",
            "Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;"
        }
    .end annotation

    .prologue
    .line 1281
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;>;"
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->radiolistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1282
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->ensureRadiolistIsMutable()V

    .line 1283
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->radiolist_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1284
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->onChanged()V

    .line 1288
    :goto_0
    return-object p0

    .line 1286
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->radiolistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addRadiolist(ILcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;)Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;

    .prologue
    .line 1268
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->radiolistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1269
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->ensureRadiolistIsMutable()V

    .line 1270
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->radiolist_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->build()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1271
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->onChanged()V

    .line 1276
    :goto_0
    return-object p0

    .line 1273
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->radiolistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->build()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addRadiolist(ILcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;)Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;

    .prologue
    .line 1240
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->radiolistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1241
    if-nez p2, :cond_0

    .line 1242
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1244
    :cond_0
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->ensureRadiolistIsMutable()V

    .line 1245
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->radiolist_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1246
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->onChanged()V

    .line 1250
    :goto_0
    return-object p0

    .line 1248
    :cond_1
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->radiolistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addRadiolist(Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;)Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;

    .prologue
    .line 1255
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->radiolistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1256
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->ensureRadiolistIsMutable()V

    .line 1257
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->radiolist_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->build()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1258
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->onChanged()V

    .line 1262
    :goto_0
    return-object p0

    .line 1260
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->radiolistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->build()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addRadiolist(Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;)Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;
    .locals 1
    .param p1, "value"    # Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;

    .prologue
    .line 1224
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->radiolistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1225
    if-nez p1, :cond_0

    .line 1226
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1228
    :cond_0
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->ensureRadiolistIsMutable()V

    .line 1229
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->radiolist_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1230
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->onChanged()V

    .line 1234
    :goto_0
    return-object p0

    .line 1232
    :cond_1
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->radiolistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addRadiolistBuilder()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;
    .locals 2

    .prologue
    .line 1336
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->getRadiolistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;

    return-object v0
.end method

.method public addRadiolistBuilder(I)Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 1343
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->getRadiolistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 971
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->build()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 971
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->build()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;
    .locals 2

    .prologue
    .line 1030
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;

    move-result-object v0

    .line 1031
    .local v0, "result":Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1032
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 1034
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 971
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 971
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;
    .locals 4

    .prologue
    .line 1048
    new-instance v1, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;-><init>(Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$1;)V

    .line 1050
    .local v1, "result":Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->bitField0_:I

    .line 1051
    .local v0, "from_bitField0_":I
    iget-object v2, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->radiolistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v2, :cond_1

    .line 1052
    iget v2, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1053
    iget-object v2, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->radiolist_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->radiolist_:Ljava/util/List;

    .line 1055
    iget v2, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->bitField0_:I

    .line 1057
    :cond_0
    iget-object v2, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->radiolist_:Ljava/util/List;

    # setter for: Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;->radiolist_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;->access$2002(Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;Ljava/util/List;)Ljava/util/List;

    .line 1061
    :goto_0
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->onBuilt()V

    .line 1062
    return-object v1

    .line 1059
    :cond_1
    iget-object v2, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->radiolistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v2}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v2

    # setter for: Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;->radiolist_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;->access$2002(Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;Ljava/util/List;)Ljava/util/List;

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 971
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->clear()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 971
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->clear()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 971
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->clear()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 971
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->clear()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;
    .locals 1

    .prologue
    .line 1005
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 1006
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->radiolistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1007
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->radiolist_:Ljava/util/List;

    .line 1008
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->bitField0_:I

    .line 1012
    :goto_0
    return-object p0

    .line 1010
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->radiolistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearRadiolist()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;
    .locals 1

    .prologue
    .line 1292
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->radiolistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1293
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->radiolist_:Ljava/util/List;

    .line 1294
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->bitField0_:I

    .line 1295
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->onChanged()V

    .line 1299
    :goto_0
    return-object p0

    .line 1297
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->radiolistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 971
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->clone()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 971
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->clone()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 971
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->clone()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 971
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->clone()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 971
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->clone()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;
    .locals 2

    .prologue
    .line 1016
    invoke-static {}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->create()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;)Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;

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
    .line 971
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->clone()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 971
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 971
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;
    .locals 1

    .prologue
    .line 1025
    invoke-static {}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1020
    invoke-static {}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getRadiolist(I)Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1185
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->radiolistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1186
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->radiolist_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;

    .line 1188
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->radiolistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;

    goto :goto_0
.end method

.method public getRadiolistBuilder(I)Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1315
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->getRadiolistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;

    return-object v0
.end method

.method public getRadiolistBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1350
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->getRadiolistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRadiolistCount()I
    .locals 1

    .prologue
    .line 1176
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->radiolistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1177
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->radiolist_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1179
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->radiolistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getRadiolistList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1168
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->radiolistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1169
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->radiolist_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1171
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->radiolistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getRadiolistOrBuilder(I)Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radioOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1320
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->radiolistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1321
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->radiolist_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radioOrBuilder;

    .line 1323
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->radiolistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radioOrBuilder;

    goto :goto_0
.end method

.method public getRadiolistOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radioOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1328
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->radiolistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 1329
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->radiolistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 1331
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->radiolist_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 980
    # getter for: Lcom/oppo/tribune/protobuf/SquareAdvertiseProto;->internal_static_protobuf_pb_radiolist_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto;->access$1400()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    .line 1109
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->getRadiolistCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1110
    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->getRadiolist(I)Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1112
    const/4 v1, 0x0

    .line 1115
    :goto_1
    return v1

    .line 1109
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1115
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
    .line 971
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 971
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;

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
    .line 971
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;

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
    .line 971
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 971
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;

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
    .line 971
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1122
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 1125
    .local v2, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 1126
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    .line 1132
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1134
    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 1135
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->onChanged()V

    .line 1136
    :goto_1
    return-object p0

    .line 1128
    :sswitch_0
    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 1129
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->onChanged()V

    goto :goto_1

    .line 1141
    :sswitch_1
    invoke-static {}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;->newBuilder()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;

    move-result-object v0

    .line 1143
    .local v0, "subBuilder":Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1144
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->addRadiolist(Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;)Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;

    goto :goto_0

    .line 1126
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 1066
    instance-of v0, p1, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;

    if-eqz v0, :cond_0

    .line 1067
    check-cast p1, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;)Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;

    move-result-object p0

    .line 1070
    .end local p0    # "this":Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;
    :goto_0
    return-object p0

    .line 1069
    .restart local p0    # "this":Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;)Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;
    .locals 2
    .param p1, "other"    # Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;

    .prologue
    const/4 v0, 0x0

    .line 1076
    invoke-static {}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 1105
    :goto_0
    return-object p0

    .line 1079
    :cond_0
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->radiolistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_3

    .line 1080
    # getter for: Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;->radiolist_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;->access$2000(Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1081
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->radiolist_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1082
    # getter for: Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;->radiolist_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;->access$2000(Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->radiolist_:Ljava/util/List;

    .line 1083
    iget v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->bitField0_:I

    .line 1088
    :goto_1
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->onChanged()V

    .line 1104
    :cond_1
    :goto_2
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0

    .line 1085
    :cond_2
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->ensureRadiolistIsMutable()V

    .line 1086
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->radiolist_:Ljava/util/List;

    # getter for: Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;->radiolist_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;->access$2000(Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 1091
    :cond_3
    # getter for: Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;->radiolist_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;->access$2000(Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1092
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->radiolistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1093
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->radiolistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 1094
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->radiolistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 1095
    # getter for: Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;->radiolist_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;->access$2000(Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->radiolist_:Ljava/util/List;

    .line 1096
    iget v1, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->bitField0_:I

    .line 1097
    # getter for: Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;->access$2100()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->getRadiolistFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :cond_4
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->radiolistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2

    .line 1100
    :cond_5
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->radiolistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    # getter for: Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;->radiolist_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;->access$2000(Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2
.end method

.method public removeRadiolist(I)Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1303
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->radiolistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1304
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->ensureRadiolistIsMutable()V

    .line 1305
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->radiolist_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1306
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->onChanged()V

    .line 1310
    :goto_0
    return-object p0

    .line 1308
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->radiolistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public setRadiolist(ILcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;)Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;

    .prologue
    .line 1211
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->radiolistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1212
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->ensureRadiolistIsMutable()V

    .line 1213
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->radiolist_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->build()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1214
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->onChanged()V

    .line 1219
    :goto_0
    return-object p0

    .line 1216
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->radiolistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio$Builder;->build()Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setRadiolist(ILcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;)Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radio;

    .prologue
    .line 1195
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->radiolistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1196
    if-nez p2, :cond_0

    .line 1197
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1199
    :cond_0
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->ensureRadiolistIsMutable()V

    .line 1200
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->radiolist_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1201
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->onChanged()V

    .line 1205
    :goto_0
    return-object p0

    .line 1203
    :cond_1
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SquareAdvertiseProto$pb_radiolist$Builder;->radiolistBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method
