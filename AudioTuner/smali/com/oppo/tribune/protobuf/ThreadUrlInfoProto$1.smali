.class final Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$1;
.super Ljava/lang/Object;
.source "ThreadUrlInfoProto.java"

# interfaces
.implements Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public assignDescriptors(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/ExtensionRegistry;
    .locals 5
    .param p1, "root"    # Lcom/google/protobuf/Descriptors$FileDescriptor;

    .prologue
    const/4 v4, 0x0

    .line 1169
    # setter for: Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto;->access$1602(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 1170
    invoke-static {}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    # setter for: Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto;->internal_static_protobuf_pb_url_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto;->access$002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 1172
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    # getter for: Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto;->internal_static_protobuf_pb_url_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Key"

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const-string v4, "Url"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "Title"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "Target"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "Image"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "Desc"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "Extra"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "Html"

    aput-object v4, v2, v3

    const-class v3, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url;

    const-class v4, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto$pb_url$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    # setter for: Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto;->internal_static_protobuf_pb_url_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ThreadUrlInfoProto;->access$102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 1178
    const/4 v0, 0x0

    return-object v0
.end method
