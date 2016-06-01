.class final Lcom/oppo/tribune/protobuf/PostForumProto$1;
.super Ljava/lang/Object;
.source "PostForumProto.java"

# interfaces
.implements Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/PostForumProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public assignDescriptors(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/ExtensionRegistry;
    .locals 7
    .param p1, "root"    # Lcom/google/protobuf/Descriptors$FileDescriptor;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1404
    # setter for: Lcom/oppo/tribune/protobuf/PostForumProto;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/PostForumProto;->access$2202(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 1405
    invoke-static {}, Lcom/oppo/tribune/protobuf/PostForumProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    # setter for: Lcom/oppo/tribune/protobuf/PostForumProto;->internal_static_protobuf_pb_forum_post_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PostForumProto;->access$002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 1407
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    # getter for: Lcom/oppo/tribune/protobuf/PostForumProto;->internal_static_protobuf_pb_forum_post_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/PostForumProto;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Id"

    aput-object v3, v2, v5

    const-string v3, "Title"

    aput-object v3, v2, v6

    const/4 v3, 0x2

    const-string v4, "Rid"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "Topic"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "Topicid"

    aput-object v4, v2, v3

    const-class v3, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;

    const-class v4, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    # setter for: Lcom/oppo/tribune/protobuf/PostForumProto;->internal_static_protobuf_pb_forum_post_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PostForumProto;->access$102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 1413
    invoke-static {}, Lcom/oppo/tribune/protobuf/PostForumProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    # setter for: Lcom/oppo/tribune/protobuf/PostForumProto;->internal_static_protobuf_pb_forum_post_list_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PostForumProto;->access$1302(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 1415
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    # getter for: Lcom/oppo/tribune/protobuf/PostForumProto;->internal_static_protobuf_pb_forum_post_list_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/PostForumProto;->access$1300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ForumPostList"

    aput-object v3, v2, v5

    const-class v3, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list;

    const-class v4, Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_list$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    # setter for: Lcom/oppo/tribune/protobuf/PostForumProto;->internal_static_protobuf_pb_forum_post_list_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/PostForumProto;->access$1402(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 1420
    const/4 v0, 0x0

    return-object v0
.end method
