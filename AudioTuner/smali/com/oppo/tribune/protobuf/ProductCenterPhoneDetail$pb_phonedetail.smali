.class public final Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;
.super Lcom/google/protobuf/GeneratedMessage;
.source "ProductCenterPhoneDetail.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetailOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "pb_phonedetail"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;
    }
.end annotation


# static fields
.field public static final DESCRIPTION_FIELD_NUMBER:I = 0x7

.field public static final FID_FIELD_NUMBER:I = 0x5

.field public static final ID_FIELD_NUMBER:I = 0x1

.field public static final ISNEW_FIELD_NUMBER:I = 0x6

.field public static final NAME_FIELD_NUMBER:I = 0x2

.field public static final PICTURES_FIELD_NUMBER:I = 0x8

.field public static final SERIAL_FIELD_NUMBER:I = 0x4

.field public static final SMALLPIC_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private description_:Ljava/lang/Object;

.field private fid_:I

.field private id_:I

.field private isnew_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private name_:Ljava/lang/Object;

.field private pictures_:Lcom/google/protobuf/LazyStringList;

.field private serial_:I

.field private smallpic_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1010
    new-instance v0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;-><init>(Z)V

    sput-object v0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->defaultInstance:Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;

    .line 1011
    sget-object v0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->defaultInstance:Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->initFields()V

    .line 1012
    return-void
.end method

