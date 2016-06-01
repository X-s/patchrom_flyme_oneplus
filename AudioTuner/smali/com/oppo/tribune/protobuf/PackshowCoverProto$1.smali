.class final Lcom/oppo/tribune/protobuf/PackshowCoverProto$1;
.super Ljava/lang/Object;
.source "PackshowCoverProto.java"

# interfaces
.implements Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/PackshowCoverProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2523
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

    .line 2526
    # setter for: Lcom/oppo/tribune/protobuf/PackshowCoverProto;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/PackshowCoverProto;->access$3802(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2527
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowCoverProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    # setter for: Lcom/oppo/tribune/protobuf/PackshowCoverProto;->internal_static_pbuser_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto;->access$002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2529
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    # getter for: Lcom/oppo/tribune/protobuf/PackshowCoverProto;->internal_static_pbuser_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowCoverProto;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/16 v2, 0xd

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Username"

    aput-object v3, v2, v5

    const-string v3, "Uid"

    aput-object v3, v2, v6

    const-string v3, "Mutual"

    aput-object v3, v2, v7

    const-string v3, "Dateline"

    aput-object v3, v2, v8

    const-string v3, "Followed"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "Gender"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "Age"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "Address"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "Groupname"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "Groupid"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "Constellation"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "Avatar"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "Fans"

    aput-object v4, v2, v3

    const-class v3, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser;

    const-class v4, Lcom/oppo/tribune/protobuf/PackshowCoverProto$pbuser$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    # setter for: Lcom/oppo/tribune/protobuf/PackshowCoverProto;->internal_static_pbuser_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto;->access$102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 2537
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowCoverProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    # setter for: Lcom/oppo/tribune/protobuf/PackshowCoverProto;->internal_static_paikeSlices_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto;->access$2102(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2539
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    # getter for: Lcom/oppo/tribune/protobuf/PackshowCoverProto;->internal_static_paikeSlices_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/PackshowCoverProto;->access$2100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Picid"

    aput-object v3, v2, v5

    const-string v3, "Author"

    aput-object v3, v2, v6

    const-string v3, "Dateline"

    aput-object v3, v2, v7

    const-string v3, "Filepath"

    aput-object v3, v2, v8

    const-string v3, "Hash"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "Title"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "Praise"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "Sharetime"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "Posttime"

    aput-object v4, v2, v3

    const-class v3, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices;

    const-class v4, Lcom/oppo/tribune/protobuf/PackshowCoverProto$paikeSlices$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    # setter for: Lcom/oppo/tribune/protobuf/PackshowCoverProto;->internal_static_paikeSlices_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PackshowCoverProto;->access$2202(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 2546
    const/4 v0, 0x0

    return-object v0
.end method
