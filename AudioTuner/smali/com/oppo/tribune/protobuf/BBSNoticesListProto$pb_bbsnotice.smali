.class public final Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;
.super Lcom/google/protobuf/GeneratedMessage;
.source "BBSNoticesListProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/BBSNoticesListProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "pb_bbsnotice"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;
    }
.end annotation


# static fields
.field public static final AUTHORID_FIELD_NUMBER:I = 0x5

.field public static final AVATAR_FIELD_NUMBER:I = 0x2

.field public static final DATE_FIELD_NUMBER:I = 0x3

.field public static final FLOOR_FIELD_NUMBER:I = 0x9

.field public static final KEY_FIELD_NUMBER:I = 0x1

.field public static final NOTE_FIELD_NUMBER:I = 0x4

.field public static final PID_FIELD_NUMBER:I = 0x8

.field public static final TID_FIELD_NUMBER:I = 0x7

.field public static final TYPE_FIELD_NUMBER:I = 0x6

.field private static final defaultInstance:Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;

.field private static final serialVersionUID:J


# instance fields
.field private authorid_:I

.field private avatar_:Ljava/lang/Object;

.field private bitField0_:I

.field private date_:Ljava/lang/Object;

.field private floor_:I

.field private key_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private note_:Ljava/lang/Object;

.field private pid_:I

.field private tid_:I

.field private type_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1064
    new-instance v0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;-><init>(Z)V

    sput-object v0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->defaultInstance:Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;

    .line 1065
    sget-object v0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->defaultInstance:Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->initFields()V

    .line 1066
    return-void
.end method

