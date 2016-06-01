.class final Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$1;
.super Ljava/lang/Object;
.source "ResAppAlbumNetProto.java"

# interfaces
.implements Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 5478
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

    .line 5481
    # setter for: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto;->access$7402(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 5482
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    # setter for: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto;->internal_static_protobuf_ResourceApkShotPic_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto;->access$002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 5484
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    # getter for: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto;->internal_static_protobuf_ResourceApkShotPic_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "Small"

    aput-object v3, v2, v5

    const-string v3, "Middle"

    aput-object v3, v2, v6

    const-string v3, "Big"

    aput-object v3, v2, v7

    const-class v3, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkShotPic;

    const-class v4, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkShotPic$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    # setter for: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto;->internal_static_protobuf_ResourceApkShotPic_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto;->access$102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 5489
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    # setter for: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto;->internal_static_protobuf_ResourceApk_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto;->access$1102(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 5491
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    # getter for: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto;->internal_static_protobuf_ResourceApk_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto;->access$1100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/16 v2, 0x16

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Id"

    aput-object v3, v2, v5

    const-string v3, "Name"

    aput-object v3, v2, v6

    const-string v3, "Package"

    aput-object v3, v2, v7

    const-string v3, "VersionName"

    aput-object v3, v2, v8

    const-string v3, "VersionNumber"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "Description"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "Author"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "ReleaseTime"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "Filesize"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "Downloads"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "Views"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "Fileurl"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "Icon"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "ShotPic"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "ApkType"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "Praise"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "Poor"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "NearmeId"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "Ext"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "Gamedataurl"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string v4, "Gamedatasize"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string v4, "Cid"

    aput-object v4, v2, v3

    const-class v3, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk;

    const-class v4, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApk$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    # setter for: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto;->internal_static_protobuf_ResourceApk_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto;->access$1202(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 5502
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    # setter for: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto;->internal_static_protobuf_ResourceApkAlbum_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto;->access$4202(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 5504
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    # getter for: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto;->internal_static_protobuf_ResourceApkAlbum_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto;->access$4200()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Id"

    aput-object v3, v2, v5

    const-string v3, "Name"

    aput-object v3, v2, v6

    const-string v3, "Title"

    aput-object v3, v2, v7

    const-string v3, "Author"

    aput-object v3, v2, v8

    const-string v3, "Mcimg"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "Releasetime"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "Apks"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "Detail"

    aput-object v4, v2, v3

    const-class v3, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum;

    const-class v4, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbum$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    # setter for: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto;->internal_static_protobuf_ResourceApkAlbum_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto;->access$4302(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 5511
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    # setter for: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto;->internal_static_protobuf_ResourceApkAlbumList_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto;->access$5902(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 5513
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    # getter for: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto;->internal_static_protobuf_ResourceApkAlbumList_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto;->access$5900()Lcom/google/protobuf/Descriptors$Descriptor;

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

    const-class v3, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList;

    const-class v4, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto$ResourceApkAlbumList$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    # setter for: Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto;->internal_static_protobuf_ResourceApkAlbumList_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ResAppAlbumNetProto;->access$6002(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 5519
    const/4 v0, 0x0

    return-object v0
.end method
