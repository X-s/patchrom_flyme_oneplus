.class final Lcom/oppo/tribune/protobuf/SquareForumListProto$1;
.super Ljava/lang/Object;
.source "SquareForumListProto.java"

# interfaces
.implements Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/SquareForumListProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2092
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

    .line 2095
    # setter for: Lcom/oppo/tribune/protobuf/SquareForumListProto;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/SquareForumListProto;->access$3202(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2096
    invoke-static {}, Lcom/oppo/tribune/protobuf/SquareForumListProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    # setter for: Lcom/oppo/tribune/protobuf/SquareForumListProto;->internal_static_com_oppo_tribune_protobuf_pb_forum_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SquareForumListProto;->access$002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2098
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    # getter for: Lcom/oppo/tribune/protobuf/SquareForumListProto;->internal_static_com_oppo_tribune_protobuf_pb_forum_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/SquareForumListProto;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/16 v2, 0xb

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Id"

    aput-object v3, v2, v5

    const-string v3, "Title"

    aput-object v3, v2, v6

    const-string v3, "Rid"

    aput-object v3, v2, v7

    const-string v3, "Desc"

    aput-object v3, v2, v8

    const-string v3, "Type"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "Topic"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "Topicid"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "Ispost"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "Pic"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "Position"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "Mobile"

    aput-object v4, v2, v3

    const-class v3, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;

    const-class v4, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    # setter for: Lcom/oppo/tribune/protobuf/SquareForumListProto;->internal_static_com_oppo_tribune_protobuf_pb_forum_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SquareForumListProto;->access$102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 2105
    invoke-static {}, Lcom/oppo/tribune/protobuf/SquareForumListProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    # setter for: Lcom/oppo/tribune/protobuf/SquareForumListProto;->internal_static_com_oppo_tribune_protobuf_pb_forumlist_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SquareForumListProto;->access$1902(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2107
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    # getter for: Lcom/oppo/tribune/protobuf/SquareForumListProto;->internal_static_com_oppo_tribune_protobuf_pb_forumlist_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/SquareForumListProto;->access$1900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "Forumlist"

    aput-object v3, v2, v5

    const-string v3, "Page"

    aput-object v3, v2, v6

    const-string v3, "Perpage"

    aput-object v3, v2, v7

    const-string v3, "Total"

    aput-object v3, v2, v8

    const-class v3, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist;

    const-class v4, Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlist$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    # setter for: Lcom/oppo/tribune/protobuf/SquareForumListProto;->internal_static_com_oppo_tribune_protobuf_pb_forumlist_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SquareForumListProto;->access$2002(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 2113
    const/4 v0, 0x0

    return-object v0
.end method
