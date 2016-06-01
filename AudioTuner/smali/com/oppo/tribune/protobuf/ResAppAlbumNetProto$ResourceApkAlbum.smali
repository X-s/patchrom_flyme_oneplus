.class public final Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;
.super Lcom/google/protobuf/GeneratedMessage;
.source "ResAppAlbumNetProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ResourceApkAlbum"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;
    }
.end annotation


# static fields
.field public static final APKS_FIELD_NUMBER:I = 0x7

.field public static final AUTHOR_FIELD_NUMBER:I = 0x4

.field public static final DETAIL_FIELD_NUMBER:I = 0x8

.field public static final ID_FIELD_NUMBER:I = 0x1

.field public static final MCIMG_FIELD_NUMBER:I = 0x5

.field public static final NAME_FIELD_NUMBER:I = 0x2

.field public static final RELEASETIME_FIELD_NUMBER:I = 0x6

.field public static final TITLE_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;

.field private static final serialVersionUID:J


# instance fields
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

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private name_:Ljava/lang/Object;

.field private releasetime_:J

.field private title_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 4448
    new-instance v0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;-><init>(Z)V

    sput-object v0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->defaultInstance:Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;

    .line 4449
    sget-object v0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->defaultInstance:Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->initFields()V

    .line 4450
    return-void
.end method

