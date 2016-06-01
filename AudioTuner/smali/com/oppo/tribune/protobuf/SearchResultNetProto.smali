.class public final Lcom/oppo/tribune/protobuf/SearchResultNetProto;
.super Ljava/lang/Object;
.source "SearchResultNetProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfo;,
        Lcom/oppo/tribune/protobuf/SearchResultNetProto$ProductDetailInfoOrBuilder;,
        Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductList;,
        Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductListOrBuilder;,
        Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;,
        Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItemOrBuilder;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static internal_static_protobuf_ProductDetailInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_protobuf_ProductDetailInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_protobuf_PublishProductItem_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_protobuf_PublishProductItem_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_protobuf_PublishProductList_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_protobuf_PublishProductList_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 8692
    const/4 v2, 0x5

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "\n\u0014PublishProduct.proto\u0012\u0008protobuf\"\u0090\u000b\n\u0012PublishProductItem\u0012\n\n\u0002id\u0018\u0001 \u0001(\u0003\u0012\u000e\n\u0006userId\u0018\u0002 \u0001(\u0005\u0012\u0012\n\ncreateTime\u0018\u0003 \u0001(\u0003\u0012\u0012\n\nupdateTime\u0018\u0004 \u0001(\u0003\u0012\u0013\n\u000breleaseTime\u0018\u0005 \u0001(\u0003\u0012\u0012\n\ncategoryId\u0018\u0006 \u0001(\u0005\u0012\u000f\n\u0007appName\u0018\u0007 \u0001(\t\u0012\u0010\n\u0008filePath\u0018\u0008 \u0001(\t\u0012\u000f\n\u0007fileMd5\u0018\t \u0001(\t\u0012\u0010\n\u0008fileSize\u0018\n \u0001(\u0003\u0012\u0010\n\u0008fileName\u0018\u000b \u0001(\t\u0012\u0013\n\u000bdescription\u0018\u000c \u0001(\t\u0012\r\n\u0005price\u0018\r \u0001(\u0001\u0012\u001a\n\u0012packagePermissions\u0018\u000e \u0001(\t\u0012\u0013\n\u000bpackageName\u0018\u000f \u0001(\t\u0012\u0013\n\u000bapkVersName\u0018\u0010 \u0001(\t\u0012\u000f\n\u0007apkVers\u0018\u0011 \u0001(\u0005\u0012\u0012\n\nexceptList\u0018\u0012 \u0001(\t\u0012\u000f\n\u0007i"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "conUrl\u0018\u0013 \u0001(\t\u0012\u000c\n\u0004pic1\u0018\u0014 \u0001(\t\u0012\u000c\n\u0004pic2\u0018\u0015 \u0001(\t\u0012\u000c\n\u0004pic3\u0018\u0016 \u0001(\t\u0012\u000c\n\u0004pic4\u0018\u0017 \u0001(\t\u0012\u000c\n\u0004pic5\u0018\u0018 \u0001(\t\u0012\u000f\n\u0007iconMd5\u0018\u0019 \u0001(\t\u0012\u000f\n\u0007pic1Md5\u0018\u001a \u0001(\t\u0012\u000f\n\u0007pic2Md5\u0018\u001b \u0001(\t\u0012\u000f\n\u0007pic3Md5\u0018\u001c \u0001(\t\u0012\u000f\n\u0007pic4Md5\u0018\u001d \u0001(\t\u0012\u000f\n\u0007pic5Md5\u0018\u001e \u0001(\t\u0012\u0010\n\u0008salesNum\u0018\u001f \u0001(\u0005\u0012\u000e\n\u0006isFree\u0018  \u0001(\u0005\u0012\u0013\n\u000bsalesAmount\u0018! \u0001(\u0001\u0012\u000f\n\u0007downNum\u0018\" \u0001(\u0005\u0012\u000f\n\u0007lookNum\u0018# \u0001(\u0005\u0012\u0011\n\tlookNumPC\u0018$ \u0001(\u0005\u0012\u0010\n\u0008avgGrade\u0018% \u0001(\u0001\u0012\u0010\n\u0008gradeNum\u0018& \u0001(\u0005\u0012\u0010\n\u0008masterId\u0018\' \u0001(\u0003\u0012\u0010\n\u0008platform\u0018( \u0001(\u0005\u0012\u0012\n\nonlineDays\u0018) \u0001(\u0005\u0012\u0013\n\u000bencryptType\u0018"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "* \u0001(\u0005\u0012\u0012\n\nencryptKey\u0018+ \u0001(\t\u0012\u000f\n\u0007addUrl1\u0018, \u0001(\t\u0012\u000f\n\u0007addUrl2\u0018- \u0001(\t\u0012\u000f\n\u0007addMd51\u0018. \u0001(\t\u0012\u000f\n\u0007addMd52\u0018/ \u0001(\t\u0012\r\n\u0005state\u00180 \u0001(\u0005\u0012\u000f\n\u0007appType\u00181 \u0001(\u0005\u0012\u000f\n\u0007payFlag\u00182 \u0001(\u0005\u0012\u0014\n\u000ccategoryName\u00183 \u0001(\t\u0012\r\n\u0005point\u00184 \u0001(\u0005\u0012\u0011\n\tshortDesc\u00185 \u0001(\t\u0012\u0011\n\tadaptInfo\u00186 \u0001(\t\u0012\u0010\n\u0008downSpan\u00187 \u0001(\t\u0012\u000e\n\u0006webUrl\u00188 \u0001(\t\u0012\u0012\n\ncommentNum\u00189 \u0001(\u0005\u0012\u0015\n\rtopCategoryId\u0018: \u0001(\u0005\u0012\u0015\n\rcategoryLabel\u0018; \u0001(\t\u0012\r\n\u0005isNew\u0018< \u0001(\u0005\u0012\u0010\n\u0008position\u0018= \u0001(\u0005\u0012\n\n\u0002os\u0018> \u0001(\u0005\u0012\u000e\n\u0006author\u0018? \u0001(\t\u0012\u0012\n\nupdateDesc\u0018@ \u0001(\t\u0012\u0011"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "\n\tcategory1\u0018A \u0001(\u0005\u0012\u0011\n\tcategory2\u0018B \u0001(\u0005\u0012\u000f\n\u0007labelId\u0018C \u0001(\u0005\u0012\u0013\n\u000bbarCodePath\u0018D \u0001(\t\u0012\u0013\n\u000bauthorEmail\u0018E \u0001(\t\u0012\r\n\u0005isFit\u0018F \u0001(\u0005\u0012\u0015\n\rhdscreenshot1\u0018G \u0001(\t\u0012\u0015\n\rhdscreenshot2\u0018H \u0001(\t\u0012\u0015\n\rhdscreenshot3\u0018I \u0001(\t\u0012\u0015\n\rhdscreenshot4\u0018J \u0001(\t\u0012\u0015\n\rhdscreenshot5\u0018K \u0001(\t\u0012\u0010\n\u0008labelUrl\u0018L \u0001(\t\u0012\u000e\n\u0006osName\u0018M \u0001(\t\"\u0084\u0001\n\u0012PublishProductList\u0012\r\n\u0005total\u0018\u0001 \u0001(\u0005\u0012\r\n\u0005start\u0018\u0002 \u0001(\u0005\u0012\u000b\n\u0003end\u0018\u0003 \u0001(\u0005\u00124\n\u000epublishProduct\u0018\u0004 \u0003(\u000b2\u001c.protobuf.PublishProductItem\u0012\r\n\u0005fsUrl\u0018\u0005 \u0001(\t\"\u0084\u0001\n\u0011P"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "roductDetailInfo\u0012-\n\u0007product\u0018\u0001 \u0001(\u000b2\u001c.protobuf.PublishProductItem\u0012\u000f\n\u0007comment\u0018\u0002 \u0001(\t\u0012\u000e\n\u0006rating\u0018\u0003 \u0001(\u0001\u0012\u0010\n\u0008favorite\u0018\u0004 \u0001(\u0005\u0012\r\n\u0005fsUrl\u0018\u0005 \u0001(\tB1\n\u0019com.oppo.tribune.protobufB\u0014SearchResultNetProto"

    aput-object v3, v1, v2

    .line 8738
    .local v1, "descriptorData":[Ljava/lang/String;
    new-instance v0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$1;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$1;-><init>()V

    .line 8790
    .local v0, "assigner":Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;
    new-array v2, v4, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {v1, v2, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 8795
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method

.method static synthetic access$000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/oppo/tribune/protobuf/SearchResultNetProto;->internal_static_protobuf_PublishProductItem_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto;->internal_static_protobuf_PublishProductItem_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/oppo/tribune/protobuf/SearchResultNetProto;->internal_static_protobuf_PublishProductItem_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$10100()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/oppo/tribune/protobuf/SearchResultNetProto;->internal_static_protobuf_ProductDetailInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$10102(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto;->internal_static_protobuf_ProductDetailInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto;->internal_static_protobuf_PublishProductItem_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$10200()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/oppo/tribune/protobuf/SearchResultNetProto;->internal_static_protobuf_ProductDetailInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$10202(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto;->internal_static_protobuf_ProductDetailInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$11402(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$FileDescriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method static synthetic access$8700()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/oppo/tribune/protobuf/SearchResultNetProto;->internal_static_protobuf_PublishProductList_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$8702(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto;->internal_static_protobuf_PublishProductList_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$8800()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/oppo/tribune/protobuf/SearchResultNetProto;->internal_static_protobuf_PublishProductList_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$8802(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto;->internal_static_protobuf_PublishProductList_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .prologue
    .line 8687
    sget-object v0, Lcom/oppo/tribune/protobuf/SearchResultNetProto;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0
    .param p0, "registry"    # Lcom/google/protobuf/ExtensionRegistry;

    .prologue
    .line 12
    return-void
.end method
