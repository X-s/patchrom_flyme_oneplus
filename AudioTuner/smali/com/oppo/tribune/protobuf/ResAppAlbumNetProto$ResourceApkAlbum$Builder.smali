.class public final Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "ResAppAlbumNetProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;",
        ">;",
        "Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumOrBuilder;"
    }
.end annotation


# instance fields
.field private apksBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;",
            "Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;",
            "Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private apks_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;",
            ">;"
        }
    .end annotation
.end field

.field private author_:Ljava/lang/Object;

.field private bitField0_:I

.field private detail_:Ljava/lang/Object;

.field private id_:J

.field private mcimg_:Ljava/lang/Object;

.field private name_:Ljava/lang/Object;

.field private releasetime_:J

.field private title_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 3713
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 4000
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->name_:Ljava/lang/Object;

    .line 4042
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->title_:Ljava/lang/Object;

    .line 4084
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->author_:Ljava/lang/Object;

    .line 4126
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->mcimg_:Ljava/lang/Object;

    .line 4193
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->apks_:Ljava/util/List;

    .line 4403
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->detail_:Ljava/lang/Object;

    .line 3714
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->maybeForceBuilderInitialization()V

    .line 3715
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 3718
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 4000
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->name_:Ljava/lang/Object;

    .line 4042
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->title_:Ljava/lang/Object;

    .line 4084
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->author_:Ljava/lang/Object;

    .line 4126
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->mcimg_:Ljava/lang/Object;

    .line 4193
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->apks_:Ljava/util/List;

    .line 4403
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->detail_:Ljava/lang/Object;

    .line 3719
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->maybeForceBuilderInitialization()V

    .line 3720
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$1;

    .prologue
    .line 3699
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3699
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4500()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;
    .locals 1

    .prologue
    .line 3699
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->create()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3781
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;

    move-result-object v0

    .line 3782
    .local v0, "result":Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3783
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 3786
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;
    .locals 1

    .prologue
    .line 3729
    new-instance v0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;-><init>()V

    return-object v0
.end method

.method private ensureApksIsMutable()V
    .locals 2

    .prologue
    .line 4197
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-eq v0, v1, :cond_0

    .line 4198
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->apks_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->apks_:Ljava/util/List;

    .line 4200
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->bitField0_:I

    .line 4202
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
            "Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;",
            "Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;",
            "Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4393
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->apksBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 4394
    new-instance v1, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v2, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->apks_:Ljava/util/List;

    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v3, 0x40

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->isClean()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->apksBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 4397
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->apks_:Ljava/util/List;

    .line 4399
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->apksBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 4394
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 3704
    # getter for: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto;->internal_static_protobuf_ResourceApkAlbum_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto;->access$4200()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 3723
    # getter for: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->access$4700()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3724
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->getApksFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 3726
    :cond_0
    return-void
.end method


