.class public final Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;
.super Lcom/google/protobuf/GeneratedMessage;
.source "MusicAlbumListProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/MusicAlbumListProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ResourceMusic"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;
    }
.end annotation


# static fields
.field public static final DOWNLOADS_FIELD_NUMBER:I = 0x9

.field public static final FILESIZE_FIELD_NUMBER:I = 0x7

.field public static final FILEURL_FIELD_NUMBER:I = 0x8

.field public static final FORMAT_FIELD_NUMBER:I = 0x4

.field public static final ID_FIELD_NUMBER:I = 0x1

.field public static final NAME_FIELD_NUMBER:I = 0x2

.field public static final RELEASETIME_FIELD_NUMBER:I = 0x6

.field public static final SHARER_FIELD_NUMBER:I = 0x5

.field public static final SINGER_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private downloads_:Ljava/lang/Object;

.field private fileSize_:Ljava/lang/Object;

.field private fileUrl_:Ljava/lang/Object;

.field private format_:Ljava/lang/Object;

.field private id_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private name_:Ljava/lang/Object;

.field private releaseTime_:Ljava/lang/Object;

.field private sharer_:Ljava/lang/Object;

.field private singer_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1211
    new-instance v0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;-><init>(Z)V

    sput-object v0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->defaultInstance:Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;

    .line 1212
    sget-object v0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->defaultInstance:Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->initFields()V

    .line 1213
    return-void
.end method

