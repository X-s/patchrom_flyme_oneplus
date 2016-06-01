.class public final Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "ResAppNetProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkListOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;",
        ">;",
        "Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkListOrBuilder;"
    }
.end annotation


# instance fields
.field private apksBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;",
            "Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;",
            "Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private apks_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;",
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
    .line 3303
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 3537
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->apks_:Ljava/util/List;

    .line 3743
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->label_:Ljava/lang/Object;

    .line 3304
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->maybeForceBuilderInitialization()V

    .line 3305
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 3308
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 3537
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->apks_:Ljava/util/List;

    .line 3743
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->label_:Ljava/lang/Object;

    .line 3309
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->maybeForceBuilderInitialization()V

    .line 3310
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/ResAppNetProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/ResAppNetProto$1;

    .prologue
    .line 3289
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3289
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4200()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;
    .locals 1

    .prologue
    .line 3289
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->create()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3367
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;

    move-result-object v0

    .line 3368
    .local v0, "result":Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3369
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 3372
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;
    .locals 1

    .prologue
    .line 3319
    new-instance v0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;-><init>()V

    return-object v0
.end method

.method private ensureApksIsMutable()V
    .locals 2

    .prologue
    .line 3541
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 3542
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->apks_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->apks_:Ljava/util/List;

    .line 3544
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->bitField0_:I

    .line 3546
    :cond_0
    return-void
.end method

.method private getApksFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;",
            "Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;",
            "Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 3733
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->apksBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_0

    .line 3734
    new-instance v1, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v2, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->apks_:Ljava/util/List;

    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v0, :cond_1

    :goto_0
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->isClean()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->apksBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 3737
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->apks_:Ljava/util/List;

    .line 3739
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->apksBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 3734
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 3294
    # getter for: Lcom/oppo/tribune/protobuf/ResAppNetProto;->internal_static_protobuf_ResourceApkList_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppNetProto;->access$3900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 3313
    # getter for: Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->access$4400()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3314
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->getApksFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 3316
    :cond_0
    return-void
.end method


