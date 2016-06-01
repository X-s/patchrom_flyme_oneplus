.class final Lcom/oppo/tribune/protobuf/SearchResultNetProto$1;
.super Ljava/lang/Object;
.source "SearchResultNetProto.java"

# interfaces
.implements Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/SearchResultNetProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 8738
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

    .line 8741
    # setter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto;->access$11402(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 8742
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    # setter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto;->internal_static_protobuf_PublishProductItem_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto;->access$002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 8744
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    # getter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto;->internal_static_protobuf_PublishProductItem_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/16 v2, 0x4d

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Id"

    aput-object v3, v2, v5

    const-string v3, "UserId"

    aput-object v3, v2, v6

    const-string v3, "CreateTime"

    aput-object v3, v2, v7

    const-string v3, "UpdateTime"

    aput-object v3, v2, v8

    const-string v3, "ReleaseTime"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "CategoryId"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "AppName"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "FilePath"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "FileMd5"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "FileSize"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "FileName"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "Description"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "Price"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "PackagePermissions"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "PackageName"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "ApkVersName"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "ApkVers"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "ExceptList"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "IconUrl"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "Pic1"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string v4, "Pic2"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string v4, "Pic3"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string v4, "Pic4"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string v4, "Pic5"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string v4, "IconMd5"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string v4, "Pic1Md5"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string v4, "Pic2Md5"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string v4, "Pic3Md5"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string v4, "Pic4Md5"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string v4, "Pic5Md5"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string v4, "SalesNum"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string v4, "IsFree"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string v4, "SalesAmount"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string v4, "DownNum"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string v4, "LookNum"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string v4, "LookNumPC"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string v4, "AvgGrade"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string v4, "GradeNum"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string v4, "MasterId"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string v4, "Platform"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string v4, "OnlineDays"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string v4, "EncryptType"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string v4, "EncryptKey"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string v4, "AddUrl1"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string v4, "AddUrl2"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string v4, "AddMd51"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string v4, "AddMd52"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string v4, "State"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string v4, "AppType"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string v4, "PayFlag"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string v4, "CategoryName"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string v4, "Point"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string v4, "ShortDesc"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string v4, "AdaptInfo"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string v4, "DownSpan"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string v4, "WebUrl"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string v4, "CommentNum"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string v4, "TopCategoryId"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string v4, "CategoryLabel"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string v4, "IsNew"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string v4, "Position"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string v4, "Os"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string v4, "Author"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string v4, "UpdateDesc"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string v4, "Category1"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string v4, "Category2"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string v4, "LabelId"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string v4, "BarCodePath"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string v4, "AuthorEmail"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string v4, "IsFit"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string v4, "Hdscreenshot1"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string v4, "Hdscreenshot2"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string v4, "Hdscreenshot3"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string v4, "Hdscreenshot4"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string v4, "Hdscreenshot5"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string v4, "LabelUrl"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string v4, "OsName"

    aput-object v4, v2, v3

    const-class v3, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    const-class v4, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    # setter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto;->internal_static_protobuf_PublishProductItem_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto;->access$102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 8771
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    # setter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto;->internal_static_protobuf_PublishProductList_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto;->access$8702(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 8773
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    # getter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto;->internal_static_protobuf_PublishProductList_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto;->access$8700()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Total"

    aput-object v3, v2, v5

    const-string v3, "Start"

    aput-object v3, v2, v6

    const-string v3, "End"

    aput-object v3, v2, v7

    const-string v3, "PublishProduct"

    aput-object v3, v2, v8

    const-string v3, "FsUrl"

    aput-object v3, v2, v9

    const-class v3, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;

    const-class v4, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    # setter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto;->internal_static_protobuf_PublishProductList_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto;->access$8802(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 8779
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    # setter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto;->internal_static_protobuf_ProductDetailInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto;->access$10102(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 8781
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    # getter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto;->internal_static_protobuf_ProductDetailInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto;->access$10100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Product"

    aput-object v3, v2, v5

    const-string v3, "Comment"

    aput-object v3, v2, v6

    const-string v3, "Rating"

    aput-object v3, v2, v7

    const-string v3, "Favorite"

    aput-object v3, v2, v8

    const-string v3, "FsUrl"

    aput-object v3, v2, v9

    const-class v3, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;

    const-class v4, Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    # setter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto;->internal_static_protobuf_ProductDetailInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto;->access$10202(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 8787
    const/4 v0, 0x0

    return-object v0
.end method