.method private constructor <init>(Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;

    .prologue
    const/4 v0, -0x1

    .line 65
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 267
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->memoizedIsInitialized:B

    .line 308
    iput v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->memoizedSerializedSize:I

    .line 66
    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$1;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;-><init>(Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 68
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 267
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->memoizedIsInitialized:B

    .line 308
    iput v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->memoizedSerializedSize:I

    .line 69
    return-void
.end method

.method static synthetic access$1002(Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;
    .param p1, "x1"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->serial_:I

    return p1
.end method

.method static synthetic access$1102(Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;
    .param p1, "x1"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->fid_:I

    return p1
.end method

.method static synthetic access$1202(Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;
    .param p1, "x1"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->isnew_:I

    return p1
.end method

.method static synthetic access$1302(Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->description_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;)Lcom/google/protobuf/LazyStringList;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->pictures_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;
    .param p1, "x1"    # Lcom/google/protobuf/LazyStringList;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->pictures_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;
    .param p1, "x1"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->bitField0_:I

    return p1
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 60
    sget-boolean v0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$702(Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;
    .param p1, "x1"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->id_:I

    return p1
.end method

.method static synthetic access$802(Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$902(Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->smallpic_:Ljava/lang/Object;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->defaultInstance:Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;

    return-object v0
.end method

.method private getDescriptionBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 229
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->description_:Ljava/lang/Object;

    .line 230
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 231
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 233
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->description_:Ljava/lang/Object;

    .line 236
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

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 82
    # getter for: Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail;->internal_static_pb_phonedetail_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 125
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->name_:Ljava/lang/Object;

    .line 126
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 127
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 129
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->name_:Ljava/lang/Object;

    .line 132
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

.method private getSmallpicBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 159
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->smallpic_:Ljava/lang/Object;

    .line 160
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 161
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 163
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->smallpic_:Ljava/lang/Object;

    .line 166
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
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 257
    iput v1, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->id_:I

    .line 258
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->name_:Ljava/lang/Object;

    .line 259
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->smallpic_:Ljava/lang/Object;

    .line 260
    iput v1, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->serial_:I

    .line 261
    iput v1, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->fid_:I

    .line 262
    iput v1, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->isnew_:I

    .line 263
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->description_:Ljava/lang/Object;

    .line 264
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->pictures_:Lcom/google/protobuf/LazyStringList;

    .line 265
    return-void
.end method

.method public static newBuilder()Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;
    .locals 1

    .prologue
    .line 444
    # invokes: Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->create()Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->access$300()Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;)Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;

    .prologue
    .line 453
    invoke-static {}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->newBuilder()Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;)Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 409
    invoke-static {}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->newBuilder()Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;

    move-result-object v0

    .line 410
    .local v0, "builder":Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;
    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 411
    # invokes: Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->access$200(Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;)Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;

    move-result-object v1

    .line 413
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 421
    invoke-static {}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->newBuilder()Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;

    move-result-object v0

    .line 422
    .local v0, "builder":Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 423
    # invokes: Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->access$200(Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;)Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;

    move-result-object v1

    .line 425
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 369
    invoke-static {}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->newBuilder()Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->access$200(Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;)Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 376
    invoke-static {}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->newBuilder()Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->access$200(Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;)Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 432
    invoke-static {}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->newBuilder()Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->access$200(Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;)Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 439
    invoke-static {}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->newBuilder()Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;

    move-result-object v0

    # invokes: Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->access$200(Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;)Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 396
    invoke-static {}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->newBuilder()Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->access$200(Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;)Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 403
    invoke-static {}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->newBuilder()Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->access$200(Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;)Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 383
    invoke-static {}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->newBuilder()Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->access$200(Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;)Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 390
    invoke-static {}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->newBuilder()Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;->access$200(Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;)Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->defaultInstance:Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 4

    .prologue
    .line 215
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->description_:Ljava/lang/Object;

    .line 216
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 217
    check-cast v1, Ljava/lang/String;

    .line 224
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 219
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 220
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 221
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 222
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->description_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 224
    goto :goto_0
.end method

.method public getFid()I
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->fid_:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->id_:I

    return v0
.end method

.method public getIsnew()I
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->isnew_:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 111
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->name_:Ljava/lang/Object;

    .line 112
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 113
    check-cast v1, Ljava/lang/String;

    .line 120
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 115
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 116
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 117
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 118
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->name_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 120
    goto :goto_0
.end method

.method public getPictures(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 253
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->pictures_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPicturesCount()I
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->pictures_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getPicturesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 245
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->pictures_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public getSerial()I
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->serial_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 311
    iget v2, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->memoizedSerializedSize:I

    .line 312
    .local v2, "size":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    move v3, v2

    .line 355
    .end local v2    # "size":I
    .local v3, "size":I
    :goto_0
    return v3

    .line 315
    .end local v3    # "size":I
    .restart local v2    # "size":I
    :cond_0
    const/4 v2, 0x0

    .line 316
    iget v4, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v5, :cond_1

    .line 317
    iget v4, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->id_:I

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 320
    :cond_1
    iget v4, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v4, v6, :cond_2

    .line 321
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 324
    :cond_2
    iget v4, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v4, v7, :cond_3

    .line 325
    const/4 v4, 0x3

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->getSmallpicBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 328
    :cond_3
    iget v4, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    const/16 v5, 0x8

    if-ne v4, v5, :cond_4

    .line 329
    iget v4, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->serial_:I

    invoke-static {v7, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 332
    :cond_4
    iget v4, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->bitField0_:I

    and-int/lit8 v4, v4, 0x10

    const/16 v5, 0x10

    if-ne v4, v5, :cond_5

    .line 333
    const/4 v4, 0x5

    iget v5, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->fid_:I

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 336
    :cond_5
    iget v4, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->bitField0_:I

    and-int/lit8 v4, v4, 0x20

    const/16 v5, 0x20

    if-ne v4, v5, :cond_6

    .line 337
    const/4 v4, 0x6

    iget v5, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->isnew_:I

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 340
    :cond_6
    iget v4, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->bitField0_:I

    and-int/lit8 v4, v4, 0x40

    const/16 v5, 0x40

    if-ne v4, v5, :cond_7

    .line 341
    const/4 v4, 0x7

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->getDescriptionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 345
    :cond_7
    const/4 v0, 0x0

    .line 346
    .local v0, "dataSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v4, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->pictures_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_8

    .line 347
    iget-object v4, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->pictures_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 346
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 350
    :cond_8
    add-int/2addr v2, v0

    .line 351
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->getPicturesList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 353
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v4

    add-int/2addr v2, v4

    .line 354
    iput v2, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->memoizedSerializedSize:I

    move v3, v2

    .line 355
    .end local v2    # "size":I
    .restart local v3    # "size":I
    goto/16 :goto_0
.end method

.method public getSmallpic()Ljava/lang/String;
    .locals 4

    .prologue
    .line 145
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->smallpic_:Ljava/lang/Object;

    .line 146
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 147
    check-cast v1, Ljava/lang/String;

    .line 154
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 149
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 150
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 151
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 152
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->smallpic_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 154
    goto :goto_0
.end method

.method public hasDescription()Z
    .locals 2

    .prologue
    .line 211
    iget v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->bitField0_:I

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

.method public hasFid()Z
    .locals 2

    .prologue
    .line 187
    iget v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->bitField0_:I

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

.method public hasId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 95
    iget v1, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIsnew()Z
    .locals 2

    .prologue
    .line 199
    iget v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->bitField0_:I

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

.method public hasName()Z
    .locals 2

    .prologue
    .line 107
    iget v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->bitField0_:I

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

.method public hasSerial()Z
    .locals 2

    .prologue
    .line 175
    iget v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->bitField0_:I

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

.method public hasSmallpic()Z
    .locals 2

    .prologue
    .line 141
    iget v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->bitField0_:I

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
    .line 86
    # getter for: Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail;->internal_static_pb_phonedetail_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 270
    iget-byte v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->memoizedIsInitialized:B

    .line 271
    .local v0, "isInitialized":B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 272
    if-ne v0, v1, :cond_0

    .line 275
    :goto_0
    return v1

    .line 272
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 274
    :cond_1
    iput-byte v1, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->newBuilderForType()Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->newBuilderForType()Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;
    .locals 1

    .prologue
    .line 448
    invoke-static {}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->newBuilder()Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 463
    new-instance v0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$1;)V

    .line 464
    .local v0, "builder":Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->toBuilder()Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->toBuilder()Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;
    .locals 1

    .prologue
    .line 457
    invoke-static {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->newBuilder(Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;)Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail$Builder;

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
    .line 363
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 6
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 280
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->getSerializedSize()I

    .line 281
    iget v1, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_0

    .line 282
    iget v1, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->id_:I

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 284
    :cond_0
    iget v1, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_1

    .line 285
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 287
    :cond_1
    iget v1, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_2

    .line 288
    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->getSmallpicBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 290
    :cond_2
    iget v1, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v5, :cond_3

    .line 291
    iget v1, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->serial_:I

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 293
    :cond_3
    iget v1, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_4

    .line 294
    const/4 v1, 0x5

    iget v2, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->fid_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 296
    :cond_4
    iget v1, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_5

    .line 297
    const/4 v1, 0x6

    iget v2, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->isnew_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 299
    :cond_5
    iget v1, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_6

    .line 300
    const/4 v1, 0x7

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->getDescriptionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 302
    :cond_6
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->pictures_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 303
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->pictures_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v5, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 302
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 305
    :cond_7
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 306
    return-void
.end method