# virtual methods
.method public addAllApks(Ljava/lang/Iterable;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;",
            ">;)",
            "Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;"
        }
    .end annotation

    .prologue
    .line 3660
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;>;"
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->apksBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 3661
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->ensureApksIsMutable()V

    .line 3662
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->apks_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 3663
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->onChanged()V

    .line 3667
    :goto_0
    return-object p0

    .line 3665
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->apksBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addApks(ILcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;

    .prologue
    .line 3648
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->apksBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 3649
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->ensureApksIsMutable()V

    .line 3650
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->apks_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->build()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3651
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->onChanged()V

    .line 3655
    :goto_0
    return-object p0

    .line 3653
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->apksBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->build()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addApks(ILcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;

    .prologue
    .line 3620
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->apksBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 3621
    if-nez p2, :cond_0

    .line 3622
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3624
    :cond_0
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->ensureApksIsMutable()V

    .line 3625
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->apks_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3626
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->onChanged()V

    .line 3630
    :goto_0
    return-object p0

    .line 3628
    :cond_1
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->apksBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addApks(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;

    .prologue
    .line 3635
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->apksBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 3636
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->ensureApksIsMutable()V

    .line 3637
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->apks_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->build()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3638
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->onChanged()V

    .line 3642
    :goto_0
    return-object p0

    .line 3640
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->apksBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->build()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addApks(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;
    .locals 1
    .param p1, "value"    # Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;

    .prologue
    .line 3605
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->apksBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 3606
    if-nez p1, :cond_0

    .line 3607
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3609
    :cond_0
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->ensureApksIsMutable()V

    .line 3610
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->apks_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3611
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->onChanged()V

    .line 3615
    :goto_0
    return-object p0

    .line 3613
    :cond_1
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->apksBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addApksBuilder()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;
    .locals 2

    .prologue
    .line 3715
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->getApksFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;

    return-object v0
.end method

.method public addApksBuilder(I)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 3722
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->getApksFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3289
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->build()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3289
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->build()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;
    .locals 2

    .prologue
    .line 3358
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;

    move-result-object v0

    .line 3359
    .local v0, "result":Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3360
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 3362
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3289
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3289
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;
    .locals 5

    .prologue
    .line 3376
    new-instance v1, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;-><init>(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;Lcom/oppo/tribune/protobuf/ResAppNetProto$1;)V

    .line 3378
    .local v1, "result":Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->bitField0_:I

    .line 3379
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 3380
    .local v2, "to_bitField0_":I
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->apksBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v3, :cond_6

    .line 3381
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 3382
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->apks_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->apks_:Ljava/util/List;

    .line 3383
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->bitField0_:I

    .line 3385
    :cond_0
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->apks_:Ljava/util/List;

    # setter for: Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->apks_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->access$4602(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;Ljava/util/List;)Ljava/util/List;

    .line 3389
    :goto_0
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 3390
    or-int/lit8 v2, v2, 0x1

    .line 3392
    :cond_1
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->label_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->label_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->access$4702(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3393
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 3394
    or-int/lit8 v2, v2, 0x2

    .line 3396
    :cond_2
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->id_:I

    # setter for: Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->id_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->access$4802(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;I)I

    .line 3397
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 3398
    or-int/lit8 v2, v2, 0x4

    .line 3400
    :cond_3
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->total_:I

    # setter for: Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->total_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->access$4902(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;I)I

    .line 3401
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 3402
    or-int/lit8 v2, v2, 0x8

    .line 3404
    :cond_4
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->perpage_:I

    # setter for: Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->perpage_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->access$5002(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;I)I

    .line 3405
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 3406
    or-int/lit8 v2, v2, 0x10

    .line 3408
    :cond_5
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->curpage_:I

    # setter for: Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->curpage_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->access$5102(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;I)I

    .line 3409
    # setter for: Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->bitField0_:I
    invoke-static {v1, v2}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->access$5202(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;I)I

    .line 3410
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->onBuilt()V

    .line 3411
    return-object v1

    .line 3387
    :cond_6
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->apksBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v3

    # setter for: Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->apks_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->access$4602(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;Ljava/util/List;)Ljava/util/List;

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 3289
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->clear()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 3289
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->clear()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3289
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->clear()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3289
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->clear()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3323
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 3324
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->apksBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 3325
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->apks_:Ljava/util/List;

    .line 3326
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->bitField0_:I

    .line 3330
    :goto_0
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->label_:Ljava/lang/Object;

    .line 3331
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->bitField0_:I

    .line 3332
    iput v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->id_:I

    .line 3333
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->bitField0_:I

    .line 3334
    iput v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->total_:I

    .line 3335
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->bitField0_:I

    .line 3336
    iput v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->perpage_:I

    .line 3337
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->bitField0_:I

    .line 3338
    iput v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->curpage_:I

    .line 3339
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->bitField0_:I

    .line 3340
    return-object p0

    .line 3328
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->apksBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearApks()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;
    .locals 1

    .prologue
    .line 3671
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->apksBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 3672
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->apks_:Ljava/util/List;

    .line 3673
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->bitField0_:I

    .line 3674
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->onChanged()V

    .line 3678
    :goto_0
    return-object p0

    .line 3676
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->apksBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearCurpage()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;
    .locals 1

    .prologue
    .line 3878
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->bitField0_:I

    .line 3879
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->curpage_:I

    .line 3880
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->onChanged()V

    .line 3881
    return-object p0
.end method

.method public clearId()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;
    .locals 1

    .prologue
    .line 3803
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->bitField0_:I

    .line 3804
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->id_:I

    .line 3805
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->onChanged()V

    .line 3806
    return-object p0
.end method

.method public clearLabel()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;
    .locals 1

    .prologue
    .line 3772
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->bitField0_:I

    .line 3773
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->getLabel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->label_:Ljava/lang/Object;

    .line 3774
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->onChanged()V

    .line 3775
    return-object p0
.end method

.method public clearPerpage()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;
    .locals 1

    .prologue
    .line 3853
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->bitField0_:I

    .line 3854
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->perpage_:I

    .line 3855
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->onChanged()V

    .line 3856
    return-object p0
.end method

.method public clearTotal()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;
    .locals 1

    .prologue
    .line 3828
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->bitField0_:I

    .line 3829
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->total_:I

    .line 3830
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->onChanged()V

    .line 3831
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 3289
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->clone()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 3289
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->clone()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 3289
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->clone()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3289
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->clone()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3289
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->clone()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;
    .locals 2

    .prologue
    .line 3344
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->create()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;

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
    .line 3289
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->clone()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getApks(I)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 3568
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->apksBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 3569
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->apks_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;

    .line 3571
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->apksBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;

    goto :goto_0
.end method

.method public getApksBuilder(I)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 3694
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->getApksFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;

    return-object v0
.end method

.method public getApksBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3729
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->getApksFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getApksCount()I
    .locals 1

    .prologue
    .line 3559
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->apksBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 3560
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->apks_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 3562
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->apksBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getApksList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3551
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->apksBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 3552
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->apks_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 3554
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->apksBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getApksOrBuilder(I)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 3699
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->apksBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 3700
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->apks_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkOrBuilder;

    .line 3702
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->apksBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkOrBuilder;

    goto :goto_0
.end method

.method public getApksOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3707
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->apksBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 3708
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->apksBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 3710
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->apks_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getCurpage()I
    .locals 1

    .prologue
    .line 3867
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->curpage_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3289
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3289
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;
    .locals 1

    .prologue
    .line 3353
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 3348
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 3792
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->id_:I

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 3

    .prologue
    .line 3750
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->label_:Ljava/lang/Object;

    .line 3751
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 3752
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 3754
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->label_:Ljava/lang/Object;

    .line 3757
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
    .line 3842
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->perpage_:I

    return v0
.end method

.method public getTotal()I
    .locals 1

    .prologue
    .line 3817
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->total_:I

    return v0
.end method

.method public hasCurpage()Z
    .locals 2

    .prologue
    .line 3863
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->bitField0_:I

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

.method public hasId()Z
    .locals 2

    .prologue
    .line 3788
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->bitField0_:I

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

.method public hasLabel()Z
    .locals 2

    .prologue
    .line 3746
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->bitField0_:I

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

.method public hasPerpage()Z
    .locals 2

    .prologue
    .line 3838
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->bitField0_:I

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

.method public hasTotal()Z
    .locals 2

    .prologue
    .line 3813
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 3298
    # getter for: Lcom/oppo/tribune/protobuf/ResAppNetProto;->internal_static_protobuf_ResourceApkList_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppNetProto;->access$4000()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 3473
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
    .line 3289
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 3289
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;

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
    .line 3289
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;

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
    .line 3289
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 3289
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;

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
    .line 3289
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3480
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 3483
    .local v2, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 3484
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    .line 3490
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3492
    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 3493
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->onChanged()V

    .line 3494
    :goto_1
    return-object p0

    .line 3486
    :sswitch_0
    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 3487
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->onChanged()V

    goto :goto_1

    .line 3499
    :sswitch_1
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;->newBuilder()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;

    move-result-object v0

    .line 3501
    .local v0, "subBuilder":Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 3502
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->addApks(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;

    goto :goto_0

    .line 3506
    .end local v0    # "subBuilder":Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;
    :sswitch_2
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->bitField0_:I

    .line 3507
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->label_:Ljava/lang/Object;

    goto :goto_0

    .line 3511
    :sswitch_3
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->bitField0_:I

    .line 3512
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->id_:I

    goto :goto_0

    .line 3516
    :sswitch_4
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->bitField0_:I

    .line 3517
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->total_:I

    goto :goto_0

    .line 3521
    :sswitch_5
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->bitField0_:I

    .line 3522
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->perpage_:I

    goto :goto_0

    .line 3526
    :sswitch_6
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->bitField0_:I

    .line 3527
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->curpage_:I

    goto :goto_0

    .line 3484
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 3415
    instance-of v0, p1, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;

    if-eqz v0, :cond_0

    .line 3416
    check-cast p1, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;

    move-result-object p0

    .line 3419
    .end local p0    # "this":Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;
    :goto_0
    return-object p0

    .line 3418
    .restart local p0    # "this":Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;
    .locals 2
    .param p1, "other"    # Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;

    .prologue
    const/4 v0, 0x0

    .line 3425
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 3469
    :goto_0
    return-object p0

    .line 3428
    :cond_0
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->apksBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_8

    .line 3429
    # getter for: Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->apks_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->access$4600(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3430
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->apks_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3431
    # getter for: Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->apks_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->access$4600(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->apks_:Ljava/util/List;

    .line 3432
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->bitField0_:I

    .line 3437
    :goto_1
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->onChanged()V

    .line 3453
    :cond_1
    :goto_2
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->hasLabel()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3454
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->setLabel(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;

    .line 3456
    :cond_2
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->hasId()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3457
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->setId(I)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;

    .line 3459
    :cond_3
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->hasTotal()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3460
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->getTotal()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->setTotal(I)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;

    .line 3462
    :cond_4
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->hasPerpage()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3463
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->getPerpage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->setPerpage(I)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;

    .line 3465
    :cond_5
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->hasCurpage()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3466
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->getCurpage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->setCurpage(I)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;

    .line 3468
    :cond_6
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0

    .line 3434
    :cond_7
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->ensureApksIsMutable()V

    .line 3435
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->apks_:Ljava/util/List;

    # getter for: Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->apks_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->access$4600(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 3440
    :cond_8
    # getter for: Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->apks_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->access$4600(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3441
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->apksBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 3442
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->apksBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 3443
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->apksBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 3444
    # getter for: Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->apks_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->access$4600(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->apks_:Ljava/util/List;

    .line 3445
    iget v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->bitField0_:I

    .line 3446
    # getter for: Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->access$5300()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->getApksFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :cond_9
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->apksBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto/16 :goto_2

    .line 3449
    :cond_a
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->apksBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    # getter for: Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->apks_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;->access$4600(Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto/16 :goto_2
.end method

.method public removeApks(I)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 3682
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->apksBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 3683
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->ensureApksIsMutable()V

    .line 3684
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->apks_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3685
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->onChanged()V

    .line 3689
    :goto_0
    return-object p0

    .line 3687
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->apksBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public setApks(ILcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;

    .prologue
    .line 3593
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->apksBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 3594
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->ensureApksIsMutable()V

    .line 3595
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->apks_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->build()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3596
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->onChanged()V

    .line 3600
    :goto_0
    return-object p0

    .line 3598
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->apksBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk$Builder;->build()Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setApks(ILcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;

    .prologue
    .line 3577
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->apksBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 3578
    if-nez p2, :cond_0

    .line 3579
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3581
    :cond_0
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->ensureApksIsMutable()V

    .line 3582
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->apks_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3583
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->onChanged()V

    .line 3587
    :goto_0
    return-object p0

    .line 3585
    :cond_1
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->apksBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setCurpage(I)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3871
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->bitField0_:I

    .line 3872
    iput p1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->curpage_:I

    .line 3873
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->onChanged()V

    .line 3874
    return-object p0
.end method

.method public setId(I)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3796
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->bitField0_:I

    .line 3797
    iput p1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->id_:I

    .line 3798
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->onChanged()V

    .line 3799
    return-object p0
.end method

.method public setLabel(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3762
    if-nez p1, :cond_0

    .line 3763
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3765
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->bitField0_:I

    .line 3766
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->label_:Ljava/lang/Object;

    .line 3767
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->onChanged()V

    .line 3768
    return-object p0
.end method

.method setLabel(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 3779
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->bitField0_:I

    .line 3780
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->label_:Ljava/lang/Object;

    .line 3781
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->onChanged()V

    .line 3782
    return-void
.end method

.method public setPerpage(I)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3846
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->bitField0_:I

    .line 3847
    iput p1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->perpage_:I

    .line 3848
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->onChanged()V

    .line 3849
    return-object p0
.end method

.method public setTotal(I)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3821
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->bitField0_:I

    .line 3822
    iput p1, p0, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->total_:I

    .line 3823
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkList$Builder;->onChanged()V

    .line 3824
    return-object p0
.end method
