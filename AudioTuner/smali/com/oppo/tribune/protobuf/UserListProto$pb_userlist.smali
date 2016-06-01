.class public final Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;
.super Lcom/google/protobuf/GeneratedMessage;
.source "UserListProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/UserListProto$pb_userlistOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/UserListProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "pb_userlist"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;
    }
.end annotation


# static fields
.field public static final PAGE_FIELD_NUMBER:I = 0x2

.field public static final PERPAGE_FIELD_NUMBER:I = 0x3

.field public static final TOTAL_FIELD_NUMBER:I = 0x4

.field public static final USERLIST_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private page_:I

.field private perpage_:I

.field private total_:I

.field private userlist_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 816
    new-instance v0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;-><init>(Z)V

    sput-object v0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->defaultInstance:Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;

    .line 817
    sget-object v0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->defaultInstance:Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->initFields()V

    .line 818
    return-void
.end method

.method private constructor <init>(Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;

    .prologue
    const/4 v0, -0x1

    .line 50
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 144
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->memoizedIsInitialized:B

    .line 173
    iput v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->memoizedSerializedSize:I

    .line 51
    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;Lcom/oppo/tribune/protobuf/UserListProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/UserListProto$1;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;-><init>(Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 53
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 144
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->memoizedIsInitialized:B

    .line 173
    iput v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->memoizedSerializedSize:I

    .line 54
    return-void
.end method

.method static synthetic access$1002(Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;
    .param p1, "x1"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->total_:I

    return p1
.end method

.method static synthetic access$1102(Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;
    .param p1, "x1"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->bitField0_:I

    return p1
.end method

.method static synthetic access$1200()Z
    .locals 1

    .prologue
    .line 45
    sget-boolean v0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 45
    sget-boolean v0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$700(Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->userlist_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$702(Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->userlist_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$802(Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;
    .param p1, "x1"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->page_:I

    return p1
.end method

.method static synthetic access$902(Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;
    .param p1, "x1"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->perpage_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->defaultInstance:Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 67
    # getter for: Lcom/oppo/tribune/protobuf/UserListProto;->internal_static_pb_userlist_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserListProto;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 138
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->userlist_:Ljava/util/List;

    .line 139
    iput v1, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->page_:I

    .line 140
    iput v1, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->perpage_:I

    .line 141
    iput v1, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->total_:I

    .line 142
    return-void
.end method

.method public static newBuilder()Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;
    .locals 1

    .prologue
    .line 288
    # invokes: Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->create()Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->access$300()Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;)Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;

    .prologue
    .line 297
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->newBuilder()Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;)Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 253
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->newBuilder()Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;

    move-result-object v0

    .line 254
    .local v0, "builder":Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;
    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 255
    # invokes: Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->access$200(Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;)Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;

    move-result-object v1

    .line 257
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 265
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->newBuilder()Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;

    move-result-object v0

    .line 266
    .local v0, "builder":Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 267
    # invokes: Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->access$200(Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;)Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;

    move-result-object v1

    .line 269
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 213
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->newBuilder()Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->access$200(Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;)Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 220
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->newBuilder()Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->access$200(Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;)Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 276
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->newBuilder()Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->access$200(Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;)Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 283
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->newBuilder()Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;

    move-result-object v0

    # invokes: Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->access$200(Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;)Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 240
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->newBuilder()Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->access$200(Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;)Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 247
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->newBuilder()Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->access$200(Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;)Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 227
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->newBuilder()Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->access$200(Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;)Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 234
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->newBuilder()Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;->access$200(Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;)Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->defaultInstance:Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;

    return-object v0
.end method

.method public getPage()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->page_:I

    return v0
.end method

.method public getPerpage()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->perpage_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 176
    iget v1, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->memoizedSerializedSize:I

    .line 177
    .local v1, "size":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v2, v1

    .line 199
    .end local v1    # "size":I
    .local v2, "size":I
    :goto_0
    return v2

    .line 180
    .end local v2    # "size":I
    .restart local v1    # "size":I
    :cond_0
    const/4 v1, 0x0

    .line 181
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->userlist_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 182
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->userlist_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 181
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 185
    :cond_1
    iget v3, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_2

    .line 186
    iget v3, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->page_:I

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 189
    :cond_2
    iget v3, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_3

    .line 190
    const/4 v3, 0x3

    iget v4, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->perpage_:I

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 193
    :cond_3
    iget v3, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v6, :cond_4

    .line 194
    iget v3, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->total_:I

    invoke-static {v6, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 197
    :cond_4
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v3

    add-int/2addr v1, v3

    .line 198
    iput v1, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->memoizedSerializedSize:I

    move v2, v1

    .line 199
    .end local v1    # "size":I
    .restart local v2    # "size":I
    goto :goto_0
.end method

.method public getTotal()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->total_:I

    return v0
.end method

.method public getUserlist(I)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 93
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->userlist_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;

    return-object v0
.end method

.method public getUserlistCount()I
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->userlist_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getUserlistList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->userlist_:Ljava/util/List;

    return-object v0
.end method

.method public getUserlistOrBuilder(I)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_userOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 98
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->userlist_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/UserInfoProto$pb_userOrBuilder;

    return-object v0
.end method

.method public getUserlistOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/oppo/tribune/protobuf/UserInfoProto$pb_userOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->userlist_:Ljava/util/List;

    return-object v0
.end method

.method public hasPage()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 106
    iget v1, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->bitField0_:I

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
    .line 118
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->bitField0_:I

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
    .line 130
    iget v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->bitField0_:I

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
    .line 71
    # getter for: Lcom/oppo/tribune/protobuf/UserListProto;->internal_static_pb_userlist_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserListProto;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 147
    iget-byte v0, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->memoizedIsInitialized:B

    .line 148
    .local v0, "isInitialized":B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 149
    if-ne v0, v1, :cond_0

    .line 152
    :goto_0
    return v1

    .line 149
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 151
    :cond_1
    iput-byte v1, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->newBuilderForType()Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->newBuilderForType()Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;
    .locals 1

    .prologue
    .line 292
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->newBuilder()Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 307
    new-instance v0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/UserListProto$1;)V

    .line 308
    .local v0, "builder":Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->toBuilder()Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->toBuilder()Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;
    .locals 1

    .prologue
    .line 301
    invoke-static {p0}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->newBuilder(Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;)Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist$Builder;

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
    .line 207
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

    .line 157
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->getSerializedSize()I

    .line 158
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->userlist_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 159
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->userlist_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 161
    :cond_0
    iget v1, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 162
    iget v1, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->page_:I

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 164
    :cond_1
    iget v1, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 165
    const/4 v1, 0x3

    iget v2, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->perpage_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 167
    :cond_2
    iget v1, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    .line 168
    iget v1, p0, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->total_:I

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 170
    :cond_3
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 171
    return-void
.end method
