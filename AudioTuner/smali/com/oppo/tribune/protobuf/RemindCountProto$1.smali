.class final Lcom/oppo/tribune/protobuf/RemindCountProto$1;
.super Ljava/lang/Object;
.source "RemindCountProto.java"

# interfaces
.implements Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/RemindCountProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public assignDescriptors(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/ExtensionRegistry;
    .locals 5
    .param p1, "root"    # Lcom/google/protobuf/Descriptors$FileDescriptor;

    .prologue
    const/4 v4, 0x0

    .line 1313
    # setter for: Lcom/oppo/tribune/protobuf/RemindCountProto;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/RemindCountProto;->access$2302(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 1314
    invoke-static {}, Lcom/oppo/tribune/protobuf/RemindCountProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    # setter for: Lcom/oppo/tribune/protobuf/RemindCountProto;->internal_static_pb_numnotice_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/RemindCountProto;->access$002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 1316
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    # getter for: Lcom/oppo/tribune/protobuf/RemindCountProto;->internal_static_pb_numnotice_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/RemindCountProto;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/16 v2, 0xf

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "NumFollowed"

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const-string v4, "NumVisited"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "NumBbsnotice"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "NumPaikenotice"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "NumBbspost"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "NumBbsfavor"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "NumObi"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "NumPaikereply"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "NumFollowfeed"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "NumFollowers"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "NumFollowings"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "NumCandy"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "NumDays"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "NumLasted"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "Issign"

    aput-object v4, v2, v3

    const-class v3, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice;

    const-class v4, Lcom/oppo/tribune/protobuf/RemindCountProto$pb_numnotice$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    # setter for: Lcom/oppo/tribune/protobuf/RemindCountProto;->internal_static_pb_numnotice_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/RemindCountProto;->access$102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 1326
    const/4 v0, 0x0

    return-object v0
.end method