.method private constructor <init>(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;

    .prologue
    const/4 v0, -0x1

    .line 3248
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 3504
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->memoizedIsInitialized:B

    .line 3545
    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->memoizedSerializedSize:I

    .line 3249
    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$1;

    .prologue
    .line 3243
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;-><init>(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 3251
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 3504
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->memoizedIsInitialized:B

    .line 3545
    iput v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->memoizedSerializedSize:I

    .line 3252
    return-void
.end method

.method static synthetic access$4700()Z
    .locals 1

    .prologue
    .line 3243
    sget-boolean v0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$4902(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;J)J
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;
    .param p1, "x1"    # J

    .prologue
    .line 3243
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->id_:J

    return-wide p1
.end method

.method static synthetic access$5002(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 3243
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5102(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 3243
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->title_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5202(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 3243
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->author_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5302(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 3243
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->mcimg_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5402(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;J)J
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;
    .param p1, "x1"    # J

    .prologue
    .line 3243
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->releasetime_:J

    return-wide p1
.end method

.method static synthetic access$5500(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;

    .prologue
    .line 3243
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->apks_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$5502(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 3243
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->apks_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$5602(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 3243
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->detail_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5702(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;
    .param p1, "x1"    # I

    .prologue
    .line 3243
    iput p1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->bitField0_:I

    return p1
.end method

.method static synthetic access$5800()Z
    .locals 1

    .prologue
    .line 3243
    sget-boolean v0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method private getAuthorBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 3376
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->author_:Ljava/lang/Object;

    .line 3377
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 3378
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3380
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->author_:Ljava/lang/Object;

    .line 3383
    .end local v0    # "b":Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1    # "ref":Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method public static getDefaultInstance()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;
    .locals 1

    .prologue
    .line 3257
    sget-object v0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->defaultInstance:Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 3265
    # getter for: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto;->internal_static_protobuf_ResourceApkAlbum_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto;->access$4200()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getDetailBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 3482
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->detail_:Ljava/lang/Object;

    .line 3483
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 3484
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3486
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->detail_:Ljava/lang/Object;

    .line 3489
    .end local v0    # "b":Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1    # "ref":Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method private getMcimgBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 3410
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->mcimg_:Ljava/lang/Object;

    .line 3411
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 3412
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3414
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->mcimg_:Ljava/lang/Object;

    .line 3417
    .end local v0    # "b":Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1    # "ref":Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method private getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 3308
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->name_:Ljava/lang/Object;

    .line 3309
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 3310
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3312
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->name_:Ljava/lang/Object;

    .line 3315
    .end local v0    # "b":Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1    # "ref":Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method private getTitleBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 3342
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->title_:Ljava/lang/Object;

    .line 3343
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 3344
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3346
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->title_:Ljava/lang/Object;

    .line 3349
    .end local v0    # "b":Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1    # "ref":Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method private initFields()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 3494
    iput-wide v2, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->id_:J

    .line 3495
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->name_:Ljava/lang/Object;

    .line 3496
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->title_:Ljava/lang/Object;

    .line 3497
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->author_:Ljava/lang/Object;

    .line 3498
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->mcimg_:Ljava/lang/Object;

    .line 3499
    iput-wide v2, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->releasetime_:J

    .line 3500
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->apks_:Ljava/util/List;

    .line 3501
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->detail_:Ljava/lang/Object;

    .line 3502
    return-void
.end method

.method public static newBuilder()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;
    .locals 1

    .prologue
    .line 3676
    # invokes: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->create()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->access$4500()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;

    .prologue
    .line 3685
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->newBuilder()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3641
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->newBuilder()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;

    move-result-object v0

    .line 3642
    .local v0, "builder":Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;
    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3643
    # invokes: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->access$4400(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;

    move-result-object v1

    .line 3645
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3653
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->newBuilder()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;

    move-result-object v0

    .line 3654
    .local v0, "builder":Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3655
    # invokes: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->access$4400(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;

    move-result-object v1

    .line 3657
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3601
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->newBuilder()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->access$4400(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3608
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->newBuilder()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->access$4400(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3664
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->newBuilder()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->access$4400(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3671
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->newBuilder()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;

    move-result-object v0

    # invokes: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->access$4400(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3628
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->newBuilder()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->access$4400(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3635
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->newBuilder()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->access$4400(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3615
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->newBuilder()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->access$4400(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3622
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->newBuilder()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;->access$4400(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getApks(I)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 3451
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->apks_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;

    return-object v0
.end method

.method public getApksCount()I
    .locals 1

    .prologue
    .line 3446
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->apks_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
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
    .line 3438
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->apks_:Ljava/util/List;

    return-object v0
.end method

.method public getApksOrBuilder(I)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 3456
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->apks_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkOrBuilder;

    return-object v0
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
    .line 3442
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->apks_:Ljava/util/List;

    return-object v0
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 4

    .prologue
    .line 3362
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->author_:Ljava/lang/Object;

    .line 3363
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 3364
    check-cast v1, Ljava/lang/String;

    .line 3371
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 3366
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3367
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 3368
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3369
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->author_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 3371
    goto :goto_0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3243
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3243
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;
    .locals 1

    .prologue
    .line 3261
    sget-object v0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->defaultInstance:Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;

    return-object v0
.end method

.method public getDetail()Ljava/lang/String;
    .locals 4

    .prologue
    .line 3468
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->detail_:Ljava/lang/Object;

    .line 3469
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 3470
    check-cast v1, Ljava/lang/String;

    .line 3477
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 3472
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3473
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 3474
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3475
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->detail_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 3477
    goto :goto_0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 3282
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->id_:J

    return-wide v0
.end method

.method public getMcimg()Ljava/lang/String;
    .locals 4

    .prologue
    .line 3396
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->mcimg_:Ljava/lang/Object;

    .line 3397
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 3398
    check-cast v1, Ljava/lang/String;

    .line 3405
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 3400
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3401
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 3402
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3403
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->mcimg_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 3405
    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 3294
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->name_:Ljava/lang/Object;

    .line 3295
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 3296
    check-cast v1, Ljava/lang/String;

    .line 3303
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 3298
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3299
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 3300
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3301
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->name_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 3303
    goto :goto_0
.end method

.method public getReleasetime()J
    .locals 2

    .prologue
    .line 3430
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->releasetime_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 10

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 3548
    iget v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->memoizedSerializedSize:I

    .line 3549
    .local v1, "size":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v2, v1

    .line 3587
    .end local v1    # "size":I
    .local v2, "size":I
    :goto_0
    return v2

    .line 3552
    .end local v2    # "size":I
    .restart local v1    # "size":I
    :cond_0
    const/4 v1, 0x0

    .line 3553
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v6, :cond_1

    .line 3554
    iget-wide v4, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->id_:J

    invoke-static {v6, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 3557
    :cond_1
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v7, :cond_2

    .line 3558
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 3561
    :cond_2
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v8, :cond_3

    .line 3562
    const/4 v3, 0x3

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->getTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 3565
    :cond_3
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-ne v3, v9, :cond_4

    .line 3566
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->getAuthorBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v8, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 3569
    :cond_4
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_5

    .line 3570
    const/4 v3, 0x5

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->getMcimgBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 3573
    :cond_5
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_6

    .line 3574
    const/4 v3, 0x6

    iget-wide v4, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->releasetime_:J

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 3577
    :cond_6
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->apks_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_7

    .line 3578
    const/4 v4, 0x7

    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->apks_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 3577
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3581
    :cond_7
    iget v3, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_8

    .line 3582
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->getDetailBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v9, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 3585
    :cond_8
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v3

    add-int/2addr v1, v3

    .line 3586
    iput v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->memoizedSerializedSize:I

    move v2, v1

    .line 3587
    .end local v1    # "size":I
    .restart local v2    # "size":I
    goto/16 :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 4

    .prologue
    .line 3328
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->title_:Ljava/lang/Object;

    .line 3329
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 3330
    check-cast v1, Ljava/lang/String;

    .line 3337
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 3332
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3333
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 3334
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3335
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->title_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 3337
    goto :goto_0
.end method

.method public hasAuthor()Z
    .locals 2

    .prologue
    .line 3358
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->bitField0_:I

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
    .line 3464
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->bitField0_:I

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

.method public hasId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 3278
    iget v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->bitField0_:I

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
    .line 3392
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->bitField0_:I

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
    .line 3290
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->bitField0_:I

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
    .line 3426
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->bitField0_:I

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
    .line 3324
    iget v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->bitField0_:I

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
    .line 3269
    # getter for: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto;->internal_static_protobuf_ResourceApkAlbum_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto;->access$4300()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 3507
    iget-byte v0, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->memoizedIsInitialized:B

    .line 3508
    .local v0, "isInitialized":B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 3509
    if-ne v0, v1, :cond_0

    .line 3512
    :goto_0
    return v1

    .line 3509
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 3511
    :cond_1
    iput-byte v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3243
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->newBuilderForType()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 3243
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3243
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->newBuilderForType()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;
    .locals 1

    .prologue
    .line 3680
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->newBuilder()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 3695
    new-instance v0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$1;)V

    .line 3696
    .local v0, "builder":Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3243
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->toBuilder()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3243
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->toBuilder()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;
    .locals 1

    .prologue
    .line 3689
    invoke-static {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->newBuilder(Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;)Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 3595
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 8
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 3517
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->getSerializedSize()I

    .line 3518
    iget v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v4, :cond_0

    .line 3519
    iget-wide v2, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->id_:J

    invoke-virtual {p1, v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 3521
    :cond_0
    iget v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v5, :cond_1

    .line 3522
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v5, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3524
    :cond_1
    iget v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v6, :cond_2

    .line 3525
    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->getTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3527
    :cond_2
    iget v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v7, :cond_3

    .line 3528
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->getAuthorBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v6, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3530
    :cond_3
    iget v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_4

    .line 3531
    const/4 v1, 0x5

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->getMcimgBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3533
    :cond_4
    iget v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_5

    .line 3534
    const/4 v1, 0x6

    iget-wide v2, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->releasetime_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 3536
    :cond_5
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->apks_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 3537
    const/4 v2, 0x7

    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->apks_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 3536
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3539
    :cond_6
    iget v1, p0, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_7

    .line 3540
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->getDetailBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v7, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3542
    :cond_7
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 3543
    return-void
.end method