# virtual methods
.method public addAllApks(Ljava/lang/Iterable;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;",
            ">;)",
            "Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;"
        }
    .end annotation

    .prologue
    .line 4318
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;>;"
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->apksBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 4319
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->ensureApksIsMutable()V

    .line 4320
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->apks_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 4321
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->onChanged()V

    .line 4325
    :goto_0
    return-object p0

    .line 4323
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->apksBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addApks(ILcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;

    .prologue
    .line 4306
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->apksBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 4307
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->ensureApksIsMutable()V

    .line 4308
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->apks_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->build()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4309
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->onChanged()V

    .line 4313
    :goto_0
    return-object p0

    .line 4311
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->apksBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->build()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addApks(ILcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;

    .prologue
    .line 4278
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->apksBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 4279
    if-nez p2, :cond_0

    .line 4280
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4282
    :cond_0
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->ensureApksIsMutable()V

    .line 4283
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->apks_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4284
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->onChanged()V

    .line 4288
    :goto_0
    return-object p0

    .line 4286
    :cond_1
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->apksBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addApks(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;

    .prologue
    .line 4293
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->apksBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 4294
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->ensureApksIsMutable()V

    .line 4295
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->apks_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->build()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4296
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->onChanged()V

    .line 4300
    :goto_0
    return-object p0

    .line 4298
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->apksBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->build()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addApks(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;
    .locals 1
    .param p1, "value"    # Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;

    .prologue
    .line 4262
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->apksBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 4263
    if-nez p1, :cond_0

    .line 4264
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4266
    :cond_0
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->ensureApksIsMutable()V

    .line 4267
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->apks_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4268
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->onChanged()V

    .line 4272
    :goto_0
    return-object p0

    .line 4270
    :cond_1
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->apksBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addApksBuilder()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;
    .locals 2

    .prologue
    .line 4373
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->getApksFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;

    return-object v0
.end method

.method public addApksBuilder(I)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 4381
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->getApksFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3699
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->build()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3699
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->build()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;
    .locals 2

    .prologue
    .line 3772
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;

    move-result-object v0

    .line 3773
    .local v0, "result":Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3774
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 3776
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3699
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3699
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;
    .locals 6

    .prologue
    .line 3790
    new-instance v1, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;-><init>(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$1;)V

    .line 3792
    .local v1, "result":Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->bitField0_:I

    .line 3793
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 3794
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 3795
    or-int/lit8 v2, v2, 0x1

    .line 3797
    :cond_0
    iget-wide v4, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->id_:J

    # setter for: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->id_:J
    invoke-static {v1, v4, v5}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->access$4902(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;J)J

    .line 3798
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 3799
    or-int/lit8 v2, v2, 0x2

    .line 3801
    :cond_1
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->name_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->name_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->access$5002(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3802
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 3803
    or-int/lit8 v2, v2, 0x4

    .line 3805
    :cond_2
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->title_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->title_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->access$5102(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3806
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 3807
    or-int/lit8 v2, v2, 0x8

    .line 3809
    :cond_3
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->author_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->author_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->access$5202(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3810
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 3811
    or-int/lit8 v2, v2, 0x10

    .line 3813
    :cond_4
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->mcimg_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->mcimg_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->access$5302(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3814
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 3815
    or-int/lit8 v2, v2, 0x20

    .line 3817
    :cond_5
    iget-wide v4, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->releasetime_:J

    # setter for: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->releasetime_:J
    invoke-static {v1, v4, v5}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->access$5402(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;J)J

    .line 3818
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->apksBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v3, :cond_8

    .line 3819
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 3820
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->apks_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->apks_:Ljava/util/List;

    .line 3821
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x41

    iput v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->bitField0_:I

    .line 3823
    :cond_6
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->apks_:Ljava/util/List;

    # setter for: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->apks_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->access$5502(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;Ljava/util/List;)Ljava/util/List;

    .line 3827
    :goto_0
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 3828
    or-int/lit8 v2, v2, 0x40

    .line 3830
    :cond_7
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->detail_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->detail_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->access$5602(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3831
    # setter for: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->bitField0_:I
    invoke-static {v1, v2}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->access$5702(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;I)I

    .line 3832
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->onBuilt()V

    .line 3833
    return-object v1

    .line 3825
    :cond_8
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->apksBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v3

    # setter for: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->apks_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->access$5502(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;Ljava/util/List;)Ljava/util/List;

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 3699
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->clear()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 3699
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->clear()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3699
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->clear()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3699
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->clear()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 3733
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 3734
    iput-wide v2, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->id_:J

    .line 3735
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->bitField0_:I

    .line 3736
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->name_:Ljava/lang/Object;

    .line 3737
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->bitField0_:I

    .line 3738
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->title_:Ljava/lang/Object;

    .line 3739
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->bitField0_:I

    .line 3740
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->author_:Ljava/lang/Object;

    .line 3741
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->bitField0_:I

    .line 3742
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->mcimg_:Ljava/lang/Object;

    .line 3743
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->bitField0_:I

    .line 3744
    iput-wide v2, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->releasetime_:J

    .line 3745
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->bitField0_:I

    .line 3746
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->apksBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 3747
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->apks_:Ljava/util/List;

    .line 3748
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->bitField0_:I

    .line 3752
    :goto_0
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->detail_:Ljava/lang/Object;

    .line 3753
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->bitField0_:I

    .line 3754
    return-object p0

    .line 3750
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->apksBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearApks()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;
    .locals 1

    .prologue
    .line 4329
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->apksBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 4330
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->apks_:Ljava/util/List;

    .line 4331
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->bitField0_:I

    .line 4332
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->onChanged()V

    .line 4336
    :goto_0
    return-object p0

    .line 4334
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->apksBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearAuthor()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;
    .locals 1

    .prologue
    .line 4113
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->bitField0_:I

    .line 4114
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->getAuthor()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->author_:Ljava/lang/Object;

    .line 4115
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->onChanged()V

    .line 4116
    return-object p0
.end method

.method public clearDetail()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;
    .locals 1

    .prologue
    .line 4432
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->bitField0_:I

    .line 4433
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->getDetail()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->detail_:Ljava/lang/Object;

    .line 4434
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->onChanged()V

    .line 4435
    return-object p0
.end method

.method public clearId()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;
    .locals 2

    .prologue
    .line 3993
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->bitField0_:I

    .line 3994
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->id_:J

    .line 3995
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->onChanged()V

    .line 3996
    return-object p0
.end method

.method public clearMcimg()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;
    .locals 1

    .prologue
    .line 4155
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->bitField0_:I

    .line 4156
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->getMcimg()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->mcimg_:Ljava/lang/Object;

    .line 4157
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->onChanged()V

    .line 4158
    return-object p0
.end method

.method public clearName()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;
    .locals 1

    .prologue
    .line 4029
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->bitField0_:I

    .line 4030
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->name_:Ljava/lang/Object;

    .line 4031
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->onChanged()V

    .line 4032
    return-object p0
.end method

.method public clearReleasetime()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;
    .locals 2

    .prologue
    .line 4186
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->bitField0_:I

    .line 4187
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->releasetime_:J

    .line 4188
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->onChanged()V

    .line 4189
    return-object p0
.end method

.method public clearTitle()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;
    .locals 1

    .prologue
    .line 4071
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->bitField0_:I

    .line 4072
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->title_:Ljava/lang/Object;

    .line 4073
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->onChanged()V

    .line 4074
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 3699
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->clone()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 3699
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->clone()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 3699
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->clone()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3699
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->clone()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3699
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->clone()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;
    .locals 2

    .prologue
    .line 3758
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->create()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;

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
    .line 3699
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->clone()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getApks(I)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 4224
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->apksBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 4225
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->apks_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;

    .line 4227
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->apksBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;

    goto :goto_0
.end method

.method public getApksBuilder(I)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 4352
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->getApksFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;

    return-object v0
.end method

.method public getApksBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4389
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->getApksFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getApksCount()I
    .locals 1

    .prologue
    .line 4215
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->apksBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 4216
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->apks_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 4218
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->apksBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

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
            "Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4207
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->apksBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 4208
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->apks_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 4210
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->apksBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getApksOrBuilder(I)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 4357
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->apksBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 4358
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->apks_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkOrBuilder;

    .line 4360
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->apksBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkOrBuilder;

    goto :goto_0
.end method

.method public getApksOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4365
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->apksBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 4366
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->apksBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 4368
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->apks_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 3

    .prologue
    .line 4091
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->author_:Ljava/lang/Object;

    .line 4092
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 4093
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 4095
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->author_:Ljava/lang/Object;

    .line 4098
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
    .line 3699
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3699
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;
    .locals 1

    .prologue
    .line 3767
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 3762
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDetail()Ljava/lang/String;
    .locals 3

    .prologue
    .line 4410
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->detail_:Ljava/lang/Object;

    .line 4411
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 4412
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 4414
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->detail_:Ljava/lang/Object;

    .line 4417
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
    .line 3982
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->id_:J

    return-wide v0
.end method

.method public getMcimg()Ljava/lang/String;
    .locals 3

    .prologue
    .line 4133
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->mcimg_:Ljava/lang/Object;

    .line 4134
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 4135
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 4137
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->mcimg_:Ljava/lang/Object;

    .line 4140
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

.method public getName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 4007
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->name_:Ljava/lang/Object;

    .line 4008
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 4009
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 4011
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->name_:Ljava/lang/Object;

    .line 4014
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

.method public getReleasetime()J
    .locals 2

    .prologue
    .line 4175
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->releasetime_:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 3

    .prologue
    .line 4049
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->title_:Ljava/lang/Object;

    .line 4050
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 4051
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 4053
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->title_:Ljava/lang/Object;

    .line 4056
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

.method public hasAuthor()Z
    .locals 2

    .prologue
    .line 4087
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->bitField0_:I

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

.method public hasDetail()Z
    .locals 2

    .prologue
    .line 4406
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->bitField0_:I

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

.method public hasId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 3978
    iget v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMcimg()Z
    .locals 2

    .prologue
    .line 4129
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->bitField0_:I

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

.method public hasName()Z
    .locals 2

    .prologue
    .line 4003
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->bitField0_:I

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

.method public hasReleasetime()Z
    .locals 2

    .prologue
    .line 4171
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->bitField0_:I

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

.method public hasTitle()Z
    .locals 2

    .prologue
    .line 4045
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->bitField0_:I

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
    .line 3708
    # getter for: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto;->internal_static_protobuf_ResourceApkAlbum_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto;->access$4300()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 3901
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
    .line 3699
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 3699
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;

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
    .line 3699
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;

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
    .line 3699
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 3699
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;

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
    .line 3699
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;
    .locals 6
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3908
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 3911
    .local v2, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 3912
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    .line 3918
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3920
    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 3921
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->onChanged()V

    .line 3922
    :goto_1
    return-object p0

    .line 3914
    :sswitch_0
    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 3915
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->onChanged()V

    goto :goto_1

    .line 3927
    :sswitch_1
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->bitField0_:I

    .line 3928
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->id_:J

    goto :goto_0

    .line 3932
    :sswitch_2
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->bitField0_:I

    .line 3933
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->name_:Ljava/lang/Object;

    goto :goto_0

    .line 3937
    :sswitch_3
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->bitField0_:I

    .line 3938
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->title_:Ljava/lang/Object;

    goto :goto_0

    .line 3942
    :sswitch_4
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->bitField0_:I

    .line 3943
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->author_:Ljava/lang/Object;

    goto :goto_0

    .line 3947
    :sswitch_5
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->bitField0_:I

    .line 3948
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->mcimg_:Ljava/lang/Object;

    goto :goto_0

    .line 3952
    :sswitch_6
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->bitField0_:I

    .line 3953
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->releasetime_:J

    goto :goto_0

    .line 3957
    :sswitch_7
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;->newBuilder()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;

    move-result-object v0

    .line 3959
    .local v0, "subBuilder":Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 3960
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->addApks(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;

    goto :goto_0

    .line 3964
    .end local v0    # "subBuilder":Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;
    :sswitch_8
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->bitField0_:I

    or-int/lit16 v3, v3, 0x80

    iput v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->bitField0_:I

    .line 3965
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->detail_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 3912
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 3837
    instance-of v0, p1, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;

    if-eqz v0, :cond_0

    .line 3838
    check-cast p1, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;

    move-result-object p0

    .line 3841
    .end local p0    # "this":Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;
    :goto_0
    return-object p0

    .line 3840
    .restart local p0    # "this":Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;
    .locals 4
    .param p1, "other"    # Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;

    .prologue
    const/4 v0, 0x0

    .line 3847
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 3897
    :goto_0
    return-object p0

    .line 3850
    :cond_0
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->hasId()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3851
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->getId()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->setId(J)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;

    .line 3853
    :cond_1
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->hasName()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3854
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->setName(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;

    .line 3856
    :cond_2
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->hasTitle()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3857
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->setTitle(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;

    .line 3859
    :cond_3
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->hasAuthor()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3860
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->getAuthor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->setAuthor(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;

    .line 3862
    :cond_4
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->hasMcimg()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3863
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->getMcimg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->setMcimg(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;

    .line 3865
    :cond_5
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->hasReleasetime()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3866
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->getReleasetime()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->setReleasetime(J)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;

    .line 3868
    :cond_6
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->apksBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_a

    .line 3869
    # getter for: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->apks_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->access$5500(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3870
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->apks_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3871
    # getter for: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->apks_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->access$5500(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->apks_:Ljava/util/List;

    .line 3872
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->bitField0_:I

    .line 3877
    :goto_1
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->onChanged()V

    .line 3893
    :cond_7
    :goto_2
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->hasDetail()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3894
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->getDetail()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->setDetail(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;

    .line 3896
    :cond_8
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto/16 :goto_0

    .line 3874
    :cond_9
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->ensureApksIsMutable()V

    .line 3875
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->apks_:Ljava/util/List;

    # getter for: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->apks_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->access$5500(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 3880
    :cond_a
    # getter for: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->apks_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->access$5500(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 3881
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->apksBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 3882
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->apksBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 3883
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->apksBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 3884
    # getter for: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->apks_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->access$5500(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->apks_:Ljava/util/List;

    .line 3885
    iget v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x41

    iput v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->bitField0_:I

    .line 3886
    # getter for: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->access$5800()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->getApksFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :cond_b
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->apksBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2

    .line 3889
    :cond_c
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->apksBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    # getter for: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->apks_:Ljava/util/List;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->access$5500(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2
.end method

.method public removeApks(I)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 4340
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->apksBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 4341
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->ensureApksIsMutable()V

    .line 4342
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->apks_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4343
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->onChanged()V

    .line 4347
    :goto_0
    return-object p0

    .line 4345
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->apksBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public setApks(ILcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;

    .prologue
    .line 4250
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->apksBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 4251
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->ensureApksIsMutable()V

    .line 4252
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->apks_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->build()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4253
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->onChanged()V

    .line 4257
    :goto_0
    return-object p0

    .line 4255
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->apksBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;->build()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setApks(ILcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;

    .prologue
    .line 4234
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->apksBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 4235
    if-nez p2, :cond_0

    .line 4236
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4238
    :cond_0
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->ensureApksIsMutable()V

    .line 4239
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->apks_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4240
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->onChanged()V

    .line 4244
    :goto_0
    return-object p0

    .line 4242
    :cond_1
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->apksBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setAuthor(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4103
    if-nez p1, :cond_0

    .line 4104
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4106
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->bitField0_:I

    .line 4107
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->author_:Ljava/lang/Object;

    .line 4108
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->onChanged()V

    .line 4109
    return-object p0
.end method

.method setAuthor(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 4120
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->bitField0_:I

    .line 4121
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->author_:Ljava/lang/Object;

    .line 4122
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->onChanged()V

    .line 4123
    return-void
.end method

.method public setDetail(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4422
    if-nez p1, :cond_0

    .line 4423
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4425
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->bitField0_:I

    .line 4426
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->detail_:Ljava/lang/Object;

    .line 4427
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->onChanged()V

    .line 4428
    return-object p0
.end method

.method setDetail(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 4439
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->bitField0_:I

    .line 4440
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->detail_:Ljava/lang/Object;

    .line 4441
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->onChanged()V

    .line 4442
    return-void
.end method

.method public setId(J)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 3986
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->bitField0_:I

    .line 3987
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->id_:J

    .line 3988
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->onChanged()V

    .line 3989
    return-object p0
.end method

.method public setMcimg(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4145
    if-nez p1, :cond_0

    .line 4146
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4148
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->bitField0_:I

    .line 4149
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->mcimg_:Ljava/lang/Object;

    .line 4150
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->onChanged()V

    .line 4151
    return-object p0
.end method

.method setMcimg(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 4162
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->bitField0_:I

    .line 4163
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->mcimg_:Ljava/lang/Object;

    .line 4164
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->onChanged()V

    .line 4165
    return-void
.end method

.method public setName(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4019
    if-nez p1, :cond_0

    .line 4020
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4022
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->bitField0_:I

    .line 4023
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->name_:Ljava/lang/Object;

    .line 4024
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->onChanged()V

    .line 4025
    return-object p0
.end method

.method setName(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 4036
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->bitField0_:I

    .line 4037
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->name_:Ljava/lang/Object;

    .line 4038
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->onChanged()V

    .line 4039
    return-void
.end method

.method public setReleasetime(J)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 4179
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->bitField0_:I

    .line 4180
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->releasetime_:J

    .line 4181
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->onChanged()V

    .line 4182
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4061
    if-nez p1, :cond_0

    .line 4062
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4064
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->bitField0_:I

    .line 4065
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->title_:Ljava/lang/Object;

    .line 4066
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->onChanged()V

    .line 4067
    return-object p0
.end method

.method setTitle(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 4078
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->bitField0_:I

    .line 4079
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->title_:Ljava/lang/Object;

    .line 4080
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->onChanged()V

    .line 4081
    return-void
.end method