.method private constructor <init>(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;

    .prologue
    const/4 v0, -0x1

    .line 68
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 389
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->memoizedIsInitialized:B

    .line 433
    iput v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->memoizedSerializedSize:I

    .line 69
    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;Lcom/oppo/tribune/protobuf/MusicAlbumListProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/MusicAlbumListProto$1;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;-><init>(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 71
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 389
    iput-byte v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->memoizedIsInitialized:B

    .line 433
    iput v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->memoizedSerializedSize:I

    .line 72
    return-void
.end method

.method static synthetic access$1002(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->format_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->sharer_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->releaseTime_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->fileSize_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->fileUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->downloads_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;
    .param p1, "x1"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->bitField0_:I

    return p1
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 63
    sget-boolean v0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$702(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;
    .param p1, "x1"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->id_:I

    return p1
.end method

.method static synthetic access$802(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$902(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->singer_:Ljava/lang/Object;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->defaultInstance:Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 85
    # getter for: Lcom/oppo/tribune/protobuf/MusicAlbumListProto;->internal_static_protobuf_ResourceMusic_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getDownloadsBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 366
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->downloads_:Ljava/lang/Object;

    .line 367
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 368
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 370
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->downloads_:Ljava/lang/Object;

    .line 373
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

.method private getFileSizeBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 298
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->fileSize_:Ljava/lang/Object;

    .line 299
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 300
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 302
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->fileSize_:Ljava/lang/Object;

    .line 305
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

.method private getFileUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 332
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->fileUrl_:Ljava/lang/Object;

    .line 333
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 334
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 336
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->fileUrl_:Ljava/lang/Object;

    .line 339
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

.method private getFormatBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 196
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->format_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->format_:Ljava/lang/Object;

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

.method private getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 128
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->name_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->name_:Ljava/lang/Object;

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

.method private getReleaseTimeBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 264
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->releaseTime_:Ljava/lang/Object;

    .line 265
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 266
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 268
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->releaseTime_:Ljava/lang/Object;

    .line 271
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

.method private getSharerBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 230
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->sharer_:Ljava/lang/Object;

    .line 231
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 232
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 234
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->sharer_:Ljava/lang/Object;

    .line 237
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

.method private getSingerBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 162
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->singer_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->singer_:Ljava/lang/Object;

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

.method private initFields()V
    .locals 1

    .prologue
    .line 378
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->id_:I

    .line 379
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->name_:Ljava/lang/Object;

    .line 380
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->singer_:Ljava/lang/Object;

    .line 381
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->format_:Ljava/lang/Object;

    .line 382
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->sharer_:Ljava/lang/Object;

    .line 383
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->releaseTime_:Ljava/lang/Object;

    .line 384
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->fileSize_:Ljava/lang/Object;

    .line 385
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->fileUrl_:Ljava/lang/Object;

    .line 386
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->downloads_:Ljava/lang/Object;

    .line 387
    return-void
.end method

.method public static newBuilder()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;
    .locals 1

    .prologue
    .line 568
    # invokes: Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->create()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;
    invoke-static {}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->access$300()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;

    .prologue
    .line 577
    invoke-static {}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->newBuilder()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 533
    invoke-static {}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->newBuilder()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;

    move-result-object v0

    .line 534
    .local v0, "builder":Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;
    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 535
    # invokes: Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->access$200(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;

    move-result-object v1

    .line 537
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 545
    invoke-static {}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->newBuilder()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;

    move-result-object v0

    .line 546
    .local v0, "builder":Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 547
    # invokes: Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->access$200(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;

    move-result-object v1

    .line 549
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 493
    invoke-static {}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->newBuilder()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->access$200(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 500
    invoke-static {}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->newBuilder()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->access$200(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 556
    invoke-static {}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->newBuilder()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->access$200(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 563
    invoke-static {}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->newBuilder()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;

    move-result-object v0

    # invokes: Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->access$200(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 520
    invoke-static {}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->newBuilder()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->access$200(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 527
    invoke-static {}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->newBuilder()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->access$200(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 507
    invoke-static {}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->newBuilder()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->access$200(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 514
    invoke-static {}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->newBuilder()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;

    # invokes: Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;->access$200(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->defaultInstance:Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;

    return-object v0
.end method

.method public getDownloads()Ljava/lang/String;
    .locals 4

    .prologue
    .line 352
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->downloads_:Ljava/lang/Object;

    .line 353
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 354
    check-cast v1, Ljava/lang/String;

    .line 361
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 356
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 357
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 358
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 359
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->downloads_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 361
    goto :goto_0
.end method

.method public getFileSize()Ljava/lang/String;
    .locals 4

    .prologue
    .line 284
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->fileSize_:Ljava/lang/Object;

    .line 285
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 286
    check-cast v1, Ljava/lang/String;

    .line 293
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 288
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 289
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 290
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 291
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->fileSize_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 293
    goto :goto_0
.end method

.method public getFileUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 318
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->fileUrl_:Ljava/lang/Object;

    .line 319
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 320
    check-cast v1, Ljava/lang/String;

    .line 327
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 322
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 323
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 324
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 325
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->fileUrl_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 327
    goto :goto_0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 4

    .prologue
    .line 182
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->format_:Ljava/lang/Object;

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
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->format_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 191
    goto :goto_0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->id_:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 114
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->name_:Ljava/lang/Object;

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
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->name_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 123
    goto :goto_0
.end method

.method public getReleaseTime()Ljava/lang/String;
    .locals 4

    .prologue
    .line 250
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->releaseTime_:Ljava/lang/Object;

    .line 251
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 252
    check-cast v1, Ljava/lang/String;

    .line 259
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 254
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 255
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 256
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 257
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->releaseTime_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 259
    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 436
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->memoizedSerializedSize:I

    .line 437
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 479
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 440
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 441
    iget v2, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 442
    iget v2, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->id_:I

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 445
    :cond_1
    iget v2, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 446
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 449
    :cond_2
    iget v2, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_3

    .line 450
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->getSingerBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 453
    :cond_3
    iget v2, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v6, :cond_4

    .line 454
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->getFormatBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 457
    :cond_4
    iget v2, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    .line 458
    const/4 v2, 0x5

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->getSharerBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 461
    :cond_5
    iget v2, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_6

    .line 462
    const/4 v2, 0x6

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->getReleaseTimeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 465
    :cond_6
    iget v2, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_7

    .line 466
    const/4 v2, 0x7

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->getFileSizeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 469
    :cond_7
    iget v2, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_8

    .line 470
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->getFileUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 473
    :cond_8
    iget v2, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_9

    .line 474
    const/16 v2, 0x9

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->getDownloadsBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 477
    :cond_9
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 478
    iput v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->memoizedSerializedSize:I

    move v1, v0

    .line 479
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto/16 :goto_0
.end method

.method public getSharer()Ljava/lang/String;
    .locals 4

    .prologue
    .line 216
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->sharer_:Ljava/lang/Object;

    .line 217
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 218
    check-cast v1, Ljava/lang/String;

    .line 225
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 220
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 221
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 222
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 223
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->sharer_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 225
    goto :goto_0
.end method

.method public getSinger()Ljava/lang/String;
    .locals 4

    .prologue
    .line 148
    iget-object v1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->singer_:Ljava/lang/Object;

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
    iput-object v2, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->singer_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 157
    goto :goto_0
.end method

.method public hasDownloads()Z
    .locals 2

    .prologue
    .line 348
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->bitField0_:I

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

.method public hasFileSize()Z
    .locals 2

    .prologue
    .line 280
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->bitField0_:I

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

.method public hasFileUrl()Z
    .locals 2

    .prologue
    .line 314
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->bitField0_:I

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

.method public hasFormat()Z
    .locals 2

    .prologue
    .line 178
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->bitField0_:I

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

.method public hasId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 98
    iget v1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasName()Z
    .locals 2

    .prologue
    .line 110
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->bitField0_:I

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

.method public hasReleaseTime()Z
    .locals 2

    .prologue
    .line 246
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->bitField0_:I

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

.method public hasSharer()Z
    .locals 2

    .prologue
    .line 212
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->bitField0_:I

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

.method public hasSinger()Z
    .locals 2

    .prologue
    .line 144
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->bitField0_:I

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
    .line 89
    # getter for: Lcom/oppo/tribune/protobuf/MusicAlbumListProto;->internal_static_protobuf_ResourceMusic_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 392
    iget-byte v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->memoizedIsInitialized:B

    .line 393
    .local v0, "isInitialized":B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 394
    if-ne v0, v1, :cond_0

    .line 397
    :goto_0
    return v1

    .line 394
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 396
    :cond_1
    iput-byte v1, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->newBuilderForType()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->newBuilderForType()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;
    .locals 1

    .prologue
    .line 572
    invoke-static {}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->newBuilder()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 587
    new-instance v0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/MusicAlbumListProto$1;)V

    .line 588
    .local v0, "builder":Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->toBuilder()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->toBuilder()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;
    .locals 1

    .prologue
    .line 581
    invoke-static {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->newBuilder(Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;

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
    .line 487
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

    .line 402
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->getSerializedSize()I

    .line 403
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 404
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->id_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 406
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 407
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 409
    :cond_1
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 410
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->getSingerBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 412
    :cond_2
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_3

    .line 413
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->getFormatBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 415
    :cond_3
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 416
    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->getSharerBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 418
    :cond_4
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 419
    const/4 v0, 0x6

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->getReleaseTimeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 421
    :cond_5
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    .line 422
    const/4 v0, 0x7

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->getFileSizeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 424
    :cond_6
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_7

    .line 425
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->getFileUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 427
    :cond_7
    iget v0, p0, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_8

    .line 428
    const/16 v0, 0x9

    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->getDownloadsBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 430
    :cond_8
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 431
    return-void
.end method
