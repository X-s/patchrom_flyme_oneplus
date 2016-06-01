.class final Lcom/oppo/tribune/protobuf/MusicAlbumListProto$1;
.super Ljava/lang/Object;
.source "MusicAlbumListProto.java"

# interfaces
.implements Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/MusicAlbumListProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 3435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public assignDescriptors(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/ExtensionRegistry;
    .locals 10
    .param p1, "root"    # Lcom/google/protobuf/Descriptors$FileDescriptor;

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3438
    # setter for: Lcom/oppo/tribune/protobuf/MusicAlbumListProto;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto;->access$4802(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 3439
    invoke-static {}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    # setter for: Lcom/oppo/tribune/protobuf/MusicAlbumListProto;->internal_static_protobuf_ResourceMusic_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto;->access$002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 3441
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    # getter for: Lcom/oppo/tribune/protobuf/MusicAlbumListProto;->internal_static_protobuf_ResourceMusic_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Id"

    aput-object v3, v2, v5

    const-string v3, "Name"

    aput-object v3, v2, v6

    const-string v3, "Singer"

    aput-object v3, v2, v7

    const-string v3, "Format"

    aput-object v3, v2, v8

    const-string v3, "Sharer"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "ReleaseTime"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "FileSize"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "FileUrl"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "Downloads"

    aput-object v4, v2, v3

    const-class v3, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;

    const-class v4, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    # setter for: Lcom/oppo/tribune/protobuf/MusicAlbumListProto;->internal_static_protobuf_ResourceMusic_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto;->access$102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 3448
    invoke-static {}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    # setter for: Lcom/oppo/tribune/protobuf/MusicAlbumListProto;->internal_static_protobuf_ResourceMusicAlbum_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto;->access$1702(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 3450
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    # getter for: Lcom/oppo/tribune/protobuf/MusicAlbumListProto;->internal_static_protobuf_ResourceMusicAlbum_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto;->access$1700()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Id"

    aput-object v3, v2, v5

    const-string v3, "Name"

    aput-object v3, v2, v6

    const-string v3, "Sharer"

    aput-object v3, v2, v7

    const-string v3, "ReleaseTime"

    aput-object v3, v2, v8

    const-string v3, "Description"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "CoverUrl"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "Musiclist"

    aput-object v4, v2, v3

    const-class v3, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;

    const-class v4, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    # setter for: Lcom/oppo/tribune/protobuf/MusicAlbumListProto;->internal_static_protobuf_ResourceMusicAlbum_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto;->access$1802(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 3457
    invoke-static {}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    # setter for: Lcom/oppo/tribune/protobuf/MusicAlbumListProto;->internal_static_protobuf_ResourceAlbumList_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto;->access$3302(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 3459
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    # getter for: Lcom/oppo/tribune/protobuf/MusicAlbumListProto;->internal_static_protobuf_ResourceAlbumList_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto;->access$3300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Label"

    aput-object v3, v2, v5

    const-string v3, "Id"

    aput-object v3, v2, v6

    const-string v3, "Total"

    aput-object v3, v2, v7

    const-string v3, "Perpage"

    aput-object v3, v2, v8

    const-string v3, "Curpage"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "Albumlist"

    aput-object v4, v2, v3

    const-class v3, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList;

    const-class v4, Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumList$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    # setter for: Lcom/oppo/tribune/protobuf/MusicAlbumListProto;->internal_static_protobuf_ResourceAlbumList_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/MusicAlbumListProto;->access$3402(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 3465
    const/4 v0, 0x0

    return-object v0
.end method
