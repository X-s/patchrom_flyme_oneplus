.class final Lcom/oppo/tribune/protobuf/ToplineGalleryProto$1;
.super Ljava/lang/Object;
.source "ToplineGalleryProto.java"

# interfaces
.implements Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/ToplineGalleryProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1487
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

    .line 1490
    # setter for: Lcom/oppo/tribune/protobuf/ToplineGalleryProto;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto;->access$2302(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 1491
    invoke-static {}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    # setter for: Lcom/oppo/tribune/protobuf/ToplineGalleryProto;->internal_static_protobuf_pb_ad_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto;->access$002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 1493
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    # getter for: Lcom/oppo/tribune/protobuf/ToplineGalleryProto;->internal_static_protobuf_pb_ad_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Id"

    aput-object v3, v2, v5

    const-string v3, "Title"

    aput-object v3, v2, v6

    const/4 v3, 0x2

    const-string v4, "Type"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "Rid"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "Url"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "Pic"

    aput-object v4, v2, v3

    const-class v3, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;

    const-class v4, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    # setter for: Lcom/oppo/tribune/protobuf/ToplineGalleryProto;->internal_static_protobuf_pb_ad_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto;->access$102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 1499
    invoke-static {}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    # setter for: Lcom/oppo/tribune/protobuf/ToplineGalleryProto;->internal_static_protobuf_pb_adlist_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto;->access$1402(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 1501
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    # getter for: Lcom/oppo/tribune/protobuf/ToplineGalleryProto;->internal_static_protobuf_pb_adlist_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto;->access$1400()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Adlist"

    aput-object v3, v2, v5

    const-class v3, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;

    const-class v4, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    # setter for: Lcom/oppo/tribune/protobuf/ToplineGalleryProto;->internal_static_protobuf_pb_adlist_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto;->access$1502(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 1506
    const/4 v0, 0x0

    return-object v0
.end method
