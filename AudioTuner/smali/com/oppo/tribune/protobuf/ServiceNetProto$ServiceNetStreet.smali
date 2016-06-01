.class public final Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;
.super Lcom/google/protobuf/GeneratedMessage;
.source "ServiceNetProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreetOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/ServiceNetProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServiceNetStreet"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;
    }
.end annotation


# static fields
.field public static final ADDR_FIELD_NUMBER:I = 0x2

.field public static final CITYNAME_FIELD_NUMBER:I = 0x7

.field public static final COORDINATE_FIELD_NUMBER:I = 0x4

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field public static final PHONE_FIELD_NUMBER:I = 0x3

.field public static final TRAFFIC_FIELD_NUMBER:I = 0x5

.field public static final WORKTIME_FIELD_NUMBER:I = 0x6

.field private static final defaultInstance:Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;

.field private static final serialVersionUID:J


# instance fields
.field private addr_:Ljava/lang/Object;

.field private bitField0_:I

.field private cityname_:Ljava/lang/Object;

.field private coordinate_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private name_:Ljava/lang/Object;

.field private phone_:Ljava/lang/Object;

.field private traffic_:Ljava/lang/Object;

.field private worktime_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1044
    new-instance v0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;-><init>(Z)V

    sput-object v0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->defaultInstance:Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;

    .line 1045
    sget-object v0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->defaultInstance:Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->initFields()V

    .line 1046
    return-void
.end method

