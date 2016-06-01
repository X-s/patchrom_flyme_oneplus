.class public final Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;
.super Lcom/google/protobuf/GeneratedMessage;
.source "VisitRecordProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecordOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/VisitRecordProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "pb_visitrecord"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;
    }
.end annotation


# static fields
.field public static final DAYVIEW_FIELD_NUMBER:I = 0x2

.field public static final PAGEVIEW_FIELD_NUMBER:I = 0x1

.field public static final USERLIST_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private dayview_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private pageview_:I

.field private userlist_:Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 611
    new-instance v0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;-><init>(Z)V

    sput-object v0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;->defaultInstance:Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;

    .line 612
    sget-object v0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;->defaultInstance:Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;->initFields()V

    .line 613
    return-void
.end method

.method private constructor <init>(Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;

    .prologue
    const/4 v0, -0x1

    .line 40
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 112
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;->memoizedIsInitialized:B

    .line 138
    iput v0, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;->memoizedSerializedSize:I

    .line 41
    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;Lcom/oppo/tribune/protobuf/VisitRecordProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/VisitRecordProto$1;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;-><init>(Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 43
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 112
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;->memoizedIsInitialized:B

    .line 138
    iput v0, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;->memoizedSerializedSize:I

    .line 44
    return-void
.end method

.method static synthetic access$1002(Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;
    .param p1, "x1"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;->bitField0_:I

    return p1
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 35
    sget-boolean v0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$702(Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;
    .param p1, "x1"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;->pageview_:I

    return p1
.end method

.method static synthetic access$802(Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;
    .param p1, "x1"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;->dayview_:I

    return p1
.end method

.method static synthetic access$902(Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;)Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;
    .param p1, "x1"    # Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;->userlist_:Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;->defaultInstance:Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 57
    # getter for: Lcom/oppo/tribune/protobuf/VisitRecordProto;->internal_static_pb_visitrecord_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/VisitRecordProto;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 106
    iput v0, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;->pageview_:I

    .line 107
    iput v0, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;->dayview_:I

    .line 108
    invoke-static {}, Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;->getDefaultInstance()Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;->userlist_:Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;

    .line 110
    return-void
.end method

.method public static newBuilder()Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;
    .locals 1

    .prologue
    .line 249
    # invokes: Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->create()Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;
    invoke-static {}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->access$300()Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;)Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;

    .prologue
    .line 258
    invoke-static {}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;->newBuilder()Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;)Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 214
    invoke-static {}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;->newBuilder()Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;

    move-result-object v0

    .line 215
    .local v0, "builder":Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;
    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 216
    # invokes: Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->access$200(Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;)Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;

    move-result-object v1

    .line 218
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 226
    invoke-static {}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;->newBuilder()Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;

    move-result-object v0

    .line 227
    .local v0, "builder":Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    # invokes: Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->access$200(Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;)Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;

    move-result-object v1

    .line 230
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 174
    invoke-static {}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;->newBuilder()Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->access$200(Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;)Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 181
    invoke-static {}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;->newBuilder()Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->access$200(Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;)Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 237
    invoke-static {}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;->newBuilder()Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->access$200(Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;)Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 244
    invoke-static {}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;->newBuilder()Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;

    move-result-object v0

    # invokes: Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->access$200(Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;)Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 201
    invoke-static {}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;->newBuilder()Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->access$200(Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;)Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 208
    invoke-static {}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;->newBuilder()Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->access$200(Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;)Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 188
    invoke-static {}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;->newBuilder()Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->access$200(Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;)Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 195
    invoke-static {}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;->newBuilder()Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;->access$200(Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;)Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDayview()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;->dayview_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;->defaultInstance:Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;

    return-object v0
.end method

.method public getPageview()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;->pageview_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 141
    iget v0, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;->memoizedSerializedSize:I

    .line 142
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 160
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 145
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 146
    iget v2, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 147
    iget v2, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;->pageview_:I

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 150
    :cond_1
    iget v2, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 151
    iget v2, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;->dayview_:I

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 154
    :cond_2
    iget v2, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 155
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;->userlist_:Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 158
    :cond_3
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 159
    iput v0, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;->memoizedSerializedSize:I

    move v1, v0

    .line 160
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto :goto_0
.end method

.method public getUserlist()Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;->userlist_:Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;

    return-object v0
.end method

.method public getUserlistOrBuilder()Lcom/oppo/tribune/protobuf/UserListProto$pb_userlistOrBuilder;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;->userlist_:Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;

    return-object v0
.end method

.method public hasDayview()Z
    .locals 2

    .prologue
    .line 82
    iget v0, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;->bitField0_:I

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

.method public hasPageview()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 70
    iget v1, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUserlist()Z
    .locals 2

    .prologue
    .line 94
    iget v0, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;->bitField0_:I

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
    .line 61
    # getter for: Lcom/oppo/tribune/protobuf/VisitRecordProto;->internal_static_pb_visitrecord_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/VisitRecordProto;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 115
    iget-byte v0, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;->memoizedIsInitialized:B

    .line 116
    .local v0, "isInitialized":B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 117
    if-ne v0, v1, :cond_0

    .line 120
    :goto_0
    return v1

    .line 117
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 119
    :cond_1
    iput-byte v1, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;->newBuilderForType()Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;->newBuilderForType()Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;
    .locals 1

    .prologue
    .line 253
    invoke-static {}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;->newBuilder()Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 268
    new-instance v0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/VisitRecordProto$1;)V

    .line 269
    .local v0, "builder":Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;->toBuilder()Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;->toBuilder()Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;
    .locals 1

    .prologue
    .line 262
    invoke-static {p0}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;->newBuilder(Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;)Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord$Builder;

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
    .line 168
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 125
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;->getSerializedSize()I

    .line 126
    iget v0, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 127
    iget v0, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;->pageview_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 129
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 130
    iget v0, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;->dayview_:I

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 132
    :cond_1
    iget v0, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 133
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;->userlist_:Lcom/oppo/tribune/protobuf/UserListProto$pb_userlist;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 135
    :cond_2
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/VisitRecordProto$pb_visitrecord;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 136
    return-void
.end method