.method private constructor <init>(Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;

    .prologue
    const/4 v0, -0x1

    .line 68
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 279
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->memoizedIsInitialized:B

    .line 347
    iput v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->memoizedSerializedSize:I

    .line 69
    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;Lcom/oppo/tribune/protobuf/BBSNoticesListProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/BBSNoticesListProto$1;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;-><init>(Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 71
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 279
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->memoizedIsInitialized:B

    .line 347
    iput v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->memoizedSerializedSize:I

    .line 72
    return-void
.end method

.method static synthetic access$1002(Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->note_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;
    .param p1, "x1"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->authorid_:I

    return p1
.end method

.method static synthetic access$1202(Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;
    .param p1, "x1"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->type_:I

    return p1
.end method

.method static synthetic access$1302(Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;
    .param p1, "x1"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->tid_:I

    return p1
.end method

.method static synthetic access$1402(Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;
    .param p1, "x1"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->pid_:I

    return p1
.end method

.method static synthetic access$1502(Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;
    .param p1, "x1"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->floor_:I

    return p1
.end method

.method static synthetic access$1602(Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;
    .param p1, "x1"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->bitField0_:I

    return p1
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 63
    sget-boolean v0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$702(Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;
    .param p1, "x1"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->key_:I

    return p1
.end method

.method static synthetic access$802(Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->avatar_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$902(Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->date_:Ljava/lang/Object;

    return-object p1
.end method

.method private getAvatarBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 128
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->avatar_:Ljava/lang/Object;

    .line 129
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 130
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 132
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->avatar_:Ljava/lang/Object;

    .line 135
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

.method private getDateBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 162
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->date_:Ljava/lang/Object;

    .line 163
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 164
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 166
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->date_:Ljava/lang/Object;

    .line 169
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

.method public static getDefaultInstance()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->defaultInstance:Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 85
    # getter for: Lcom/oppo/tribune/protobuf/BBSNoticesListProto;->internal_static_pb_bbsnotice_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getNoteBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 196
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->note_:Ljava/lang/Object;

    .line 197
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 198
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 200
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->note_:Ljava/lang/Object;

    .line 203
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

    .line 268
    iput v1, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->key_:I

    .line 269
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->avatar_:Ljava/lang/Object;

    .line 270
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->date_:Ljava/lang/Object;

    .line 271
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->note_:Ljava/lang/Object;

    .line 272
    iput v1, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->authorid_:I

    .line 273
    iput v1, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->type_:I

    .line 274
    iput v1, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->tid_:I

    .line 275
    iput v1, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->pid_:I

    .line 276
    iput v1, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->floor_:I

    .line 277
    return-void
.end method

.method public static newBuilder()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;
    .locals 1

    .prologue
    .line 482
    # invokes: Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->create()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;
    invoke-static {}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->access$300()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;

    .prologue
    .line 491
    invoke-static {}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->newBuilder()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 447
    invoke-static {}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->newBuilder()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;

    move-result-object v0

    .line 448
    .local v0, "builder":Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;
    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 449
    # invokes: Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->access$200(Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;

    move-result-object v1

    .line 451
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 459
    invoke-static {}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->newBuilder()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;

    move-result-object v0

    .line 460
    .local v0, "builder":Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 461
    # invokes: Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->access$200(Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;

    move-result-object v1

    .line 463
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 407
    invoke-static {}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->newBuilder()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->access$200(Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 414
    invoke-static {}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->newBuilder()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->access$200(Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 470
    invoke-static {}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->newBuilder()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->access$200(Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 477
    invoke-static {}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->newBuilder()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;

    move-result-object v0

    # invokes: Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->access$200(Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 434
    invoke-static {}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->newBuilder()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->access$200(Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 441
    invoke-static {}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->newBuilder()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->access$200(Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 421
    invoke-static {}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->newBuilder()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->access$200(Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 428
    invoke-static {}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->newBuilder()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;->access$200(Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAuthorid()I
    .locals 1

    .prologue
    .line 216
    iget v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->authorid_:I

    return v0
.end method

.method public getAvatar()Ljava/lang/String;
    .locals 4

    .prologue
    .line 114
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->avatar_:Ljava/lang/Object;

    .line 115
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 116
    check-cast v1, Ljava/lang/String;

    .line 123
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 118
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 119
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 121
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->avatar_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 123
    goto :goto_0
.end method

.method public getDate()Ljava/lang/String;
    .locals 4

    .prologue
    .line 148
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->date_:Ljava/lang/Object;

    .line 149
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 150
    check-cast v1, Ljava/lang/String;

    .line 157
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 152
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 153
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 154
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 155
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->date_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 157
    goto :goto_0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->defaultInstance:Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;

    return-object v0
.end method

.method public getFloor()I
    .locals 1

    .prologue
    .line 264
    iget v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->floor_:I

    return v0
.end method

.method public getKey()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->key_:I

    return v0
.end method

.method public getNote()Ljava/lang/String;
    .locals 4

    .prologue
    .line 182
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->note_:Ljava/lang/Object;

    .line 183
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 184
    check-cast v1, Ljava/lang/String;

    .line 191
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 186
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 187
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 188
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 189
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->note_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 191
    goto :goto_0
.end method

.method public getPid()I
    .locals 1

    .prologue
    .line 252
    iget v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->pid_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 350
    iget v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->memoizedSerializedSize:I

    .line 351
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 393
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 354
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 355
    iget v2, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 356
    iget v2, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->key_:I

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 359
    :cond_1
    iget v2, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 360
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->getAvatarBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 363
    :cond_2
    iget v2, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_3

    .line 364
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->getDateBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 367
    :cond_3
    iget v2, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v6, :cond_4

    .line 368
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->getNoteBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 371
    :cond_4
    iget v2, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    .line 372
    const/4 v2, 0x5

    iget v3, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->authorid_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 375
    :cond_5
    iget v2, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_6

    .line 376
    const/4 v2, 0x6

    iget v3, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->type_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 379
    :cond_6
    iget v2, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_7

    .line 380
    const/4 v2, 0x7

    iget v3, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->tid_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 383
    :cond_7
    iget v2, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_8

    .line 384
    iget v2, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->pid_:I

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 387
    :cond_8
    iget v2, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_9

    .line 388
    const/16 v2, 0x9

    iget v3, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->floor_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 391
    :cond_9
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 392
    iput v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->memoizedSerializedSize:I

    move v1, v0

    .line 393
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto/16 :goto_0
.end method

.method public getTid()I
    .locals 1

    .prologue
    .line 240
    iget v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->tid_:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 228
    iget v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->type_:I

    return v0
.end method

.method public hasAuthorid()Z
    .locals 2

    .prologue
    .line 212
    iget v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->bitField0_:I

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

.method public hasAvatar()Z
    .locals 2

    .prologue
    .line 110
    iget v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->bitField0_:I

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

.method public hasDate()Z
    .locals 2

    .prologue
    .line 144
    iget v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->bitField0_:I

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

.method public hasFloor()Z
    .locals 2

    .prologue
    .line 260
    iget v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->bitField0_:I

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

.method public hasKey()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 98
    iget v1, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNote()Z
    .locals 2

    .prologue
    .line 178
    iget v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->bitField0_:I

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

.method public hasPid()Z
    .locals 2

    .prologue
    .line 248
    iget v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->bitField0_:I

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

.method public hasTid()Z
    .locals 2

    .prologue
    .line 236
    iget v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->bitField0_:I

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

.method public hasType()Z
    .locals 2

    .prologue
    .line 224
    iget v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->bitField0_:I

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
    .line 89
    # getter for: Lcom/oppo/tribune/protobuf/BBSNoticesListProto;->internal_static_pb_bbsnotice_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 282
    iget-byte v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->memoizedIsInitialized:B

    .line 283
    .local v0, "isInitialized":B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 284
    if-ne v0, v1, :cond_0

    :goto_0
    move v2, v1

    .line 311
    :goto_1
    return v2

    :cond_0
    move v1, v2

    .line 284
    goto :goto_0

    .line 286
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->hasKey()Z

    move-result v3

    if-nez v3, :cond_2

    .line 287
    iput-byte v2, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->memoizedIsInitialized:B

    goto :goto_1

    .line 290
    :cond_2
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->hasAvatar()Z

    move-result v3

    if-nez v3, :cond_3

    .line 291
    iput-byte v2, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->memoizedIsInitialized:B

    goto :goto_1

    .line 294
    :cond_3
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->hasType()Z

    move-result v3

    if-nez v3, :cond_4

    .line 295
    iput-byte v2, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->memoizedIsInitialized:B

    goto :goto_1

    .line 298
    :cond_4
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->hasTid()Z

    move-result v3

    if-nez v3, :cond_5

    .line 299
    iput-byte v2, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->memoizedIsInitialized:B

    goto :goto_1

    .line 302
    :cond_5
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->hasPid()Z

    move-result v3

    if-nez v3, :cond_6

    .line 303
    iput-byte v2, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->memoizedIsInitialized:B

    goto :goto_1

    .line 306
    :cond_6
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->hasFloor()Z

    move-result v3

    if-nez v3, :cond_7

    .line 307
    iput-byte v2, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->memoizedIsInitialized:B

    goto :goto_1

    .line 310
    :cond_7
    iput-byte v1, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->memoizedIsInitialized:B

    move v2, v1

    .line 311
    goto :goto_1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->newBuilderForType()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->newBuilderForType()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;
    .locals 1

    .prologue
    .line 486
    invoke-static {}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->newBuilder()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 501
    new-instance v0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/BBSNoticesListProto$1;)V

    .line 502
    .local v0, "builder":Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->toBuilder()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->toBuilder()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;
    .locals 1

    .prologue
    .line 495
    invoke-static {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->newBuilder(Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice$Builder;

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
    .line 401
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

    .line 316
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->getSerializedSize()I

    .line 317
    iget v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 318
    iget v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->key_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 320
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 321
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->getAvatarBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 323
    :cond_1
    iget v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 324
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->getDateBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 326
    :cond_2
    iget v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_3

    .line 327
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->getNoteBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 329
    :cond_3
    iget v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 330
    const/4 v0, 0x5

    iget v1, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->authorid_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 332
    :cond_4
    iget v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 333
    const/4 v0, 0x6

    iget v1, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->type_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 335
    :cond_5
    iget v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    .line 336
    const/4 v0, 0x7

    iget v1, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->tid_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 338
    :cond_6
    iget v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_7

    .line 339
    iget v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->pid_:I

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 341
    :cond_7
    iget v0, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_8

    .line 342
    const/16 v0, 0x9

    iget v1, p0, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->floor_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 344
    :cond_8
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 345
    return-void
.end method
