.class final Lcom/oppo/tribune/protobuf/ConfigThreadProto$1;
.super Ljava/lang/Object;
.source "ConfigThreadProto.java"

# interfaces
.implements Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/ConfigThreadProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public assignDescriptors(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/ExtensionRegistry;
    .locals 5
    .param p1, "root"    # Lcom/google/protobuf/Descriptors$FileDescriptor;

    .prologue
    const/4 v4, 0x0

    .line 2306
    # setter for: Lcom/oppo/tribune/protobuf/ConfigThreadProto;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/ConfigThreadProto;->access$3402(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2307
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigThreadProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    # setter for: Lcom/oppo/tribune/protobuf/ConfigThreadProto;->internal_static_protobuf_pb_config_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto;->access$002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2309
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    # getter for: Lcom/oppo/tribune/protobuf/ConfigThreadProto;->internal_static_protobuf_pb_config_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ConfigThreadProto;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/16 v2, 0x19

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "ConfigId"

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const-string v4, "UserId"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "UserName"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "ConfigName"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "ConfigParams"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "ConfigIntro"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "ShareTime"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "LikeNum"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "CategoryId"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "DownloadNum"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "Tid"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "Fid"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "Subject"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "Summary"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "Dateline"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "Image"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "Replies"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "Views"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "Attachment"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "Author"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string v4, "Authorid"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string v4, "Groupid"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string v4, "Isfollowing"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string v4, "Likes"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string v4, "Islike"

    aput-object v4, v2, v3

    const-class v3, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config;

    const-class v4, Lcom/oppo/tribune/protobuf/ConfigThreadProto$pb_config$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    # setter for: Lcom/oppo/tribune/protobuf/ConfigThreadProto;->internal_static_protobuf_pb_config_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ConfigThreadProto;->access$102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 2315
    const/4 v0, 0x0

    return-object v0
.end method
