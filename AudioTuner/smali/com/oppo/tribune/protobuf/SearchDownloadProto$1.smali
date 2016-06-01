.class final Lcom/oppo/tribune/protobuf/SearchDownloadProto$1;
.super Ljava/lang/Object;
.source "SearchDownloadProto.java"

# interfaces
.implements Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/SearchDownloadProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2980
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

    .line 2983
    # setter for: Lcom/oppo/tribune/protobuf/SearchDownloadProto;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/SearchDownloadProto;->access$4402(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2984
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchDownloadProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    # setter for: Lcom/oppo/tribune/protobuf/SearchDownloadProto;->internal_static_protobuf_DownloadItem_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto;->access$002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2986
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    # getter for: Lcom/oppo/tribune/protobuf/SearchDownloadProto;->internal_static_protobuf_DownloadItem_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchDownloadProto;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Id"

    aput-object v3, v2, v5

    const-string v3, "Type"

    aput-object v3, v2, v6

    const-string v3, "Status"

    aput-object v3, v2, v7

    const-string v3, "Key"

    aput-object v3, v2, v8

    const-string v3, "FileUrl"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "SubUrl"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "VersionCode"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "Remark"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "P2SOpen"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "MasterId"

    aput-object v4, v2, v3

    const-class v3, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;

    const-class v4, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    # setter for: Lcom/oppo/tribune/protobuf/SearchDownloadProto;->internal_static_protobuf_DownloadItem_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto;->access$102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 2993
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchDownloadProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    # setter for: Lcom/oppo/tribune/protobuf/SearchDownloadProto;->internal_static_protobuf_DownloadList_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto;->access$1802(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2995
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    # getter for: Lcom/oppo/tribune/protobuf/SearchDownloadProto;->internal_static_protobuf_DownloadList_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchDownloadProto;->access$1800()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Download"

    aput-object v3, v2, v5

    const-class v3, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList;

    const-class v4, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadList$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    # setter for: Lcom/oppo/tribune/protobuf/SearchDownloadProto;->internal_static_protobuf_DownloadList_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto;->access$1902(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 3000
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchDownloadProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    # setter for: Lcom/oppo/tribune/protobuf/SearchDownloadProto;->internal_static_protobuf_DownloadRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto;->access$2702(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 3002
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    # getter for: Lcom/oppo/tribune/protobuf/SearchDownloadProto;->internal_static_protobuf_DownloadRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchDownloadProto;->access$2700()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "UserId"

    aput-object v3, v2, v5

    const-string v3, "Imei"

    aput-object v3, v2, v6

    const-string v3, "SourceCode"

    aput-object v3, v2, v7

    const-string v3, "ProductIds"

    aput-object v3, v2, v8

    const-string v3, "Positions"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "UserAgent"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "UserToken"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "Source"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "Keyword"

    aput-object v4, v2, v3

    const-class v3, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest;

    const-class v4, Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequest$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    # setter for: Lcom/oppo/tribune/protobuf/SearchDownloadProto;->internal_static_protobuf_DownloadRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SearchDownloadProto;->access$2802(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 3009
    const/4 v0, 0x0

    return-object v0
.end method
