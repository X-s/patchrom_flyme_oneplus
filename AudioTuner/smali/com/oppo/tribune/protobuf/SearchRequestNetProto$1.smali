.class final Lcom/oppo/tribune/protobuf/SearchRequestNetProto$1;
.super Ljava/lang/Object;
.source "SearchRequestNetProto.java"

# interfaces
.implements Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/SearchRequestNetProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2842
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

    .line 2845
    # setter for: Lcom/oppo/tribune/protobuf/SearchRequestNetProto;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto;->access$4502(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2846
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    # setter for: Lcom/oppo/tribune/protobuf/SearchRequestNetProto;->internal_static_protobuf_GetListRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto;->access$002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2848
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    # getter for: Lcom/oppo/tribune/protobuf/SearchRequestNetProto;->internal_static_protobuf_GetListRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/16 v2, 0x11

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "UserId"

    aput-object v3, v2, v5

    const-string v3, "Os"

    aput-object v3, v2, v6

    const-string v3, "Size"

    aput-object v3, v2, v7

    const-string v3, "Start"

    aput-object v3, v2, v8

    const-string v3, "Mobile"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "OrderBy"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "CategoryId"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "ThemeVersion"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "Platform"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "Compress"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "ResType"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "RelateId"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "Keyword"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "Screen"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "Source"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "UserToken"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "RandomCount"

    aput-object v4, v2, v3

    const-class v3, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest;

    const-class v4, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetListRequest$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    # setter for: Lcom/oppo/tribune/protobuf/SearchRequestNetProto;->internal_static_protobuf_GetListRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto;->access$102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 2857
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    # setter for: Lcom/oppo/tribune/protobuf/SearchRequestNetProto;->internal_static_protobuf_GetDetailRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto;->access$2502(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2859
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    # getter for: Lcom/oppo/tribune/protobuf/SearchRequestNetProto;->internal_static_protobuf_GetDetailRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto;->access$2500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/16 v2, 0xc

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "UserId"

    aput-object v3, v2, v5

    const-string v3, "ProductId"

    aput-object v3, v2, v6

    const-string v3, "Imei"

    aput-object v3, v2, v7

    const-string v3, "SourceCode"

    aput-object v3, v2, v8

    const-string v3, "Position"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "Compress"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "ResType"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "Os"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "ThemeOs"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "Mobile"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "UserToken"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "Source"

    aput-object v4, v2, v3

    const-class v3, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest;

    const-class v4, Lcom/oppo/tribune/protobuf/SearchRequestNetProto$GetDetailRequest$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    # setter for: Lcom/oppo/tribune/protobuf/SearchRequestNetProto;->internal_static_protobuf_GetDetailRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SearchRequestNetProto;->access$2602(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 2867
    const/4 v0, 0x0

    return-object v0
.end method
