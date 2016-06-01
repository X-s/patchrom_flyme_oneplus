.class public final Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;
.super Lcom/google/protobuf/GeneratedMessage;
.source "PackshowCoverProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuserOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/PackshowCoverProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "pbuser"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;
    }
.end annotation


# static fields
.field public static final ADDRESS_FIELD_NUMBER:I = 0x8

.field public static final AGE_FIELD_NUMBER:I = 0x7

.field public static final AVATAR_FIELD_NUMBER:I = 0xc

.field public static final CONSTELLATION_FIELD_NUMBER:I = 0xb

.field public static final DATELINE_FIELD_NUMBER:I = 0x4

.field public static final FANS_FIELD_NUMBER:I = 0xd

.field public static final FOLLOWED_FIELD_NUMBER:I = 0x5

.field public static final GENDER_FIELD_NUMBER:I = 0x6

.field public static final GROUPID_FIELD_NUMBER:I = 0xa

.field public static final GROUPNAME_FIELD_NUMBER:I = 0x9

.field public static final MUTUAL_FIELD_NUMBER:I = 0x3

.field public static final UID_FIELD_NUMBER:I = 0x2

.field public static final USERNAME_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;

.field private static final serialVersionUID:J


# instance fields
.field private address_:Ljava/lang/Object;

.field private age_:I

.field private avatar_:Ljava/lang/Object;

.field private bitField0_:I

.field private constellation_:Ljava/lang/Object;

.field private dateline_:I

.field private fans_:I

.field private followed_:I

.field private gender_:I

.field private groupid_:I

.field private groupname_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private mutual_:I

.field private uid_:J

.field private username_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1348
    new-instance v0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;-><init>(Z)V

    sput-object v0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->defaultInstance:Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;

    .line 1349
    sget-object v0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->defaultInstance:Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->initFields()V

    .line 1350
    return-void
.end method

