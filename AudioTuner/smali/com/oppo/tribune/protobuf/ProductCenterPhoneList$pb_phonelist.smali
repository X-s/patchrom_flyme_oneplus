.class public final Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;
.super Lcom/google/protobuf/GeneratedMessage;
.source "ProductCenterPhoneList.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelistOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/ProductCenterPhoneList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "pb_phonelist"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;
    }
.end annotation


# static fields
.field public static final PAGE_FIELD_NUMBER:I = 0x2

.field public static final PERPAGE_FIELD_NUMBER:I = 0x3

.field public static final PHONELIST_FIELD_NUMBER:I = 0x1

.field public static final TOTAL_FIELD_NUMBER:I = 0x4

.field private static final defaultInstance:Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private page_:I

.field private perpage_:I

.field private phonelist_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;",
            ">;"
        }
    .end annotation
.end field

.field private total_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 824
    new-instance v0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;-><init>(Z)V

    sput-object v0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->defaultInstance:Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;

    .line 825
    sget-object v0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->defaultInstance:Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->initFields()V

    .line 826
    return-void
.end method

.method private constructor <init>(Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;

    .prologue
    const/4 v0, -0x1

    .line 51
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 145
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->memoizedIsInitialized:B

    .line 174
    iput v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->memoizedSerializedSize:I

    .line 52
    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$1;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;-><init>(Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 54
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 145
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->memoizedIsInitialized:B

    .line 174
    iput v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->memoizedSerializedSize:I

    .line 55
    return-void
.end method

.method static synthetic access$1002(Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;
    .param p1, "x1"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->total_:I

    return p1
.end method

.method static synthetic access$1102(Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;
    .param p1, "x1"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->bitField0_:I

    return p1
.end method

.method static synthetic access$1200()Z
    .locals 1

    .prologue
    .line 46
    sget-boolean v0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 46
    sget-boolean v0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$700(Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->phonelist_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$702(Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->phonelist_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$802(Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;
    .param p1, "x1"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->page_:I

    return p1
.end method

.method static synthetic access$902(Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;
    .param p1, "x1"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->perpage_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->defaultInstance:Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 68
    # getter for: Lcom/oppo/tribune/protobuf/ProductCenterPhoneList;->internal_static_pb_phonelist_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 139
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->phonelist_:Ljava/util/List;

    .line 140
    iput v1, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->page_:I

    .line 141
    iput v1, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->perpage_:I

    .line 142
    iput v1, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->total_:I

    .line 143
    return-void
.end method

.method public static newBuilder()Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;
    .locals 1

    .prologue
    .line 289
    # invokes: Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->create()Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->access$300()Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;)Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;

    .prologue
    .line 298
    invoke-static {}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->newBuilder()Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;)Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 254
    invoke-static {}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->newBuilder()Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;

    move-result-object v0

    .line 255
    .local v0, "builder":Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;
    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 256
    # invokes: Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->access$200(Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;)Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;

    move-result-object v1

    .line 258
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 266
    invoke-static {}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->newBuilder()Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;

    move-result-object v0

    .line 267
    .local v0, "builder":Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 268
    # invokes: Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->access$200(Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;)Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;

    move-result-object v1

    .line 270
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 214
    invoke-static {}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->newBuilder()Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->access$200(Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;)Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 221
    invoke-static {}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->newBuilder()Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->access$200(Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;)Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 277
    invoke-static {}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->newBuilder()Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->access$200(Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;)Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 284
    invoke-static {}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->newBuilder()Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;

    move-result-object v0

    # invokes: Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->access$200(Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;)Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 241
    invoke-static {}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->newBuilder()Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->access$200(Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;)Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 248
    invoke-static {}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->newBuilder()Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->access$200(Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;)Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 228
    invoke-static {}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->newBuilder()Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->access$200(Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;)Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 235
    invoke-static {}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->newBuilder()Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;->access$200(Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;)Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->defaultInstance:Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;

    return-object v0
.end method

.method public getPage()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->page_:I

    return v0
.end method

.method public getPerpage()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->perpage_:I

    return v0
.end method

.method public getPhonelist(I)Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 94
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->phonelist_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;

    return-object v0
.end method

.method public getPhonelistCount()I
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->phonelist_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPhonelistList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->phonelist_:Ljava/util/List;

    return-object v0
.end method

.method public getPhonelistOrBuilder(I)Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetailOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 99
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->phonelist_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetailOrBuilder;

    return-object v0
.end method

.method public getPhonelistOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetailOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->phonelist_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 177
    iget v1, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->memoizedSerializedSize:I

    .line 178
    .local v1, "size":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v2, v1

    .line 200
    .end local v1    # "size":I
    .local v2, "size":I
    :goto_0
    return v2

    .line 181
    .end local v2    # "size":I
    .restart local v1    # "size":I
    :cond_0
    const/4 v1, 0x0

    .line 182
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->phonelist_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 183
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->phonelist_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 182
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 186
    :cond_1
    iget v3, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_2

    .line 187
    iget v3, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->page_:I

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 190
    :cond_2
    iget v3, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_3

    .line 191
    const/4 v3, 0x3

    iget v4, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->perpage_:I

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 194
    :cond_3
    iget v3, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v6, :cond_4

    .line 195
    iget v3, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->total_:I

    invoke-static {v6, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 198
    :cond_4
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v3

    add-int/2addr v1, v3

    .line 199
    iput v1, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->memoizedSerializedSize:I

    move v2, v1

    .line 200
    .end local v1    # "size":I
    .restart local v2    # "size":I
    goto :goto_0
.end method

.method public getTotal()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->total_:I

    return v0
.end method

.method public hasPage()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 107
    iget v1, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPerpage()Z
    .locals 2

    .prologue
    .line 119
    iget v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->bitField0_:I

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

.method public hasTotal()Z
    .locals 2

    .prologue
    .line 131
    iget v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->bitField0_:I

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
    .line 72
    # getter for: Lcom/oppo/tribune/protobuf/ProductCenterPhoneList;->internal_static_pb_phonelist_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 148
    iget-byte v0, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->memoizedIsInitialized:B

    .line 149
    .local v0, "isInitialized":B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 150
    if-ne v0, v1, :cond_0

    .line 153
    :goto_0
    return v1

    .line 150
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 152
    :cond_1
    iput-byte v1, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->newBuilderForType()Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->newBuilderForType()Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;
    .locals 1

    .prologue
    .line 293
    invoke-static {}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->newBuilder()Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 308
    new-instance v0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$1;)V

    .line 309
    .local v0, "builder":Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->toBuilder()Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->toBuilder()Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;
    .locals 1

    .prologue
    .line 302
    invoke-static {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->newBuilder(Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;)Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist$Builder;

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
    .line 208
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
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 158
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->getSerializedSize()I

    .line 159
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->phonelist_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 160
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->phonelist_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 162
    :cond_0
    iget v1, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 163
    iget v1, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->page_:I

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 165
    :cond_1
    iget v1, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 166
    const/4 v1, 0x3

    iget v2, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->perpage_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 168
    :cond_2
    iget v1, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    .line 169
    iget v1, p0, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->total_:I

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 171
    :cond_3
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelist;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 172
    return-void
.end method