.method private constructor <init>(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;

    .prologue
    const/4 v0, -0x1

    .line 58
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 331
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->memoizedIsInitialized:B

    .line 369
    iput v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->memoizedSerializedSize:I

    .line 59
    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;Lcom/oppo/tribune/protobuf/ServiceNetProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/ServiceNetProto$1;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;-><init>(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 61
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 331
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->memoizedIsInitialized:B

    .line 369
    iput v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->memoizedSerializedSize:I

    .line 62
    return-void
.end method

.method static synthetic access$1002(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->coordinate_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->traffic_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->worktime_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->cityname_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->bitField0_:I

    return p1
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 53
    sget-boolean v0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$702(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$802(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->addr_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$902(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->phone_:Ljava/lang/Object;

    return-object p1
.end method

.method private getAddrBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 140
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->addr_:Ljava/lang/Object;

    .line 141
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 142
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 144
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->addr_:Ljava/lang/Object;

    .line 147
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

.method private getCitynameBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 310
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->cityname_:Ljava/lang/Object;

    .line 311
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 312
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 314
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->cityname_:Ljava/lang/Object;

    .line 317
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

.method private getCoordinateBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 208
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->coordinate_:Ljava/lang/Object;

    .line 209
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 210
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 212
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->coordinate_:Ljava/lang/Object;

    .line 215
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

.method public static getDefaultInstance()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->defaultInstance:Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 75
    # getter for: Lcom/oppo/tribune/protobuf/ServiceNetProto;->internal_static_protobuf_ServiceNetStreet_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ServiceNetProto;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 106
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->name_:Ljava/lang/Object;

    .line 107
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 108
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 110
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->name_:Ljava/lang/Object;

    .line 113
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

.method private getPhoneBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 174
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->phone_:Ljava/lang/Object;

    .line 175
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 176
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 178
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->phone_:Ljava/lang/Object;

    .line 181
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

.method private getTrafficBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 242
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->traffic_:Ljava/lang/Object;

    .line 243
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 244
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 246
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->traffic_:Ljava/lang/Object;

    .line 249
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

.method private getWorktimeBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 276
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->worktime_:Ljava/lang/Object;

    .line 277
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 278
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 280
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->worktime_:Ljava/lang/Object;

    .line 283
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
    .locals 1

    .prologue
    .line 322
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->name_:Ljava/lang/Object;

    .line 323
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->addr_:Ljava/lang/Object;

    .line 324
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->phone_:Ljava/lang/Object;

    .line 325
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->coordinate_:Ljava/lang/Object;

    .line 326
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->traffic_:Ljava/lang/Object;

    .line 327
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->worktime_:Ljava/lang/Object;

    .line 328
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->cityname_:Ljava/lang/Object;

    .line 329
    return-void
.end method

.method public static newBuilder()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;
    .locals 1

    .prologue
    .line 496
    # invokes: Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->create()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->access$300()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;

    .prologue
    .line 505
    invoke-static {}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->newBuilder()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 461
    invoke-static {}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->newBuilder()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;

    move-result-object v0

    .line 462
    .local v0, "builder":Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;
    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 463
    # invokes: Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->access$200(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;

    move-result-object v1

    .line 465
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 473
    invoke-static {}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->newBuilder()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;

    move-result-object v0

    .line 474
    .local v0, "builder":Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 475
    # invokes: Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->access$200(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;

    move-result-object v1

    .line 477
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 421
    invoke-static {}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->newBuilder()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->access$200(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 428
    invoke-static {}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->newBuilder()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->access$200(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 484
    invoke-static {}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->newBuilder()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->access$200(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 491
    invoke-static {}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->newBuilder()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;

    move-result-object v0

    # invokes: Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->access$200(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 448
    invoke-static {}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->newBuilder()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->access$200(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 455
    invoke-static {}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->newBuilder()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->access$200(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 435
    invoke-static {}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->newBuilder()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->access$200(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 442
    invoke-static {}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->newBuilder()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;->access$200(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAddr()Ljava/lang/String;
    .locals 4

    .prologue
    .line 126
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->addr_:Ljava/lang/Object;

    .line 127
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 128
    check-cast v1, Ljava/lang/String;

    .line 135
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 130
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 131
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 132
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 133
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->addr_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 135
    goto :goto_0
.end method

.method public getCityname()Ljava/lang/String;
    .locals 4

    .prologue
    .line 296
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->cityname_:Ljava/lang/Object;

    .line 297
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 298
    check-cast v1, Ljava/lang/String;

    .line 305
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 300
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 301
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 302
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 303
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->cityname_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 305
    goto :goto_0
.end method

.method public getCoordinate()Ljava/lang/String;
    .locals 4

    .prologue
    .line 194
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->coordinate_:Ljava/lang/Object;

    .line 195
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 196
    check-cast v1, Ljava/lang/String;

    .line 203
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 198
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 199
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 200
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 201
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->coordinate_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 203
    goto :goto_0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->defaultInstance:Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 92
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->name_:Ljava/lang/Object;

    .line 93
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 94
    check-cast v1, Ljava/lang/String;

    .line 101
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 96
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 97
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 98
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 99
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->name_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 101
    goto :goto_0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 4

    .prologue
    .line 160
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->phone_:Ljava/lang/Object;

    .line 161
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 162
    check-cast v1, Ljava/lang/String;

    .line 169
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 164
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 165
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 166
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 167
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->phone_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 169
    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 372
    iget v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->memoizedSerializedSize:I

    .line 373
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 407
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 376
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 377
    iget v2, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 378
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 381
    :cond_1
    iget v2, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 382
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->getAddrBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 385
    :cond_2
    iget v2, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_3

    .line 386
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->getPhoneBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 389
    :cond_3
    iget v2, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    .line 390
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->getCoordinateBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 393
    :cond_4
    iget v2, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    .line 394
    const/4 v2, 0x5

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->getTrafficBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 397
    :cond_5
    iget v2, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_6

    .line 398
    const/4 v2, 0x6

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->getWorktimeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 401
    :cond_6
    iget v2, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_7

    .line 402
    const/4 v2, 0x7

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->getCitynameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 405
    :cond_7
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 406
    iput v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->memoizedSerializedSize:I

    move v1, v0

    .line 407
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto/16 :goto_0
.end method

.method public getTraffic()Ljava/lang/String;
    .locals 4

    .prologue
    .line 228
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->traffic_:Ljava/lang/Object;

    .line 229
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 230
    check-cast v1, Ljava/lang/String;

    .line 237
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 232
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 233
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 234
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 235
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->traffic_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 237
    goto :goto_0
.end method

.method public getWorktime()Ljava/lang/String;
    .locals 4

    .prologue
    .line 262
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->worktime_:Ljava/lang/Object;

    .line 263
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 264
    check-cast v1, Ljava/lang/String;

    .line 271
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 266
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 267
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 268
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 269
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->worktime_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 271
    goto :goto_0
.end method

.method public hasAddr()Z
    .locals 2

    .prologue
    .line 122
    iget v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->bitField0_:I

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

.method public hasCityname()Z
    .locals 2

    .prologue
    .line 292
    iget v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->bitField0_:I

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

.method public hasCoordinate()Z
    .locals 2

    .prologue
    .line 190
    iget v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->bitField0_:I

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

.method public hasName()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 88
    iget v1, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPhone()Z
    .locals 2

    .prologue
    .line 156
    iget v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->bitField0_:I

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

.method public hasTraffic()Z
    .locals 2

    .prologue
    .line 224
    iget v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->bitField0_:I

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

.method public hasWorktime()Z
    .locals 2

    .prologue
    .line 258
    iget v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 79
    # getter for: Lcom/oppo/tribune/protobuf/ServiceNetProto;->internal_static_protobuf_ServiceNetStreet_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ServiceNetProto;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 334
    iget-byte v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->memoizedIsInitialized:B

    .line 335
    .local v0, "isInitialized":B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 336
    if-ne v0, v1, :cond_0

    .line 339
    :goto_0
    return v1

    .line 336
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 338
    :cond_1
    iput-byte v1, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->newBuilderForType()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->newBuilderForType()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;
    .locals 1

    .prologue
    .line 500
    invoke-static {}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->newBuilder()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 515
    new-instance v0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/ServiceNetProto$1;)V

    .line 516
    .local v0, "builder":Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->toBuilder()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->toBuilder()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;
    .locals 1

    .prologue
    .line 509
    invoke-static {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->newBuilder(Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet$Builder;

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
    .line 415
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 4
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 344
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->getSerializedSize()I

    .line 345
    iget v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 346
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 348
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 349
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->getAddrBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 351
    :cond_1
    iget v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 352
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->getPhoneBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 354
    :cond_2
    iget v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 355
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->getCoordinateBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 357
    :cond_3
    iget v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 358
    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->getTrafficBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 360
    :cond_4
    iget v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 361
    const/4 v0, 0x6

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->getWorktimeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 363
    :cond_5
    iget v0, p0, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    .line 364
    const/4 v0, 0x7

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->getCitynameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 366
    :cond_6
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 367
    return-void
.end method