.method private constructor <init>(Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;

    .prologue
    const/4 v0, -0x1

    .line 87
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 394
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->memoizedIsInitialized:B

    .line 450
    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->memoizedSerializedSize:I

    .line 88
    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;Lcom/oppo/tribune/protobuf/PackshowCoverProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/PackshowCoverProto$1;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;-><init>(Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 90
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 394
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->memoizedIsInitialized:B

    .line 450
    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->memoizedSerializedSize:I

    .line 91
    return-void
.end method

.method static synthetic access$1002(Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;
    .param p1, "x1"    # I

    .prologue
    .line 83
    iput p1, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->dateline_:I

    return p1
.end method

.method static synthetic access$1102(Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;
    .param p1, "x1"    # I

    .prologue
    .line 83
    iput p1, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->followed_:I

    return p1
.end method

.method static synthetic access$1202(Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;
    .param p1, "x1"    # I

    .prologue
    .line 83
    iput p1, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->gender_:I

    return p1
.end method

.method static synthetic access$1302(Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;
    .param p1, "x1"    # I

    .prologue
    .line 83
    iput p1, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->age_:I

    return p1
.end method

.method static synthetic access$1402(Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->address_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->groupname_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;
    .param p1, "x1"    # I

    .prologue
    .line 83
    iput p1, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->groupid_:I

    return p1
.end method

.method static synthetic access$1702(Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->constellation_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1802(Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->avatar_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1902(Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;
    .param p1, "x1"    # I

    .prologue
    .line 83
    iput p1, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->fans_:I

    return p1
.end method

.method static synthetic access$2002(Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;
    .param p1, "x1"    # I

    .prologue
    .line 83
    iput p1, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->bitField0_:I

    return p1
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 83
    sget-boolean v0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$702(Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->username_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$802(Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;J)J
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;
    .param p1, "x1"    # J

    .prologue
    .line 83
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->uid_:J

    return-wide p1
.end method

.method static synthetic access$902(Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;
    .param p1, "x1"    # I

    .prologue
    .line 83
    iput p1, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->mutual_:I

    return p1
.end method

.method private getAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 241
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->address_:Ljava/lang/Object;

    .line 242
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 243
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 245
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->address_:Ljava/lang/Object;

    .line 248
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

.method private getAvatarBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 355
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->avatar_:Ljava/lang/Object;

    .line 356
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 357
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 359
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->avatar_:Ljava/lang/Object;

    .line 362
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

.method private getConstellationBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 321
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->constellation_:Ljava/lang/Object;

    .line 322
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 323
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 325
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->constellation_:Ljava/lang/Object;

    .line 328
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

.method public static getDefaultInstance()Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->defaultInstance:Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 104
    # getter for: Lcom/oppo/tribune/protobuf/PackshowCoverProto;->internal_static_pbuser_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowCoverProto;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getGroupnameBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 275
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->groupname_:Ljava/lang/Object;

    .line 276
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 277
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 279
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->groupname_:Ljava/lang/Object;

    .line 282
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

.method private getUsernameBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 135
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->username_:Ljava/lang/Object;

    .line 136
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 137
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 139
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->username_:Ljava/lang/Object;

    .line 142
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
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 379
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->username_:Ljava/lang/Object;

    .line 380
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->uid_:J

    .line 381
    iput v2, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->mutual_:I

    .line 382
    iput v2, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->dateline_:I

    .line 383
    iput v2, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->followed_:I

    .line 384
    iput v2, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->gender_:I

    .line 385
    iput v2, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->age_:I

    .line 386
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->address_:Ljava/lang/Object;

    .line 387
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->groupname_:Ljava/lang/Object;

    .line 388
    iput v2, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->groupid_:I

    .line 389
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->constellation_:Ljava/lang/Object;

    .line 390
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->avatar_:Ljava/lang/Object;

    .line 391
    iput v2, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->fans_:I

    .line 392
    return-void
.end method

.method public static newBuilder()Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;
    .locals 1

    .prologue
    .line 601
    # invokes: Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->create()Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->access$300()Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;)Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;

    .prologue
    .line 610
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->newBuilder()Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;)Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 566
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->newBuilder()Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;

    move-result-object v0

    .line 567
    .local v0, "builder":Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;
    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 568
    # invokes: Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->access$200(Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;)Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;

    move-result-object v1

    .line 570
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 578
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->newBuilder()Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;

    move-result-object v0

    .line 579
    .local v0, "builder":Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 580
    # invokes: Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->access$200(Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;)Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;

    move-result-object v1

    .line 582
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 526
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->newBuilder()Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->access$200(Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;)Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 533
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->newBuilder()Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->access$200(Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;)Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 589
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->newBuilder()Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->access$200(Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;)Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 596
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->newBuilder()Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;

    move-result-object v0

    # invokes: Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->access$200(Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;)Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 553
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->newBuilder()Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->access$200(Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;)Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 560
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->newBuilder()Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->access$200(Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;)Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 540
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->newBuilder()Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->access$200(Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;)Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 547
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->newBuilder()Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;->access$200(Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;)Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 4

    .prologue
    .line 227
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->address_:Ljava/lang/Object;

    .line 228
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 229
    check-cast v1, Ljava/lang/String;

    .line 236
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 231
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 232
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 233
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 234
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->address_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 236
    goto :goto_0
.end method

.method public getAge()I
    .locals 1

    .prologue
    .line 215
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->age_:I

    return v0
.end method

.method public getAvatar()Ljava/lang/String;
    .locals 4

    .prologue
    .line 341
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->avatar_:Ljava/lang/Object;

    .line 342
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 343
    check-cast v1, Ljava/lang/String;

    .line 350
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 345
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 346
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 347
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 348
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->avatar_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 350
    goto :goto_0
.end method

.method public getConstellation()Ljava/lang/String;
    .locals 4

    .prologue
    .line 307
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->constellation_:Ljava/lang/Object;

    .line 308
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 309
    check-cast v1, Ljava/lang/String;

    .line 316
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 311
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 312
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 313
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 314
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->constellation_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 316
    goto :goto_0
.end method

.method public getDateline()I
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->dateline_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->defaultInstance:Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;

    return-object v0
.end method

.method public getFans()I
    .locals 1

    .prologue
    .line 375
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->fans_:I

    return v0
.end method

.method public getFollowed()I
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->followed_:I

    return v0
.end method

.method public getGender()I
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->gender_:I

    return v0
.end method

.method public getGroupid()I
    .locals 1

    .prologue
    .line 295
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->groupid_:I

    return v0
.end method

.method public getGroupname()Ljava/lang/String;
    .locals 4

    .prologue
    .line 261
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->groupname_:Ljava/lang/Object;

    .line 262
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 263
    check-cast v1, Ljava/lang/String;

    .line 270
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 265
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 266
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 267
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 268
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->groupname_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 270
    goto :goto_0
.end method

.method public getMutual()I
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->mutual_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 453
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->memoizedSerializedSize:I

    .line 454
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 512
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 457
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 458
    iget v2, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 459
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->getUsernameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 462
    :cond_1
    iget v2, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 463
    iget-wide v2, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->uid_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 466
    :cond_2
    iget v2, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_3

    .line 467
    const/4 v2, 0x3

    iget v3, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->mutual_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 470
    :cond_3
    iget v2, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v6, :cond_4

    .line 471
    iget v2, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->dateline_:I

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 474
    :cond_4
    iget v2, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    .line 475
    const/4 v2, 0x5

    iget v3, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->followed_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 478
    :cond_5
    iget v2, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_6

    .line 479
    const/4 v2, 0x6

    iget v3, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->gender_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 482
    :cond_6
    iget v2, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_7

    .line 483
    const/4 v2, 0x7

    iget v3, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->age_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 486
    :cond_7
    iget v2, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_8

    .line 487
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->getAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 490
    :cond_8
    iget v2, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_9

    .line 491
    const/16 v2, 0x9

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->getGroupnameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 494
    :cond_9
    iget v2, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->bitField0_:I

    and-int/lit16 v2, v2, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_a

    .line 495
    const/16 v2, 0xa

    iget v3, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->groupid_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 498
    :cond_a
    iget v2, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->bitField0_:I

    and-int/lit16 v2, v2, 0x400

    const/16 v3, 0x400

    if-ne v2, v3, :cond_b

    .line 499
    const/16 v2, 0xb

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->getConstellationBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 502
    :cond_b
    iget v2, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->bitField0_:I

    and-int/lit16 v2, v2, 0x800

    const/16 v3, 0x800

    if-ne v2, v3, :cond_c

    .line 503
    const/16 v2, 0xc

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->getAvatarBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 506
    :cond_c
    iget v2, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->bitField0_:I

    and-int/lit16 v2, v2, 0x1000

    const/16 v3, 0x1000

    if-ne v2, v3, :cond_d

    .line 507
    const/16 v2, 0xd

    iget v3, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->fans_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 510
    :cond_d
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 511
    iput v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->memoizedSerializedSize:I

    move v1, v0

    .line 512
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto/16 :goto_0
.end method

.method public getUid()J
    .locals 2

    .prologue
    .line 155
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->uid_:J

    return-wide v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 4

    .prologue
    .line 121
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->username_:Ljava/lang/Object;

    .line 122
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 123
    check-cast v1, Ljava/lang/String;

    .line 130
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 125
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 126
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 128
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->username_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 130
    goto :goto_0
.end method

.method public hasAddress()Z
    .locals 2

    .prologue
    .line 223
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->bitField0_:I

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

.method public hasAge()Z
    .locals 2

    .prologue
    .line 211
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->bitField0_:I

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

.method public hasAvatar()Z
    .locals 2

    .prologue
    .line 337
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->bitField0_:I

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

.method public hasConstellation()Z
    .locals 2

    .prologue
    .line 303
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->bitField0_:I

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

.method public hasDateline()Z
    .locals 2

    .prologue
    .line 175
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->bitField0_:I

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

.method public hasFans()Z
    .locals 2

    .prologue
    .line 371
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->bitField0_:I

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

.method public hasFollowed()Z
    .locals 2

    .prologue
    .line 187
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->bitField0_:I

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

.method public hasGender()Z
    .locals 2

    .prologue
    .line 199
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->bitField0_:I

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

.method public hasGroupid()Z
    .locals 2

    .prologue
    .line 291
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->bitField0_:I

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

.method public hasGroupname()Z
    .locals 2

    .prologue
    .line 257
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->bitField0_:I

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

.method public hasMutual()Z
    .locals 2

    .prologue
    .line 163
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->bitField0_:I

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

.method public hasUid()Z
    .locals 2

    .prologue
    .line 151
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->bitField0_:I

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

.method public hasUsername()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 117
    iget v1, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->bitField0_:I

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
    .line 108
    # getter for: Lcom/oppo/tribune/protobuf/PackshowCoverProto;->internal_static_pbuser_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowCoverProto;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 397
    iget-byte v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->memoizedIsInitialized:B

    .line 398
    .local v0, "isInitialized":B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 399
    if-ne v0, v1, :cond_0

    .line 402
    :goto_0
    return v1

    .line 399
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 401
    :cond_1
    iput-byte v1, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->newBuilderForType()Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 83
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->newBuilderForType()Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;
    .locals 1

    .prologue
    .line 605
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->newBuilder()Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 620
    new-instance v0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/PackshowCoverProto$1;)V

    .line 621
    .local v0, "builder":Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->toBuilder()Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->toBuilder()Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;
    .locals 1

    .prologue
    .line 614
    invoke-static {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->newBuilder(Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;)Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;

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
    .line 520
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 5
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 407
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->getSerializedSize()I

    .line 408
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 409
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->getUsernameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 411
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 412
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->uid_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 414
    :cond_1
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 415
    const/4 v0, 0x3

    iget v1, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->mutual_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 417
    :cond_2
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_3

    .line 418
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->dateline_:I

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 420
    :cond_3
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 421
    const/4 v0, 0x5

    iget v1, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->followed_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 423
    :cond_4
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 424
    const/4 v0, 0x6

    iget v1, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->gender_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 426
    :cond_5
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    .line 427
    const/4 v0, 0x7

    iget v1, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->age_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 429
    :cond_6
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_7

    .line 430
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->getAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 432
    :cond_7
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_8

    .line 433
    const/16 v0, 0x9

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->getGroupnameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 435
    :cond_8
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_9

    .line 436
    const/16 v0, 0xa

    iget v1, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->groupid_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 438
    :cond_9
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_a

    .line 439
    const/16 v0, 0xb

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->getConstellationBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 441
    :cond_a
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_b

    .line 442
    const/16 v0, 0xc

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->getAvatarBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 444
    :cond_b
    iget v0, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_c

    .line 445
    const/16 v0, 0xd

    iget v1, p0, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->fans_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 447
    :cond_c
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 448
    return-void
.end method
