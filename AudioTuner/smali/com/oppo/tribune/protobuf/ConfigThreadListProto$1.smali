.class final Lcom/oppo/tribune/protobuf/ConfigThreadListProto$1;
.super Ljava/lang/Object;
.source "ConfigThreadListProto.java"

# interfaces
.implements Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/ConfigThreadListProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public assignDescriptors(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/ExtensionRegistry;
    .locals 5
    .param p1, "root"    # Lcom/google/protobuf/Descriptors$FileDescriptor;

    .prologue
    const/4 v4, 0x0

    .line 1134
    # setter for: Lcom/oppo/tribune/protobuf/ConfigThreadListProto;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto;->access$1802(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 1135
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    # setter for: Lcom/oppo/tribune/protobuf/ConfigThreadListProto;->internal_static_protobuf_pb_type_configlist_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto;->access$002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 1137
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    # getter for: Lcom/oppo/tribune/protobuf/ConfigThreadListProto;->internal_static_protobuf_pb_type_configlist_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Configlist"

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const-string v4, "Page"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "Perpage"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "Total"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "Fid"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "ForumThreadcount"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "Tpp"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "Name"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "Picurl"

    aput-object v4, v2, v3

    const-class v3, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;

    const-class v4, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    # setter for: Lcom/oppo/tribune/protobuf/ConfigThreadListProto;->internal_static_protobuf_pb_type_configlist_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto;->access$102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 1143
    const/4 v0, 0x0

    return-object v0
.end method
