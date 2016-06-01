.class public final Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "SearchResultNetProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItemOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;",
        ">;",
        "Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItemOrBuilder;"
    }
.end annotation


# instance fields
.field private adaptInfo_:Ljava/lang/Object;

.field private addMd51_:Ljava/lang/Object;

.field private addMd52_:Ljava/lang/Object;

.field private addUrl1_:Ljava/lang/Object;

.field private addUrl2_:Ljava/lang/Object;

.field private apkVersName_:Ljava/lang/Object;

.field private apkVers_:I

.field private appName_:Ljava/lang/Object;

.field private appType_:I

.field private authorEmail_:Ljava/lang/Object;

.field private author_:Ljava/lang/Object;

.field private avgGrade_:D

.field private barCodePath_:Ljava/lang/Object;

.field private bitField0_:I

.field private bitField1_:I

.field private bitField2_:I

.field private category1_:I

.field private category2_:I

.field private categoryId_:I

.field private categoryLabel_:Ljava/lang/Object;

.field private categoryName_:Ljava/lang/Object;

.field private commentNum_:I

.field private createTime_:J

.field private description_:Ljava/lang/Object;

.field private downNum_:I

.field private downSpan_:Ljava/lang/Object;

.field private encryptKey_:Ljava/lang/Object;

.field private encryptType_:I

.field private exceptList_:Ljava/lang/Object;

.field private fileMd5_:Ljava/lang/Object;

.field private fileName_:Ljava/lang/Object;

.field private filePath_:Ljava/lang/Object;

.field private fileSize_:J

.field private gradeNum_:I

.field private hdscreenshot1_:Ljava/lang/Object;

.field private hdscreenshot2_:Ljava/lang/Object;

.field private hdscreenshot3_:Ljava/lang/Object;

.field private hdscreenshot4_:Ljava/lang/Object;

.field private hdscreenshot5_:Ljava/lang/Object;

.field private iconMd5_:Ljava/lang/Object;

.field private iconUrl_:Ljava/lang/Object;

.field private id_:J

.field private isFit_:I

.field private isFree_:I

.field private isNew_:I

.field private labelId_:I

.field private labelUrl_:Ljava/lang/Object;

.field private lookNumPC_:I

.field private lookNum_:I

.field private masterId_:J

.field private onlineDays_:I

.field private osName_:Ljava/lang/Object;

.field private os_:I

.field private packageName_:Ljava/lang/Object;

.field private packagePermissions_:Ljava/lang/Object;

.field private payFlag_:I

.field private pic1Md5_:Ljava/lang/Object;

.field private pic1_:Ljava/lang/Object;

.field private pic2Md5_:Ljava/lang/Object;

.field private pic2_:Ljava/lang/Object;

.field private pic3Md5_:Ljava/lang/Object;

.field private pic3_:Ljava/lang/Object;

.field private pic4Md5_:Ljava/lang/Object;

.field private pic4_:Ljava/lang/Object;

.field private pic5Md5_:Ljava/lang/Object;

.field private pic5_:Ljava/lang/Object;

.field private platform_:I

.field private point_:I

.field private position_:I

.field private price_:D

.field private releaseTime_:J

.field private salesAmount_:D

.field private salesNum_:I

.field private shortDesc_:Ljava/lang/Object;

.field private state_:I

.field private topCategoryId_:I

.field private updateDesc_:Ljava/lang/Object;

.field private updateTime_:J

.field private userId_:I

.field private webUrl_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 3077
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 4429
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->appName_:Ljava/lang/Object;

    .line 4471
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->filePath_:Ljava/lang/Object;

    .line 4513
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->fileMd5_:Ljava/lang/Object;

    .line 4580
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->fileName_:Ljava/lang/Object;

    .line 4622
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->description_:Ljava/lang/Object;

    .line 4689
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->packagePermissions_:Ljava/lang/Object;

    .line 4732
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->packageName_:Ljava/lang/Object;

    .line 4774
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->apkVersName_:Ljava/lang/Object;

    .line 4841
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->exceptList_:Ljava/lang/Object;

    .line 4883
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->iconUrl_:Ljava/lang/Object;

    .line 4925
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->pic1_:Ljava/lang/Object;

    .line 4967
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->pic2_:Ljava/lang/Object;

    .line 5009
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->pic3_:Ljava/lang/Object;

    .line 5051
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->pic4_:Ljava/lang/Object;

    .line 5093
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->pic5_:Ljava/lang/Object;

    .line 5135
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->iconMd5_:Ljava/lang/Object;

    .line 5177
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->pic1Md5_:Ljava/lang/Object;

    .line 5219
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->pic2Md5_:Ljava/lang/Object;

    .line 5261
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->pic3Md5_:Ljava/lang/Object;

    .line 5303
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->pic4Md5_:Ljava/lang/Object;

    .line 5345
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->pic5Md5_:Ljava/lang/Object;

    .line 5687
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->encryptKey_:Ljava/lang/Object;

    .line 5729
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->addUrl1_:Ljava/lang/Object;

    .line 5771
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->addUrl2_:Ljava/lang/Object;

    .line 5813
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->addMd51_:Ljava/lang/Object;

    .line 5855
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->addMd52_:Ljava/lang/Object;

    .line 5972
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->categoryName_:Ljava/lang/Object;

    .line 6039
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->shortDesc_:Ljava/lang/Object;

    .line 6081
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->adaptInfo_:Ljava/lang/Object;

    .line 6123
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->downSpan_:Ljava/lang/Object;

    .line 6165
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->webUrl_:Ljava/lang/Object;

    .line 6257
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->categoryLabel_:Ljava/lang/Object;

    .line 6374
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->author_:Ljava/lang/Object;

    .line 6416
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->updateDesc_:Ljava/lang/Object;

    .line 6533
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->barCodePath_:Ljava/lang/Object;

    .line 6575
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->authorEmail_:Ljava/lang/Object;

    .line 6642
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->hdscreenshot1_:Ljava/lang/Object;

    .line 6684
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->hdscreenshot2_:Ljava/lang/Object;

    .line 6726
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->hdscreenshot3_:Ljava/lang/Object;

    .line 6768
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->hdscreenshot4_:Ljava/lang/Object;

    .line 6810
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->hdscreenshot5_:Ljava/lang/Object;

    .line 6852
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->labelUrl_:Ljava/lang/Object;

    .line 6894
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->osName_:Ljava/lang/Object;

    .line 3078
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->maybeForceBuilderInitialization()V

    .line 3079
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 3082
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 4429
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->appName_:Ljava/lang/Object;

    .line 4471
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->filePath_:Ljava/lang/Object;

    .line 4513
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->fileMd5_:Ljava/lang/Object;

    .line 4580
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->fileName_:Ljava/lang/Object;

    .line 4622
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->description_:Ljava/lang/Object;

    .line 4689
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->packagePermissions_:Ljava/lang/Object;

    .line 4732
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->packageName_:Ljava/lang/Object;

    .line 4774
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->apkVersName_:Ljava/lang/Object;

    .line 4841
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->exceptList_:Ljava/lang/Object;

    .line 4883
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->iconUrl_:Ljava/lang/Object;

    .line 4925
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->pic1_:Ljava/lang/Object;

    .line 4967
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->pic2_:Ljava/lang/Object;

    .line 5009
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->pic3_:Ljava/lang/Object;

    .line 5051
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->pic4_:Ljava/lang/Object;

    .line 5093
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->pic5_:Ljava/lang/Object;

    .line 5135
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->iconMd5_:Ljava/lang/Object;

    .line 5177
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->pic1Md5_:Ljava/lang/Object;

    .line 5219
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->pic2Md5_:Ljava/lang/Object;

    .line 5261
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->pic3Md5_:Ljava/lang/Object;

    .line 5303
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->pic4Md5_:Ljava/lang/Object;

    .line 5345
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->pic5Md5_:Ljava/lang/Object;

    .line 5687
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->encryptKey_:Ljava/lang/Object;

    .line 5729
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->addUrl1_:Ljava/lang/Object;

    .line 5771
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->addUrl2_:Ljava/lang/Object;

    .line 5813
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->addMd51_:Ljava/lang/Object;

    .line 5855
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->addMd52_:Ljava/lang/Object;

    .line 5972
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->categoryName_:Ljava/lang/Object;

    .line 6039
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->shortDesc_:Ljava/lang/Object;

    .line 6081
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->adaptInfo_:Ljava/lang/Object;

    .line 6123
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->downSpan_:Ljava/lang/Object;

    .line 6165
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->webUrl_:Ljava/lang/Object;

    .line 6257
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->categoryLabel_:Ljava/lang/Object;

    .line 6374
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->author_:Ljava/lang/Object;

    .line 6416
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->updateDesc_:Ljava/lang/Object;

    .line 6533
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->barCodePath_:Ljava/lang/Object;

    .line 6575
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->authorEmail_:Ljava/lang/Object;

    .line 6642
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->hdscreenshot1_:Ljava/lang/Object;

    .line 6684
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->hdscreenshot2_:Ljava/lang/Object;

    .line 6726
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->hdscreenshot3_:Ljava/lang/Object;

    .line 6768
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->hdscreenshot4_:Ljava/lang/Object;

    .line 6810
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->hdscreenshot5_:Ljava/lang/Object;

    .line 6852
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->labelUrl_:Ljava/lang/Object;

    .line 6894
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->osName_:Ljava/lang/Object;

    .line 3083
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->maybeForceBuilderInitialization()V

    .line 3084
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/SearchResultNetProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/SearchResultNetProto$1;

    .prologue
    .line 3063
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3063
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 1

    .prologue
    .line 3063
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->create()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3278
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    move-result-object v0

    .line 3279
    .local v0, "result":Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3280
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 3283
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 1

    .prologue
    .line 3092
    new-instance v0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 3068
    # getter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto;->internal_static_protobuf_PublishProductItem_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 3087
    # getter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3089
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3063
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->build()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3063
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->build()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;
    .locals 2

    .prologue
    .line 3269
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    move-result-object v0

    .line 3270
    .local v0, "result":Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3271
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 3273
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3063
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3063
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;
    .locals 15

    .prologue
    const/high16 v14, 0x40000

    const/high16 v13, 0x20000

    const/high16 v12, 0x10000

    const v11, 0x8000

    const/high16 v10, -0x80000000

    .line 3287
    new-instance v3, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    const/4 v7, 0x0

    invoke-direct {v3, p0, v7}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;-><init>(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;Lcom/oppo/tribune/protobuf/SearchResultNetProto$1;)V

    .line 3289
    .local v3, "result":Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 3290
    .local v0, "from_bitField0_":I
    iget v1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 3291
    .local v1, "from_bitField1_":I
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    .line 3292
    .local v2, "from_bitField2_":I
    const/4 v4, 0x0

    .line 3293
    .local v4, "to_bitField0_":I
    const/4 v5, 0x0

    .line 3294
    .local v5, "to_bitField1_":I
    const/4 v6, 0x0

    .line 3295
    .local v6, "to_bitField2_":I
    and-int/lit8 v7, v0, 0x1

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 3296
    or-int/lit8 v4, v4, 0x1

    .line 3298
    :cond_0
    iget-wide v8, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->id_:J

    # setter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->id_:J
    invoke-static {v3, v8, v9}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->access$702(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;J)J

    .line 3299
    and-int/lit8 v7, v0, 0x2

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    .line 3300
    or-int/lit8 v4, v4, 0x2

    .line 3302
    :cond_1
    iget v7, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->userId_:I

    # setter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->userId_:I
    invoke-static {v3, v7}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->access$802(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;I)I

    .line 3303
    and-int/lit8 v7, v0, 0x4

    const/4 v8, 0x4

    if-ne v7, v8, :cond_2

    .line 3304
    or-int/lit8 v4, v4, 0x4

    .line 3306
    :cond_2
    iget-wide v8, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->createTime_:J

    # setter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->createTime_:J
    invoke-static {v3, v8, v9}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->access$902(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;J)J

    .line 3307
    and-int/lit8 v7, v0, 0x8

    const/16 v8, 0x8

    if-ne v7, v8, :cond_3

    .line 3308
    or-int/lit8 v4, v4, 0x8

    .line 3310
    :cond_3
    iget-wide v8, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->updateTime_:J

    # setter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->updateTime_:J
    invoke-static {v3, v8, v9}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->access$1002(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;J)J

    .line 3311
    and-int/lit8 v7, v0, 0x10

    const/16 v8, 0x10

    if-ne v7, v8, :cond_4

    .line 3312
    or-int/lit8 v4, v4, 0x10

    .line 3314
    :cond_4
    iget-wide v8, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->releaseTime_:J

    # setter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->releaseTime_:J
    invoke-static {v3, v8, v9}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->access$1102(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;J)J

    .line 3315
    and-int/lit8 v7, v0, 0x20

    const/16 v8, 0x20

    if-ne v7, v8, :cond_5

    .line 3316
    or-int/lit8 v4, v4, 0x20

    .line 3318
    :cond_5
    iget v7, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->categoryId_:I

    # setter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->categoryId_:I
    invoke-static {v3, v7}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->access$1202(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;I)I

    .line 3319
    and-int/lit8 v7, v0, 0x40

    const/16 v8, 0x40

    if-ne v7, v8, :cond_6

    .line 3320
    or-int/lit8 v4, v4, 0x40

    .line 3322
    :cond_6
    iget-object v7, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->appName_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->appName_:Ljava/lang/Object;
    invoke-static {v3, v7}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->access$1302(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3323
    and-int/lit16 v7, v0, 0x80

    const/16 v8, 0x80

    if-ne v7, v8, :cond_7

    .line 3324
    or-int/lit16 v4, v4, 0x80

    .line 3326
    :cond_7
    iget-object v7, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->filePath_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->filePath_:Ljava/lang/Object;
    invoke-static {v3, v7}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->access$1402(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3327
    and-int/lit16 v7, v0, 0x100

    const/16 v8, 0x100

    if-ne v7, v8, :cond_8

    .line 3328
    or-int/lit16 v4, v4, 0x100

    .line 3330
    :cond_8
    iget-object v7, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->fileMd5_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->fileMd5_:Ljava/lang/Object;
    invoke-static {v3, v7}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->access$1502(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3331
    and-int/lit16 v7, v0, 0x200

    const/16 v8, 0x200

    if-ne v7, v8, :cond_9

    .line 3332
    or-int/lit16 v4, v4, 0x200

    .line 3334
    :cond_9
    iget-wide v8, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->fileSize_:J

    # setter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->fileSize_:J
    invoke-static {v3, v8, v9}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->access$1602(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;J)J

    .line 3335
    and-int/lit16 v7, v0, 0x400

    const/16 v8, 0x400

    if-ne v7, v8, :cond_a

    .line 3336
    or-int/lit16 v4, v4, 0x400

    .line 3338
    :cond_a
    iget-object v7, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->fileName_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->fileName_:Ljava/lang/Object;
    invoke-static {v3, v7}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->access$1702(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3339
    and-int/lit16 v7, v0, 0x800

    const/16 v8, 0x800

    if-ne v7, v8, :cond_b

    .line 3340
    or-int/lit16 v4, v4, 0x800

    .line 3342
    :cond_b
    iget-object v7, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->description_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->description_:Ljava/lang/Object;
    invoke-static {v3, v7}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->access$1802(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3343
    and-int/lit16 v7, v0, 0x1000

    const/16 v8, 0x1000

    if-ne v7, v8, :cond_c

    .line 3344
    or-int/lit16 v4, v4, 0x1000

    .line 3346
    :cond_c
    iget-wide v8, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->price_:D

    # setter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->price_:D
    invoke-static {v3, v8, v9}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->access$1902(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;D)D

    .line 3347
    and-int/lit16 v7, v0, 0x2000

    const/16 v8, 0x2000

    if-ne v7, v8, :cond_d

    .line 3348
    or-int/lit16 v4, v4, 0x2000

    .line 3350
    :cond_d
    iget-object v7, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->packagePermissions_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->packagePermissions_:Ljava/lang/Object;
    invoke-static {v3, v7}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->access$2002(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3351
    and-int/lit16 v7, v0, 0x4000

    const/16 v8, 0x4000

    if-ne v7, v8, :cond_e

    .line 3352
    or-int/lit16 v4, v4, 0x4000

    .line 3354
    :cond_e
    iget-object v7, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->packageName_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->packageName_:Ljava/lang/Object;
    invoke-static {v3, v7}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->access$2102(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3355
    and-int v7, v0, v11

    if-ne v7, v11, :cond_f

    .line 3356
    or-int/2addr v4, v11

    .line 3358
    :cond_f
    iget-object v7, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->apkVersName_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->apkVersName_:Ljava/lang/Object;
    invoke-static {v3, v7}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->access$2202(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3359
    and-int v7, v0, v12

    if-ne v7, v12, :cond_10

    .line 3360
    or-int/2addr v4, v12

    .line 3362
    :cond_10
    iget v7, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->apkVers_:I

    # setter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->apkVers_:I
    invoke-static {v3, v7}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->access$2302(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;I)I

    .line 3363
    and-int v7, v0, v13

    if-ne v7, v13, :cond_11

    .line 3364
    or-int/2addr v4, v13

    .line 3366
    :cond_11
    iget-object v7, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->exceptList_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->exceptList_:Ljava/lang/Object;
    invoke-static {v3, v7}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->access$2402(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3367
    and-int v7, v0, v14

    if-ne v7, v14, :cond_12

    .line 3368
    or-int/2addr v4, v14

    .line 3370
    :cond_12
    iget-object v7, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->iconUrl_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->iconUrl_:Ljava/lang/Object;
    invoke-static {v3, v7}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->access$2502(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3371
    const/high16 v7, 0x80000

    and-int/2addr v7, v0

    const/high16 v8, 0x80000

    if-ne v7, v8, :cond_13

    .line 3372
    const/high16 v7, 0x80000

    or-int/2addr v4, v7

    .line 3374
    :cond_13
    iget-object v7, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->pic1_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->pic1_:Ljava/lang/Object;
    invoke-static {v3, v7}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->access$2602(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3375
    const/high16 v7, 0x100000

    and-int/2addr v7, v0

    const/high16 v8, 0x100000

    if-ne v7, v8, :cond_14

    .line 3376
    const/high16 v7, 0x100000

    or-int/2addr v4, v7

    .line 3378
    :cond_14
    iget-object v7, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->pic2_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->pic2_:Ljava/lang/Object;
    invoke-static {v3, v7}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->access$2702(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3379
    const/high16 v7, 0x200000

    and-int/2addr v7, v0

    const/high16 v8, 0x200000

    if-ne v7, v8, :cond_15

    .line 3380
    const/high16 v7, 0x200000

    or-int/2addr v4, v7

    .line 3382
    :cond_15
    iget-object v7, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->pic3_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->pic3_:Ljava/lang/Object;
    invoke-static {v3, v7}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->access$2802(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3383
    const/high16 v7, 0x400000

    and-int/2addr v7, v0

    const/high16 v8, 0x400000

    if-ne v7, v8, :cond_16

    .line 3384
    const/high16 v7, 0x400000

    or-int/2addr v4, v7

    .line 3386
    :cond_16
    iget-object v7, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->pic4_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->pic4_:Ljava/lang/Object;
    invoke-static {v3, v7}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->access$2902(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3387
    const/high16 v7, 0x800000

    and-int/2addr v7, v0

    const/high16 v8, 0x800000

    if-ne v7, v8, :cond_17

    .line 3388
    const/high16 v7, 0x800000

    or-int/2addr v4, v7

    .line 3390
    :cond_17
    iget-object v7, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->pic5_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->pic5_:Ljava/lang/Object;
    invoke-static {v3, v7}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->access$3002(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3391
    const/high16 v7, 0x1000000

    and-int/2addr v7, v0

    const/high16 v8, 0x1000000

    if-ne v7, v8, :cond_18

    .line 3392
    const/high16 v7, 0x1000000

    or-int/2addr v4, v7

    .line 3394
    :cond_18
    iget-object v7, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->iconMd5_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->iconMd5_:Ljava/lang/Object;
    invoke-static {v3, v7}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->access$3102(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3395
    const/high16 v7, 0x2000000

    and-int/2addr v7, v0

    const/high16 v8, 0x2000000

    if-ne v7, v8, :cond_19

    .line 3396
    const/high16 v7, 0x2000000

    or-int/2addr v4, v7

    .line 3398
    :cond_19
    iget-object v7, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->pic1Md5_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->pic1Md5_:Ljava/lang/Object;
    invoke-static {v3, v7}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->access$3202(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3399
    const/high16 v7, 0x4000000

    and-int/2addr v7, v0

    const/high16 v8, 0x4000000

    if-ne v7, v8, :cond_1a

    .line 3400
    const/high16 v7, 0x4000000

    or-int/2addr v4, v7

    .line 3402
    :cond_1a
    iget-object v7, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->pic2Md5_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->pic2Md5_:Ljava/lang/Object;
    invoke-static {v3, v7}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->access$3302(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3403
    const/high16 v7, 0x8000000

    and-int/2addr v7, v0

    const/high16 v8, 0x8000000

    if-ne v7, v8, :cond_1b

    .line 3404
    const/high16 v7, 0x8000000

    or-int/2addr v4, v7

    .line 3406
    :cond_1b
    iget-object v7, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->pic3Md5_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->pic3Md5_:Ljava/lang/Object;
    invoke-static {v3, v7}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->access$3402(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3407
    const/high16 v7, 0x10000000

    and-int/2addr v7, v0

    const/high16 v8, 0x10000000

    if-ne v7, v8, :cond_1c

    .line 3408
    const/high16 v7, 0x10000000

    or-int/2addr v4, v7

    .line 3410
    :cond_1c
    iget-object v7, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->pic4Md5_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->pic4Md5_:Ljava/lang/Object;
    invoke-static {v3, v7}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->access$3502(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3411
    const/high16 v7, 0x20000000

    and-int/2addr v7, v0

    const/high16 v8, 0x20000000

    if-ne v7, v8, :cond_1d

    .line 3412
    const/high16 v7, 0x20000000

    or-int/2addr v4, v7

    .line 3414
    :cond_1d
    iget-object v7, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->pic5Md5_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->pic5Md5_:Ljava/lang/Object;
    invoke-static {v3, v7}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->access$3602(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3415
    const/high16 v7, 0x40000000    # 2.0f

    and-int/2addr v7, v0

    const/high16 v8, 0x40000000    # 2.0f

    if-ne v7, v8, :cond_1e

    .line 3416
    const/high16 v7, 0x40000000    # 2.0f

    or-int/2addr v4, v7

    .line 3418
    :cond_1e
    iget v7, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->salesNum_:I

    # setter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->salesNum_:I
    invoke-static {v3, v7}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->access$3702(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;I)I

    .line 3419
    and-int v7, v0, v10

    if-ne v7, v10, :cond_1f

    .line 3420
    or-int/2addr v4, v10

    .line 3422
    :cond_1f
    iget v7, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->isFree_:I

    # setter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->isFree_:I
    invoke-static {v3, v7}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->access$3802(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;I)I

    .line 3423
    and-int/lit8 v7, v1, 0x1

    const/4 v8, 0x1

    if-ne v7, v8, :cond_20

    .line 3424
    or-int/lit8 v5, v5, 0x1

    .line 3426
    :cond_20
    iget-wide v8, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->salesAmount_:D

    # setter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->salesAmount_:D
    invoke-static {v3, v8, v9}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->access$3902(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;D)D

    .line 3427
    and-int/lit8 v7, v1, 0x2

    const/4 v8, 0x2

    if-ne v7, v8, :cond_21

    .line 3428
    or-int/lit8 v5, v5, 0x2

    .line 3430
    :cond_21
    iget v7, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->downNum_:I

    # setter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->downNum_:I
    invoke-static {v3, v7}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->access$4002(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;I)I

    .line 3431
    and-int/lit8 v7, v1, 0x4

    const/4 v8, 0x4

    if-ne v7, v8, :cond_22

    .line 3432
    or-int/lit8 v5, v5, 0x4

    .line 3434
    :cond_22
    iget v7, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->lookNum_:I

    # setter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->lookNum_:I
    invoke-static {v3, v7}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->access$4102(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;I)I

    .line 3435
    and-int/lit8 v7, v1, 0x8

    const/16 v8, 0x8

    if-ne v7, v8, :cond_23

    .line 3436
    or-int/lit8 v5, v5, 0x8

    .line 3438
    :cond_23
    iget v7, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->lookNumPC_:I

    # setter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->lookNumPC_:I
    invoke-static {v3, v7}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->access$4202(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;I)I

    .line 3439
    and-int/lit8 v7, v1, 0x10

    const/16 v8, 0x10

    if-ne v7, v8, :cond_24

    .line 3440
    or-int/lit8 v5, v5, 0x10

    .line 3442
    :cond_24
    iget-wide v8, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->avgGrade_:D

    # setter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->avgGrade_:D
    invoke-static {v3, v8, v9}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->access$4302(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;D)D

    .line 3443
    and-int/lit8 v7, v1, 0x20

    const/16 v8, 0x20

    if-ne v7, v8, :cond_25

    .line 3444
    or-int/lit8 v5, v5, 0x20

    .line 3446
    :cond_25
    iget v7, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->gradeNum_:I

    # setter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->gradeNum_:I
    invoke-static {v3, v7}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->access$4402(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;I)I

    .line 3447
    and-int/lit8 v7, v1, 0x40

    const/16 v8, 0x40

    if-ne v7, v8, :cond_26

    .line 3448
    or-int/lit8 v5, v5, 0x40

    .line 3450
    :cond_26
    iget-wide v8, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->masterId_:J

    # setter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->masterId_:J
    invoke-static {v3, v8, v9}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->access$4502(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;J)J

    .line 3451
    and-int/lit16 v7, v1, 0x80

    const/16 v8, 0x80

    if-ne v7, v8, :cond_27

    .line 3452
    or-int/lit16 v5, v5, 0x80

    .line 3454
    :cond_27
    iget v7, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->platform_:I

    # setter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->platform_:I
    invoke-static {v3, v7}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->access$4602(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;I)I

    .line 3455
    and-int/lit16 v7, v1, 0x100

    const/16 v8, 0x100

    if-ne v7, v8, :cond_28

    .line 3456
    or-int/lit16 v5, v5, 0x100

    .line 3458
    :cond_28
    iget v7, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onlineDays_:I

    # setter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->onlineDays_:I
    invoke-static {v3, v7}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->access$4702(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;I)I

    .line 3459
    and-int/lit16 v7, v1, 0x200

    const/16 v8, 0x200

    if-ne v7, v8, :cond_29

    .line 3460
    or-int/lit16 v5, v5, 0x200

    .line 3462
    :cond_29
    iget v7, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->encryptType_:I

    # setter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->encryptType_:I
    invoke-static {v3, v7}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->access$4802(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;I)I

    .line 3463
    and-int/lit16 v7, v1, 0x400

    const/16 v8, 0x400

    if-ne v7, v8, :cond_2a

    .line 3464
    or-int/lit16 v5, v5, 0x400

    .line 3466
    :cond_2a
    iget-object v7, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->encryptKey_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->encryptKey_:Ljava/lang/Object;
    invoke-static {v3, v7}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->access$4902(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3467
    and-int/lit16 v7, v1, 0x800

    const/16 v8, 0x800

    if-ne v7, v8, :cond_2b

    .line 3468
    or-int/lit16 v5, v5, 0x800

    .line 3470
    :cond_2b
    iget-object v7, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->addUrl1_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->addUrl1_:Ljava/lang/Object;
    invoke-static {v3, v7}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->access$5002(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3471
    and-int/lit16 v7, v1, 0x1000

    const/16 v8, 0x1000

    if-ne v7, v8, :cond_2c

    .line 3472
    or-int/lit16 v5, v5, 0x1000

    .line 3474
    :cond_2c
    iget-object v7, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->addUrl2_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->addUrl2_:Ljava/lang/Object;
    invoke-static {v3, v7}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->access$5102(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3475
    and-int/lit16 v7, v1, 0x2000

    const/16 v8, 0x2000

    if-ne v7, v8, :cond_2d

    .line 3476
    or-int/lit16 v5, v5, 0x2000

    .line 3478
    :cond_2d
    iget-object v7, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->addMd51_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->addMd51_:Ljava/lang/Object;
    invoke-static {v3, v7}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->access$5202(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3479
    and-int/lit16 v7, v1, 0x4000

    const/16 v8, 0x4000

    if-ne v7, v8, :cond_2e

    .line 3480
    or-int/lit16 v5, v5, 0x4000

    .line 3482
    :cond_2e
    iget-object v7, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->addMd52_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->addMd52_:Ljava/lang/Object;
    invoke-static {v3, v7}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->access$5302(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3483
    and-int v7, v1, v11

    if-ne v7, v11, :cond_2f

    .line 3484
    or-int/2addr v5, v11

    .line 3486
    :cond_2f
    iget v7, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->state_:I

    # setter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->state_:I
    invoke-static {v3, v7}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->access$5402(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;I)I

    .line 3487
    and-int v7, v1, v12

    if-ne v7, v12, :cond_30

    .line 3488
    or-int/2addr v5, v12

    .line 3490
    :cond_30
    iget v7, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->appType_:I

    # setter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->appType_:I
    invoke-static {v3, v7}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->access$5502(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;I)I

    .line 3491
    and-int v7, v1, v13

    if-ne v7, v13, :cond_31

    .line 3492
    or-int/2addr v5, v13

    .line 3494
    :cond_31
    iget v7, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->payFlag_:I

    # setter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->payFlag_:I
    invoke-static {v3, v7}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->access$5602(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;I)I

    .line 3495
    and-int v7, v1, v14

    if-ne v7, v14, :cond_32

    .line 3496
    or-int/2addr v5, v14

    .line 3498
    :cond_32
    iget-object v7, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->categoryName_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->categoryName_:Ljava/lang/Object;
    invoke-static {v3, v7}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->access$5702(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3499
    const/high16 v7, 0x80000

    and-int/2addr v7, v1

    const/high16 v8, 0x80000

    if-ne v7, v8, :cond_33

    .line 3500
    const/high16 v7, 0x80000

    or-int/2addr v5, v7

    .line 3502
    :cond_33
    iget v7, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->point_:I

    # setter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->point_:I
    invoke-static {v3, v7}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->access$5802(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;I)I

    .line 3503
    const/high16 v7, 0x100000

    and-int/2addr v7, v1

    const/high16 v8, 0x100000

    if-ne v7, v8, :cond_34

    .line 3504
    const/high16 v7, 0x100000

    or-int/2addr v5, v7

    .line 3506
    :cond_34
    iget-object v7, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->shortDesc_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->shortDesc_:Ljava/lang/Object;
    invoke-static {v3, v7}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->access$5902(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3507
    const/high16 v7, 0x200000

    and-int/2addr v7, v1

    const/high16 v8, 0x200000

    if-ne v7, v8, :cond_35

    .line 3508
    const/high16 v7, 0x200000

    or-int/2addr v5, v7

    .line 3510
    :cond_35
    iget-object v7, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->adaptInfo_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->adaptInfo_:Ljava/lang/Object;
    invoke-static {v3, v7}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->access$6002(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3511
    const/high16 v7, 0x400000

    and-int/2addr v7, v1

    const/high16 v8, 0x400000

    if-ne v7, v8, :cond_36

    .line 3512
    const/high16 v7, 0x400000

    or-int/2addr v5, v7

    .line 3514
    :cond_36
    iget-object v7, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->downSpan_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->downSpan_:Ljava/lang/Object;
    invoke-static {v3, v7}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->access$6102(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3515
    const/high16 v7, 0x800000

    and-int/2addr v7, v1

    const/high16 v8, 0x800000

    if-ne v7, v8, :cond_37

    .line 3516
    const/high16 v7, 0x800000

    or-int/2addr v5, v7

    .line 3518
    :cond_37
    iget-object v7, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->webUrl_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->webUrl_:Ljava/lang/Object;
    invoke-static {v3, v7}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->access$6202(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3519
    const/high16 v7, 0x1000000

    and-int/2addr v7, v1

    const/high16 v8, 0x1000000

    if-ne v7, v8, :cond_38

    .line 3520
    const/high16 v7, 0x1000000

    or-int/2addr v5, v7

    .line 3522
    :cond_38
    iget v7, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->commentNum_:I

    # setter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->commentNum_:I
    invoke-static {v3, v7}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->access$6302(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;I)I

    .line 3523
    const/high16 v7, 0x2000000

    and-int/2addr v7, v1

    const/high16 v8, 0x2000000

    if-ne v7, v8, :cond_39

    .line 3524
    const/high16 v7, 0x2000000

    or-int/2addr v5, v7

    .line 3526
    :cond_39
    iget v7, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->topCategoryId_:I

    # setter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->topCategoryId_:I
    invoke-static {v3, v7}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->access$6402(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;I)I

    .line 3527
    const/high16 v7, 0x4000000

    and-int/2addr v7, v1

    const/high16 v8, 0x4000000

    if-ne v7, v8, :cond_3a

    .line 3528
    const/high16 v7, 0x4000000

    or-int/2addr v5, v7

    .line 3530
    :cond_3a
    iget-object v7, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->categoryLabel_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->categoryLabel_:Ljava/lang/Object;
    invoke-static {v3, v7}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->access$6502(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3531
    const/high16 v7, 0x8000000

    and-int/2addr v7, v1

    const/high16 v8, 0x8000000

    if-ne v7, v8, :cond_3b

    .line 3532
    const/high16 v7, 0x8000000

    or-int/2addr v5, v7

    .line 3534
    :cond_3b
    iget v7, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->isNew_:I

    # setter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->isNew_:I
    invoke-static {v3, v7}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->access$6602(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;I)I

    .line 3535
    const/high16 v7, 0x10000000

    and-int/2addr v7, v1

    const/high16 v8, 0x10000000

    if-ne v7, v8, :cond_3c

    .line 3536
    const/high16 v7, 0x10000000

    or-int/2addr v5, v7

    .line 3538
    :cond_3c
    iget v7, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->position_:I

    # setter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->position_:I
    invoke-static {v3, v7}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->access$6702(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;I)I

    .line 3539
    const/high16 v7, 0x20000000

    and-int/2addr v7, v1

    const/high16 v8, 0x20000000

    if-ne v7, v8, :cond_3d

    .line 3540
    const/high16 v7, 0x20000000

    or-int/2addr v5, v7

    .line 3542
    :cond_3d
    iget v7, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->os_:I

    # setter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->os_:I
    invoke-static {v3, v7}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->access$6802(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;I)I

    .line 3543
    const/high16 v7, 0x40000000    # 2.0f

    and-int/2addr v7, v1

    const/high16 v8, 0x40000000    # 2.0f

    if-ne v7, v8, :cond_3e

    .line 3544
    const/high16 v7, 0x40000000    # 2.0f

    or-int/2addr v5, v7

    .line 3546
    :cond_3e
    iget-object v7, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->author_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->author_:Ljava/lang/Object;
    invoke-static {v3, v7}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->access$6902(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3547
    and-int v7, v1, v10

    if-ne v7, v10, :cond_3f

    .line 3548
    or-int/2addr v5, v10

    .line 3550
    :cond_3f
    iget-object v7, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->updateDesc_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->updateDesc_:Ljava/lang/Object;
    invoke-static {v3, v7}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->access$7002(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3551
    and-int/lit8 v7, v2, 0x1

    const/4 v8, 0x1

    if-ne v7, v8, :cond_40

    .line 3552
    or-int/lit8 v6, v6, 0x1

    .line 3554
    :cond_40
    iget v7, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->category1_:I

    # setter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->category1_:I
    invoke-static {v3, v7}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->access$7102(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;I)I

    .line 3555
    and-int/lit8 v7, v2, 0x2

    const/4 v8, 0x2

    if-ne v7, v8, :cond_41

    .line 3556
    or-int/lit8 v6, v6, 0x2

    .line 3558
    :cond_41
    iget v7, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->category2_:I

    # setter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->category2_:I
    invoke-static {v3, v7}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->access$7202(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;I)I

    .line 3559
    and-int/lit8 v7, v2, 0x4

    const/4 v8, 0x4

    if-ne v7, v8, :cond_42

    .line 3560
    or-int/lit8 v6, v6, 0x4

    .line 3562
    :cond_42
    iget v7, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->labelId_:I

    # setter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->labelId_:I
    invoke-static {v3, v7}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->access$7302(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;I)I

    .line 3563
    and-int/lit8 v7, v2, 0x8

    const/16 v8, 0x8

    if-ne v7, v8, :cond_43

    .line 3564
    or-int/lit8 v6, v6, 0x8

    .line 3566
    :cond_43
    iget-object v7, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->barCodePath_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->barCodePath_:Ljava/lang/Object;
    invoke-static {v3, v7}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->access$7402(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3567
    and-int/lit8 v7, v2, 0x10

    const/16 v8, 0x10

    if-ne v7, v8, :cond_44

    .line 3568
    or-int/lit8 v6, v6, 0x10

    .line 3570
    :cond_44
    iget-object v7, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->authorEmail_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->authorEmail_:Ljava/lang/Object;
    invoke-static {v3, v7}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->access$7502(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3571
    and-int/lit8 v7, v2, 0x20

    const/16 v8, 0x20

    if-ne v7, v8, :cond_45

    .line 3572
    or-int/lit8 v6, v6, 0x20

    .line 3574
    :cond_45
    iget v7, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->isFit_:I

    # setter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->isFit_:I
    invoke-static {v3, v7}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->access$7602(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;I)I

    .line 3575
    and-int/lit8 v7, v2, 0x40

    const/16 v8, 0x40

    if-ne v7, v8, :cond_46

    .line 3576
    or-int/lit8 v6, v6, 0x40

    .line 3578
    :cond_46
    iget-object v7, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->hdscreenshot1_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->hdscreenshot1_:Ljava/lang/Object;
    invoke-static {v3, v7}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->access$7702(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3579
    and-int/lit16 v7, v2, 0x80

    const/16 v8, 0x80

    if-ne v7, v8, :cond_47

    .line 3580
    or-int/lit16 v6, v6, 0x80

    .line 3582
    :cond_47
    iget-object v7, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->hdscreenshot2_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->hdscreenshot2_:Ljava/lang/Object;
    invoke-static {v3, v7}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->access$7802(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3583
    and-int/lit16 v7, v2, 0x100

    const/16 v8, 0x100

    if-ne v7, v8, :cond_48

    .line 3584
    or-int/lit16 v6, v6, 0x100

    .line 3586
    :cond_48
    iget-object v7, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->hdscreenshot3_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->hdscreenshot3_:Ljava/lang/Object;
    invoke-static {v3, v7}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->access$7902(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3587
    and-int/lit16 v7, v2, 0x200

    const/16 v8, 0x200

    if-ne v7, v8, :cond_49

    .line 3588
    or-int/lit16 v6, v6, 0x200

    .line 3590
    :cond_49
    iget-object v7, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->hdscreenshot4_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->hdscreenshot4_:Ljava/lang/Object;
    invoke-static {v3, v7}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->access$8002(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3591
    and-int/lit16 v7, v2, 0x400

    const/16 v8, 0x400

    if-ne v7, v8, :cond_4a

    .line 3592
    or-int/lit16 v6, v6, 0x400

    .line 3594
    :cond_4a
    iget-object v7, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->hdscreenshot5_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->hdscreenshot5_:Ljava/lang/Object;
    invoke-static {v3, v7}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->access$8102(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3595
    and-int/lit16 v7, v2, 0x800

    const/16 v8, 0x800

    if-ne v7, v8, :cond_4b

    .line 3596
    or-int/lit16 v6, v6, 0x800

    .line 3598
    :cond_4b
    iget-object v7, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->labelUrl_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->labelUrl_:Ljava/lang/Object;
    invoke-static {v3, v7}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->access$8202(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3599
    and-int/lit16 v7, v2, 0x1000

    const/16 v8, 0x1000

    if-ne v7, v8, :cond_4c

    .line 3600
    or-int/lit16 v6, v6, 0x1000

    .line 3602
    :cond_4c
    iget-object v7, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->osName_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->osName_:Ljava/lang/Object;
    invoke-static {v3, v7}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->access$8302(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3603
    # setter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->bitField0_:I
    invoke-static {v3, v4}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->access$8402(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;I)I

    .line 3604
    # setter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->bitField1_:I
    invoke-static {v3, v5}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->access$8502(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;I)I

    .line 3605
    # setter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->bitField2_:I
    invoke-static {v3, v6}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->access$8602(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;I)I

    .line 3606
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onBuilt()V

    .line 3607
    return-object v3
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 3063
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->clear()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 3063
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->clear()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3063
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->clear()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3063
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->clear()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 9

    .prologue
    const v8, -0x20000001

    const v3, -0x40000001    # -1.9999999f

    const-wide/16 v6, 0x0

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 3096
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 3097
    iput-wide v4, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->id_:J

    .line 3098
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 3099
    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->userId_:I

    .line 3100
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 3101
    iput-wide v4, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->createTime_:J

    .line 3102
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 3103
    iput-wide v4, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->updateTime_:J

    .line 3104
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 3105
    iput-wide v4, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->releaseTime_:J

    .line 3106
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 3107
    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->categoryId_:I

    .line 3108
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 3109
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->appName_:Ljava/lang/Object;

    .line 3110
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 3111
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->filePath_:Ljava/lang/Object;

    .line 3112
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 3113
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->fileMd5_:Ljava/lang/Object;

    .line 3114
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 3115
    iput-wide v4, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->fileSize_:J

    .line 3116
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 3117
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->fileName_:Ljava/lang/Object;

    .line 3118
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 3119
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->description_:Ljava/lang/Object;

    .line 3120
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 3121
    iput-wide v6, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->price_:D

    .line 3122
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 3123
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->packagePermissions_:Ljava/lang/Object;

    .line 3124
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 3125
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->packageName_:Ljava/lang/Object;

    .line 3126
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 3127
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->apkVersName_:Ljava/lang/Object;

    .line 3128
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 3129
    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->apkVers_:I

    .line 3130
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 3131
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->exceptList_:Ljava/lang/Object;

    .line 3132
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 3133
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->iconUrl_:Ljava/lang/Object;

    .line 3134
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 3135
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->pic1_:Ljava/lang/Object;

    .line 3136
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 3137
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->pic2_:Ljava/lang/Object;

    .line 3138
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    const v1, -0x100001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 3139
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->pic3_:Ljava/lang/Object;

    .line 3140
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 3141
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->pic4_:Ljava/lang/Object;

    .line 3142
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    const v1, -0x400001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 3143
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->pic5_:Ljava/lang/Object;

    .line 3144
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    const v1, -0x800001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 3145
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->iconMd5_:Ljava/lang/Object;

    .line 3146
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    const v1, -0x1000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 3147
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->pic1Md5_:Ljava/lang/Object;

    .line 3148
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    const v1, -0x2000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 3149
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->pic2Md5_:Ljava/lang/Object;

    .line 3150
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    const v1, -0x4000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 3151
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->pic3Md5_:Ljava/lang/Object;

    .line 3152
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    const v1, -0x8000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 3153
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->pic4Md5_:Ljava/lang/Object;

    .line 3154
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    const v1, -0x10000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 3155
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->pic5Md5_:Ljava/lang/Object;

    .line 3156
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    and-int/2addr v0, v8

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 3157
    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->salesNum_:I

    .line 3158
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    and-int/2addr v0, v3

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 3159
    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->isFree_:I

    .line 3160
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 3161
    iput-wide v6, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->salesAmount_:D

    .line 3162
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 3163
    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->downNum_:I

    .line 3164
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 3165
    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->lookNum_:I

    .line 3166
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 3167
    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->lookNumPC_:I

    .line 3168
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 3169
    iput-wide v6, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->avgGrade_:D

    .line 3170
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 3171
    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->gradeNum_:I

    .line 3172
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 3173
    iput-wide v4, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->masterId_:J

    .line 3174
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 3175
    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->platform_:I

    .line 3176
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 3177
    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onlineDays_:I

    .line 3178
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 3179
    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->encryptType_:I

    .line 3180
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 3181
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->encryptKey_:Ljava/lang/Object;

    .line 3182
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 3183
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->addUrl1_:Ljava/lang/Object;

    .line 3184
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 3185
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->addUrl2_:Ljava/lang/Object;

    .line 3186
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 3187
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->addMd51_:Ljava/lang/Object;

    .line 3188
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 3189
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->addMd52_:Ljava/lang/Object;

    .line 3190
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 3191
    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->state_:I

    .line 3192
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 3193
    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->appType_:I

    .line 3194
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 3195
    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->payFlag_:I

    .line 3196
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 3197
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->categoryName_:Ljava/lang/Object;

    .line 3198
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 3199
    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->point_:I

    .line 3200
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 3201
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->shortDesc_:Ljava/lang/Object;

    .line 3202
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    const v1, -0x100001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 3203
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->adaptInfo_:Ljava/lang/Object;

    .line 3204
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 3205
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->downSpan_:Ljava/lang/Object;

    .line 3206
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    const v1, -0x400001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 3207
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->webUrl_:Ljava/lang/Object;

    .line 3208
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    const v1, -0x800001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 3209
    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->commentNum_:I

    .line 3210
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    const v1, -0x1000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 3211
    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->topCategoryId_:I

    .line 3212
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    const v1, -0x2000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 3213
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->categoryLabel_:Ljava/lang/Object;

    .line 3214
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    const v1, -0x4000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 3215
    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->isNew_:I

    .line 3216
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    const v1, -0x8000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 3217
    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->position_:I

    .line 3218
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    const v1, -0x10000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 3219
    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->os_:I

    .line 3220
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    and-int/2addr v0, v8

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 3221
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->author_:Ljava/lang/Object;

    .line 3222
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    and-int/2addr v0, v3

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 3223
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->updateDesc_:Ljava/lang/Object;

    .line 3224
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 3225
    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->category1_:I

    .line 3226
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    .line 3227
    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->category2_:I

    .line 3228
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    .line 3229
    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->labelId_:I

    .line 3230
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    .line 3231
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->barCodePath_:Ljava/lang/Object;

    .line 3232
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    .line 3233
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->authorEmail_:Ljava/lang/Object;

    .line 3234
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    .line 3235
    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->isFit_:I

    .line 3236
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    .line 3237
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->hdscreenshot1_:Ljava/lang/Object;

    .line 3238
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    .line 3239
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->hdscreenshot2_:Ljava/lang/Object;

    .line 3240
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    .line 3241
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->hdscreenshot3_:Ljava/lang/Object;

    .line 3242
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    .line 3243
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->hdscreenshot4_:Ljava/lang/Object;

    .line 3244
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    .line 3245
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->hdscreenshot5_:Ljava/lang/Object;

    .line 3246
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    .line 3247
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->labelUrl_:Ljava/lang/Object;

    .line 3248
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    .line 3249
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->osName_:Ljava/lang/Object;

    .line 3250
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    .line 3251
    return-object p0
.end method

.method public clearAdaptInfo()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 2

    .prologue
    .line 6110
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 6111
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getAdaptInfo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->adaptInfo_:Ljava/lang/Object;

    .line 6112
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 6113
    return-object p0
.end method

.method public clearAddMd51()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 1

    .prologue
    .line 5842
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 5843
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getAddMd51()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->addMd51_:Ljava/lang/Object;

    .line 5844
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 5845
    return-object p0
.end method

.method public clearAddMd52()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 1

    .prologue
    .line 5884
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 5885
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getAddMd52()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->addMd52_:Ljava/lang/Object;

    .line 5886
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 5887
    return-object p0
.end method

.method public clearAddUrl1()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 1

    .prologue
    .line 5758
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 5759
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getAddUrl1()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->addUrl1_:Ljava/lang/Object;

    .line 5760
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 5761
    return-object p0
.end method

.method public clearAddUrl2()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 1

    .prologue
    .line 5800
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 5801
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getAddUrl2()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->addUrl2_:Ljava/lang/Object;

    .line 5802
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 5803
    return-object p0
.end method

.method public clearApkVers()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 2

    .prologue
    .line 4834
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 4835
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->apkVers_:I

    .line 4836
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 4837
    return-object p0
.end method

.method public clearApkVersName()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 2

    .prologue
    .line 4803
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 4804
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getApkVersName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->apkVersName_:Ljava/lang/Object;

    .line 4805
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 4806
    return-object p0
.end method

.method public clearAppName()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 1

    .prologue
    .line 4458
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 4459
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getAppName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->appName_:Ljava/lang/Object;

    .line 4460
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 4461
    return-object p0
.end method

.method public clearAppType()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 2

    .prologue
    .line 5940
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 5941
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->appType_:I

    .line 5942
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 5943
    return-object p0
.end method

.method public clearAuthor()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 2

    .prologue
    .line 6403
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    const v1, -0x40000001    # -1.9999999f

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 6404
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getAuthor()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->author_:Ljava/lang/Object;

    .line 6405
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 6406
    return-object p0
.end method

.method public clearAuthorEmail()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 1

    .prologue
    .line 6604
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    .line 6605
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getAuthorEmail()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->authorEmail_:Ljava/lang/Object;

    .line 6606
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 6607
    return-object p0
.end method

.method public clearAvgGrade()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 2

    .prologue
    .line 5555
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 5556
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->avgGrade_:D

    .line 5557
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 5558
    return-object p0
.end method

.method public clearBarCodePath()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 1

    .prologue
    .line 6562
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    .line 6563
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getBarCodePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->barCodePath_:Ljava/lang/Object;

    .line 6564
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 6565
    return-object p0
.end method

.method public clearCategory1()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 1

    .prologue
    .line 6476
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    .line 6477
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->category1_:I

    .line 6478
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 6479
    return-object p0
.end method

.method public clearCategory2()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 1

    .prologue
    .line 6501
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    .line 6502
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->category2_:I

    .line 6503
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 6504
    return-object p0
.end method

.method public clearCategoryId()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 1

    .prologue
    .line 4422
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 4423
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->categoryId_:I

    .line 4424
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 4425
    return-object p0
.end method

.method public clearCategoryLabel()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 2

    .prologue
    .line 6286
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    const v1, -0x4000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 6287
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getCategoryLabel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->categoryLabel_:Ljava/lang/Object;

    .line 6288
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 6289
    return-object p0
.end method

.method public clearCategoryName()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 2

    .prologue
    .line 6001
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 6002
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getCategoryName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->categoryName_:Ljava/lang/Object;

    .line 6003
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 6004
    return-object p0
.end method

.method public clearCommentNum()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 2

    .prologue
    .line 6225
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    const v1, -0x1000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 6226
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->commentNum_:I

    .line 6227
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 6228
    return-object p0
.end method

.method public clearCreateTime()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 2

    .prologue
    .line 4347
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 4348
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->createTime_:J

    .line 4349
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 4350
    return-object p0
.end method

.method public clearDescription()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 1

    .prologue
    .line 4651
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 4652
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->description_:Ljava/lang/Object;

    .line 4653
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 4654
    return-object p0
.end method

.method public clearDownNum()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 1

    .prologue
    .line 5480
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 5481
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->downNum_:I

    .line 5482
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 5483
    return-object p0
.end method

.method public clearDownSpan()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 2

    .prologue
    .line 6152
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    const v1, -0x400001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 6153
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getDownSpan()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->downSpan_:Ljava/lang/Object;

    .line 6154
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 6155
    return-object p0
.end method

.method public clearEncryptKey()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 1

    .prologue
    .line 5716
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 5717
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getEncryptKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->encryptKey_:Ljava/lang/Object;

    .line 5718
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 5719
    return-object p0
.end method

.method public clearEncryptType()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 1

    .prologue
    .line 5680
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 5681
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->encryptType_:I

    .line 5682
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 5683
    return-object p0
.end method

.method public clearExceptList()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 2

    .prologue
    .line 4870
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 4871
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getExceptList()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->exceptList_:Ljava/lang/Object;

    .line 4872
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 4873
    return-object p0
.end method

.method public clearFileMd5()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 1

    .prologue
    .line 4542
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 4543
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getFileMd5()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->fileMd5_:Ljava/lang/Object;

    .line 4544
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 4545
    return-object p0
.end method

.method public clearFileName()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 1

    .prologue
    .line 4609
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 4610
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getFileName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->fileName_:Ljava/lang/Object;

    .line 4611
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 4612
    return-object p0
.end method

.method public clearFilePath()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 1

    .prologue
    .line 4500
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 4501
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getFilePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->filePath_:Ljava/lang/Object;

    .line 4502
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 4503
    return-object p0
.end method

.method public clearFileSize()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 2

    .prologue
    .line 4573
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 4574
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->fileSize_:J

    .line 4575
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 4576
    return-object p0
.end method

.method public clearGradeNum()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 1

    .prologue
    .line 5580
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 5581
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->gradeNum_:I

    .line 5582
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 5583
    return-object p0
.end method

.method public clearHdscreenshot1()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 1

    .prologue
    .line 6671
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    .line 6672
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getHdscreenshot1()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->hdscreenshot1_:Ljava/lang/Object;

    .line 6673
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 6674
    return-object p0
.end method

.method public clearHdscreenshot2()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 1

    .prologue
    .line 6713
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    .line 6714
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getHdscreenshot2()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->hdscreenshot2_:Ljava/lang/Object;

    .line 6715
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 6716
    return-object p0
.end method

.method public clearHdscreenshot3()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 1

    .prologue
    .line 6755
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    .line 6756
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getHdscreenshot3()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->hdscreenshot3_:Ljava/lang/Object;

    .line 6757
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 6758
    return-object p0
.end method

.method public clearHdscreenshot4()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 1

    .prologue
    .line 6797
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    .line 6798
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getHdscreenshot4()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->hdscreenshot4_:Ljava/lang/Object;

    .line 6799
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 6800
    return-object p0
.end method

.method public clearHdscreenshot5()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 1

    .prologue
    .line 6839
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    .line 6840
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getHdscreenshot5()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->hdscreenshot5_:Ljava/lang/Object;

    .line 6841
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 6842
    return-object p0
.end method

.method public clearIconMd5()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 2

    .prologue
    .line 5164
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    const v1, -0x1000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 5165
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getIconMd5()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->iconMd5_:Ljava/lang/Object;

    .line 5166
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 5167
    return-object p0
.end method

.method public clearIconUrl()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 2

    .prologue
    .line 4912
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 4913
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->iconUrl_:Ljava/lang/Object;

    .line 4914
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 4915
    return-object p0
.end method

.method public clearId()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 2

    .prologue
    .line 4297
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 4298
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->id_:J

    .line 4299
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 4300
    return-object p0
.end method

.method public clearIsFit()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 1

    .prologue
    .line 6635
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    .line 6636
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->isFit_:I

    .line 6637
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 6638
    return-object p0
.end method

.method public clearIsFree()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 2

    .prologue
    .line 5430
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 5431
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->isFree_:I

    .line 5432
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 5433
    return-object p0
.end method

.method public clearIsNew()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 2

    .prologue
    .line 6317
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    const v1, -0x8000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 6318
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->isNew_:I

    .line 6319
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 6320
    return-object p0
.end method

.method public clearLabelId()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 1

    .prologue
    .line 6526
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    .line 6527
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->labelId_:I

    .line 6528
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 6529
    return-object p0
.end method

.method public clearLabelUrl()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 1

    .prologue
    .line 6881
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    .line 6882
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getLabelUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->labelUrl_:Ljava/lang/Object;

    .line 6883
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 6884
    return-object p0
.end method

.method public clearLookNum()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 1

    .prologue
    .line 5505
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 5506
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->lookNum_:I

    .line 5507
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 5508
    return-object p0
.end method

.method public clearLookNumPC()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 1

    .prologue
    .line 5530
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 5531
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->lookNumPC_:I

    .line 5532
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 5533
    return-object p0
.end method

.method public clearMasterId()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 2

    .prologue
    .line 5605
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 5606
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->masterId_:J

    .line 5607
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 5608
    return-object p0
.end method

.method public clearOnlineDays()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 1

    .prologue
    .line 5655
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 5656
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onlineDays_:I

    .line 5657
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 5658
    return-object p0
.end method

.method public clearOs()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 2

    .prologue
    .line 6367
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    const v1, -0x20000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 6368
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->os_:I

    .line 6369
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 6370
    return-object p0
.end method

.method public clearOsName()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 1

    .prologue
    .line 6923
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    .line 6924
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getOsName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->osName_:Ljava/lang/Object;

    .line 6925
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 6926
    return-object p0
.end method

.method public clearPackageName()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 1

    .prologue
    .line 4761
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 4762
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->packageName_:Ljava/lang/Object;

    .line 4763
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 4764
    return-object p0
.end method

.method public clearPackagePermissions()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 1

    .prologue
    .line 4718
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 4719
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getPackagePermissions()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->packagePermissions_:Ljava/lang/Object;

    .line 4721
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 4722
    return-object p0
.end method

.method public clearPayFlag()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 2

    .prologue
    .line 5965
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 5966
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->payFlag_:I

    .line 5967
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 5968
    return-object p0
.end method

.method public clearPic1()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 2

    .prologue
    .line 4954
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 4955
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getPic1()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->pic1_:Ljava/lang/Object;

    .line 4956
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 4957
    return-object p0
.end method

.method public clearPic1Md5()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 2

    .prologue
    .line 5206
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    const v1, -0x2000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 5207
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getPic1Md5()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->pic1Md5_:Ljava/lang/Object;

    .line 5208
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 5209
    return-object p0
.end method

.method public clearPic2()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 2

    .prologue
    .line 4996
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    const v1, -0x100001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 4997
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getPic2()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->pic2_:Ljava/lang/Object;

    .line 4998
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 4999
    return-object p0
.end method

.method public clearPic2Md5()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 2

    .prologue
    .line 5248
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    const v1, -0x4000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 5249
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getPic2Md5()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->pic2Md5_:Ljava/lang/Object;

    .line 5250
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 5251
    return-object p0
.end method

.method public clearPic3()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 2

    .prologue
    .line 5038
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 5039
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getPic3()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->pic3_:Ljava/lang/Object;

    .line 5040
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 5041
    return-object p0
.end method

.method public clearPic3Md5()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 2

    .prologue
    .line 5290
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    const v1, -0x8000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 5291
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getPic3Md5()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->pic3Md5_:Ljava/lang/Object;

    .line 5292
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 5293
    return-object p0
.end method

.method public clearPic4()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 2

    .prologue
    .line 5080
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    const v1, -0x400001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 5081
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getPic4()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->pic4_:Ljava/lang/Object;

    .line 5082
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 5083
    return-object p0
.end method

.method public clearPic4Md5()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 2

    .prologue
    .line 5332
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    const v1, -0x10000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 5333
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getPic4Md5()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->pic4Md5_:Ljava/lang/Object;

    .line 5334
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 5335
    return-object p0
.end method

.method public clearPic5()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 2

    .prologue
    .line 5122
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    const v1, -0x800001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 5123
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getPic5()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->pic5_:Ljava/lang/Object;

    .line 5124
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 5125
    return-object p0
.end method

.method public clearPic5Md5()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 2

    .prologue
    .line 5374
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    const v1, -0x20000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 5375
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getPic5Md5()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->pic5Md5_:Ljava/lang/Object;

    .line 5376
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 5377
    return-object p0
.end method

.method public clearPlatform()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 1

    .prologue
    .line 5630
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 5631
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->platform_:I

    .line 5632
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 5633
    return-object p0
.end method

.method public clearPoint()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 2

    .prologue
    .line 6032
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 6033
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->point_:I

    .line 6034
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 6035
    return-object p0
.end method

.method public clearPosition()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 2

    .prologue
    .line 6342
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    const v1, -0x10000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 6343
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->position_:I

    .line 6344
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 6345
    return-object p0
.end method

.method public clearPrice()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 2

    .prologue
    .line 4682
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 4683
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->price_:D

    .line 4684
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 4685
    return-object p0
.end method

.method public clearReleaseTime()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 2

    .prologue
    .line 4397
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 4398
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->releaseTime_:J

    .line 4399
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 4400
    return-object p0
.end method

.method public clearSalesAmount()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 2

    .prologue
    .line 5455
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 5456
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->salesAmount_:D

    .line 5457
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 5458
    return-object p0
.end method

.method public clearSalesNum()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 2

    .prologue
    .line 5405
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    const v1, -0x40000001    # -1.9999999f

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 5406
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->salesNum_:I

    .line 5407
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 5408
    return-object p0
.end method

.method public clearShortDesc()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 2

    .prologue
    .line 6068
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    const v1, -0x100001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 6069
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getShortDesc()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->shortDesc_:Ljava/lang/Object;

    .line 6070
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 6071
    return-object p0
.end method

.method public clearState()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 2

    .prologue
    .line 5915
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 5916
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->state_:I

    .line 5917
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 5918
    return-object p0
.end method

.method public clearTopCategoryId()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 2

    .prologue
    .line 6250
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    const v1, -0x2000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 6251
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->topCategoryId_:I

    .line 6252
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 6253
    return-object p0
.end method

.method public clearUpdateDesc()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 2

    .prologue
    .line 6445
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 6446
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getUpdateDesc()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->updateDesc_:Ljava/lang/Object;

    .line 6447
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 6448
    return-object p0
.end method

.method public clearUpdateTime()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 2

    .prologue
    .line 4372
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 4373
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->updateTime_:J

    .line 4374
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 4375
    return-object p0
.end method

.method public clearUserId()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 1

    .prologue
    .line 4322
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 4323
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->userId_:I

    .line 4324
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 4325
    return-object p0
.end method

.method public clearWebUrl()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 2

    .prologue
    .line 6194
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    const v1, -0x800001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 6195
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getWebUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->webUrl_:Ljava/lang/Object;

    .line 6196
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 6197
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 3063
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->clone()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 3063
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->clone()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 3063
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->clone()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3063
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->clone()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3063
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->clone()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 2

    .prologue
    .line 3255
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->create()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 3063
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->clone()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAdaptInfo()Ljava/lang/String;
    .locals 3

    .prologue
    .line 6088
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->adaptInfo_:Ljava/lang/Object;

    .line 6089
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 6090
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 6092
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->adaptInfo_:Ljava/lang/Object;

    .line 6095
    .end local v1    # "s":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0    # "ref":Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getAddMd51()Ljava/lang/String;
    .locals 3

    .prologue
    .line 5820
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->addMd51_:Ljava/lang/Object;

    .line 5821
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 5822
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 5824
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->addMd51_:Ljava/lang/Object;

    .line 5827
    .end local v1    # "s":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0    # "ref":Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getAddMd52()Ljava/lang/String;
    .locals 3

    .prologue
    .line 5862
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->addMd52_:Ljava/lang/Object;

    .line 5863
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 5864
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 5866
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->addMd52_:Ljava/lang/Object;

    .line 5869
    .end local v1    # "s":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0    # "ref":Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getAddUrl1()Ljava/lang/String;
    .locals 3

    .prologue
    .line 5736
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->addUrl1_:Ljava/lang/Object;

    .line 5737
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 5738
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 5740
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->addUrl1_:Ljava/lang/Object;

    .line 5743
    .end local v1    # "s":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0    # "ref":Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getAddUrl2()Ljava/lang/String;
    .locals 3

    .prologue
    .line 5778
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->addUrl2_:Ljava/lang/Object;

    .line 5779
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 5780
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 5782
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->addUrl2_:Ljava/lang/Object;

    .line 5785
    .end local v1    # "s":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0    # "ref":Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getApkVers()I
    .locals 1

    .prologue
    .line 4823
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->apkVers_:I

    return v0
.end method

.method public getApkVersName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 4781
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->apkVersName_:Ljava/lang/Object;

    .line 4782
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 4783
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 4785
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->apkVersName_:Ljava/lang/Object;

    .line 4788
    .end local v1    # "s":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0    # "ref":Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 4436
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->appName_:Ljava/lang/Object;

    .line 4437
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 4438
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 4440
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->appName_:Ljava/lang/Object;

    .line 4443
    .end local v1    # "s":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0    # "ref":Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getAppType()I
    .locals 1

    .prologue
    .line 5929
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->appType_:I

    return v0
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 3

    .prologue
    .line 6381
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->author_:Ljava/lang/Object;

    .line 6382
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 6383
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 6385
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->author_:Ljava/lang/Object;

    .line 6388
    .end local v1    # "s":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0    # "ref":Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getAuthorEmail()Ljava/lang/String;
    .locals 3

    .prologue
    .line 6582
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->authorEmail_:Ljava/lang/Object;

    .line 6583
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 6584
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 6586
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->authorEmail_:Ljava/lang/Object;

    .line 6589
    .end local v1    # "s":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0    # "ref":Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getAvgGrade()D
    .locals 2

    .prologue
    .line 5544
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->avgGrade_:D

    return-wide v0
.end method

.method public getBarCodePath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 6540
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->barCodePath_:Ljava/lang/Object;

    .line 6541
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 6542
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 6544
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->barCodePath_:Ljava/lang/Object;

    .line 6547
    .end local v1    # "s":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0    # "ref":Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getCategory1()I
    .locals 1

    .prologue
    .line 6465
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->category1_:I

    return v0
.end method

.method public getCategory2()I
    .locals 1

    .prologue
    .line 6490
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->category2_:I

    return v0
.end method

.method public getCategoryId()I
    .locals 1

    .prologue
    .line 4411
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->categoryId_:I

    return v0
.end method

.method public getCategoryLabel()Ljava/lang/String;
    .locals 3

    .prologue
    .line 6264
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->categoryLabel_:Ljava/lang/Object;

    .line 6265
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 6266
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 6268
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->categoryLabel_:Ljava/lang/Object;

    .line 6271
    .end local v1    # "s":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0    # "ref":Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getCategoryName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 5979
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->categoryName_:Ljava/lang/Object;

    .line 5980
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 5981
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 5983
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->categoryName_:Ljava/lang/Object;

    .line 5986
    .end local v1    # "s":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0    # "ref":Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getCommentNum()I
    .locals 1

    .prologue
    .line 6214
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->commentNum_:I

    return v0
.end method

.method public getCreateTime()J
    .locals 2

    .prologue
    .line 4336
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->createTime_:J

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3063
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3063
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;
    .locals 1

    .prologue
    .line 3264
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 3

    .prologue
    .line 4629
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->description_:Ljava/lang/Object;

    .line 4630
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 4631
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 4633
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->description_:Ljava/lang/Object;

    .line 4636
    .end local v1    # "s":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0    # "ref":Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 3259
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDownNum()I
    .locals 1

    .prologue
    .line 5469
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->downNum_:I

    return v0
.end method

.method public getDownSpan()Ljava/lang/String;
    .locals 3

    .prologue
    .line 6130
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->downSpan_:Ljava/lang/Object;

    .line 6131
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 6132
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 6134
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->downSpan_:Ljava/lang/Object;

    .line 6137
    .end local v1    # "s":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0    # "ref":Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getEncryptKey()Ljava/lang/String;
    .locals 3

    .prologue
    .line 5694
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->encryptKey_:Ljava/lang/Object;

    .line 5695
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 5696
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 5698
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->encryptKey_:Ljava/lang/Object;

    .line 5701
    .end local v1    # "s":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0    # "ref":Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getEncryptType()I
    .locals 1

    .prologue
    .line 5669
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->encryptType_:I

    return v0
.end method

.method public getExceptList()Ljava/lang/String;
    .locals 3

    .prologue
    .line 4848
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->exceptList_:Ljava/lang/Object;

    .line 4849
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 4850
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 4852
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->exceptList_:Ljava/lang/Object;

    .line 4855
    .end local v1    # "s":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0    # "ref":Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getFileMd5()Ljava/lang/String;
    .locals 3

    .prologue
    .line 4520
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->fileMd5_:Ljava/lang/Object;

    .line 4521
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 4522
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 4524
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->fileMd5_:Ljava/lang/Object;

    .line 4527
    .end local v1    # "s":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0    # "ref":Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 4587
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->fileName_:Ljava/lang/Object;

    .line 4588
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 4589
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 4591
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->fileName_:Ljava/lang/Object;

    .line 4594
    .end local v1    # "s":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0    # "ref":Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 4478
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->filePath_:Ljava/lang/Object;

    .line 4479
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 4480
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 4482
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->filePath_:Ljava/lang/Object;

    .line 4485
    .end local v1    # "s":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0    # "ref":Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getFileSize()J
    .locals 2

    .prologue
    .line 4562
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->fileSize_:J

    return-wide v0
.end method

.method public getGradeNum()I
    .locals 1

    .prologue
    .line 5569
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->gradeNum_:I

    return v0
.end method

.method public getHdscreenshot1()Ljava/lang/String;
    .locals 3

    .prologue
    .line 6649
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->hdscreenshot1_:Ljava/lang/Object;

    .line 6650
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 6651
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 6653
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->hdscreenshot1_:Ljava/lang/Object;

    .line 6656
    .end local v1    # "s":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0    # "ref":Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getHdscreenshot2()Ljava/lang/String;
    .locals 3

    .prologue
    .line 6691
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->hdscreenshot2_:Ljava/lang/Object;

    .line 6692
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 6693
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 6695
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->hdscreenshot2_:Ljava/lang/Object;

    .line 6698
    .end local v1    # "s":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0    # "ref":Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getHdscreenshot3()Ljava/lang/String;
    .locals 3

    .prologue
    .line 6733
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->hdscreenshot3_:Ljava/lang/Object;

    .line 6734
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 6735
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 6737
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->hdscreenshot3_:Ljava/lang/Object;

    .line 6740
    .end local v1    # "s":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0    # "ref":Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getHdscreenshot4()Ljava/lang/String;
    .locals 3

    .prologue
    .line 6775
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->hdscreenshot4_:Ljava/lang/Object;

    .line 6776
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 6777
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 6779
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->hdscreenshot4_:Ljava/lang/Object;

    .line 6782
    .end local v1    # "s":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0    # "ref":Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getHdscreenshot5()Ljava/lang/String;
    .locals 3

    .prologue
    .line 6817
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->hdscreenshot5_:Ljava/lang/Object;

    .line 6818
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 6819
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 6821
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->hdscreenshot5_:Ljava/lang/Object;

    .line 6824
    .end local v1    # "s":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0    # "ref":Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getIconMd5()Ljava/lang/String;
    .locals 3

    .prologue
    .line 5142
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->iconMd5_:Ljava/lang/Object;

    .line 5143
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 5144
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 5146
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->iconMd5_:Ljava/lang/Object;

    .line 5149
    .end local v1    # "s":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0    # "ref":Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 4890
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->iconUrl_:Ljava/lang/Object;

    .line 4891
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 4892
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 4894
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->iconUrl_:Ljava/lang/Object;

    .line 4897
    .end local v1    # "s":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0    # "ref":Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 4286
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->id_:J

    return-wide v0
.end method

.method public getIsFit()I
    .locals 1

    .prologue
    .line 6624
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->isFit_:I

    return v0
.end method

.method public getIsFree()I
    .locals 1

    .prologue
    .line 5419
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->isFree_:I

    return v0
.end method

.method public getIsNew()I
    .locals 1

    .prologue
    .line 6306
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->isNew_:I

    return v0
.end method

.method public getLabelId()I
    .locals 1

    .prologue
    .line 6515
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->labelId_:I

    return v0
.end method

.method public getLabelUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 6859
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->labelUrl_:Ljava/lang/Object;

    .line 6860
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 6861
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 6863
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->labelUrl_:Ljava/lang/Object;

    .line 6866
    .end local v1    # "s":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0    # "ref":Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getLookNum()I
    .locals 1

    .prologue
    .line 5494
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->lookNum_:I

    return v0
.end method

.method public getLookNumPC()I
    .locals 1

    .prologue
    .line 5519
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->lookNumPC_:I

    return v0
.end method

.method public getMasterId()J
    .locals 2

    .prologue
    .line 5594
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->masterId_:J

    return-wide v0
.end method

.method public getOnlineDays()I
    .locals 1

    .prologue
    .line 5644
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onlineDays_:I

    return v0
.end method

.method public getOs()I
    .locals 1

    .prologue
    .line 6356
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->os_:I

    return v0
.end method

.method public getOsName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 6901
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->osName_:Ljava/lang/Object;

    .line 6902
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 6903
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 6905
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->osName_:Ljava/lang/Object;

    .line 6908
    .end local v1    # "s":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0    # "ref":Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 4739
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->packageName_:Ljava/lang/Object;

    .line 4740
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 4741
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 4743
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->packageName_:Ljava/lang/Object;

    .line 4746
    .end local v1    # "s":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0    # "ref":Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getPackagePermissions()Ljava/lang/String;
    .locals 3

    .prologue
    .line 4696
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->packagePermissions_:Ljava/lang/Object;

    .line 4697
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 4698
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 4700
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->packagePermissions_:Ljava/lang/Object;

    .line 4703
    .end local v1    # "s":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0    # "ref":Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getPayFlag()I
    .locals 1

    .prologue
    .line 5954
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->payFlag_:I

    return v0
.end method

.method public getPic1()Ljava/lang/String;
    .locals 3

    .prologue
    .line 4932
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->pic1_:Ljava/lang/Object;

    .line 4933
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 4934
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 4936
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->pic1_:Ljava/lang/Object;

    .line 4939
    .end local v1    # "s":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0    # "ref":Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getPic1Md5()Ljava/lang/String;
    .locals 3

    .prologue
    .line 5184
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->pic1Md5_:Ljava/lang/Object;

    .line 5185
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 5186
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 5188
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->pic1Md5_:Ljava/lang/Object;

    .line 5191
    .end local v1    # "s":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0    # "ref":Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getPic2()Ljava/lang/String;
    .locals 3

    .prologue
    .line 4974
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->pic2_:Ljava/lang/Object;

    .line 4975
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 4976
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 4978
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->pic2_:Ljava/lang/Object;

    .line 4981
    .end local v1    # "s":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0    # "ref":Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getPic2Md5()Ljava/lang/String;
    .locals 3

    .prologue
    .line 5226
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->pic2Md5_:Ljava/lang/Object;

    .line 5227
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 5228
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 5230
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->pic2Md5_:Ljava/lang/Object;

    .line 5233
    .end local v1    # "s":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0    # "ref":Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getPic3()Ljava/lang/String;
    .locals 3

    .prologue
    .line 5016
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->pic3_:Ljava/lang/Object;

    .line 5017
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 5018
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 5020
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->pic3_:Ljava/lang/Object;

    .line 5023
    .end local v1    # "s":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0    # "ref":Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getPic3Md5()Ljava/lang/String;
    .locals 3

    .prologue
    .line 5268
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->pic3Md5_:Ljava/lang/Object;

    .line 5269
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 5270
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 5272
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->pic3Md5_:Ljava/lang/Object;

    .line 5275
    .end local v1    # "s":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0    # "ref":Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getPic4()Ljava/lang/String;
    .locals 3

    .prologue
    .line 5058
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->pic4_:Ljava/lang/Object;

    .line 5059
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 5060
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 5062
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->pic4_:Ljava/lang/Object;

    .line 5065
    .end local v1    # "s":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0    # "ref":Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getPic4Md5()Ljava/lang/String;
    .locals 3

    .prologue
    .line 5310
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->pic4Md5_:Ljava/lang/Object;

    .line 5311
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 5312
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 5314
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->pic4Md5_:Ljava/lang/Object;

    .line 5317
    .end local v1    # "s":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0    # "ref":Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getPic5()Ljava/lang/String;
    .locals 3

    .prologue
    .line 5100
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->pic5_:Ljava/lang/Object;

    .line 5101
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 5102
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 5104
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->pic5_:Ljava/lang/Object;

    .line 5107
    .end local v1    # "s":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0    # "ref":Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getPic5Md5()Ljava/lang/String;
    .locals 3

    .prologue
    .line 5352
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->pic5Md5_:Ljava/lang/Object;

    .line 5353
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 5354
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 5356
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->pic5Md5_:Ljava/lang/Object;

    .line 5359
    .end local v1    # "s":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0    # "ref":Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getPlatform()I
    .locals 1

    .prologue
    .line 5619
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->platform_:I

    return v0
.end method

.method public getPoint()I
    .locals 1

    .prologue
    .line 6021
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->point_:I

    return v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 6331
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->position_:I

    return v0
.end method

.method public getPrice()D
    .locals 2

    .prologue
    .line 4671
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->price_:D

    return-wide v0
.end method

.method public getReleaseTime()J
    .locals 2

    .prologue
    .line 4386
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->releaseTime_:J

    return-wide v0
.end method

.method public getSalesAmount()D
    .locals 2

    .prologue
    .line 5444
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->salesAmount_:D

    return-wide v0
.end method

.method public getSalesNum()I
    .locals 1

    .prologue
    .line 5394
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->salesNum_:I

    return v0
.end method

.method public getShortDesc()Ljava/lang/String;
    .locals 3

    .prologue
    .line 6046
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->shortDesc_:Ljava/lang/Object;

    .line 6047
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 6048
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 6050
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->shortDesc_:Ljava/lang/Object;

    .line 6053
    .end local v1    # "s":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0    # "ref":Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 5904
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->state_:I

    return v0
.end method

.method public getTopCategoryId()I
    .locals 1

    .prologue
    .line 6239
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->topCategoryId_:I

    return v0
.end method

.method public getUpdateDesc()Ljava/lang/String;
    .locals 3

    .prologue
    .line 6423
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->updateDesc_:Ljava/lang/Object;

    .line 6424
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 6425
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 6427
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->updateDesc_:Ljava/lang/Object;

    .line 6430
    .end local v1    # "s":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0    # "ref":Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getUpdateTime()J
    .locals 2

    .prologue
    .line 4361
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->updateTime_:J

    return-wide v0
.end method

.method public getUserId()I
    .locals 1

    .prologue
    .line 4311
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->userId_:I

    return v0
.end method

.method public getWebUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 6172
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->webUrl_:Ljava/lang/Object;

    .line 6173
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 6174
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 6176
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->webUrl_:Ljava/lang/Object;

    .line 6179
    .end local v1    # "s":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0    # "ref":Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public hasAdaptInfo()Z
    .locals 2

    .prologue
    const/high16 v1, 0x200000

    .line 6084
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasAddMd51()Z
    .locals 2

    .prologue
    .line 5816
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasAddMd52()Z
    .locals 2

    .prologue
    .line 5858
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasAddUrl1()Z
    .locals 2

    .prologue
    .line 5732
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasAddUrl2()Z
    .locals 2

    .prologue
    .line 5774
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasApkVers()Z
    .locals 2

    .prologue
    const/high16 v1, 0x10000

    .line 4819
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasApkVersName()Z
    .locals 2

    .prologue
    const v1, 0x8000

    .line 4777
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasAppName()Z
    .locals 2

    .prologue
    .line 4432
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasAppType()Z
    .locals 2

    .prologue
    const/high16 v1, 0x10000

    .line 5925
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasAuthor()Z
    .locals 2

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    .line 6377
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasAuthorEmail()Z
    .locals 2

    .prologue
    .line 6578
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasAvgGrade()Z
    .locals 2

    .prologue
    .line 5540
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasBarCodePath()Z
    .locals 2

    .prologue
    .line 6536
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCategory1()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 6461
    iget v1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCategory2()Z
    .locals 2

    .prologue
    .line 6486
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCategoryId()Z
    .locals 2

    .prologue
    .line 4407
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCategoryLabel()Z
    .locals 2

    .prologue
    const/high16 v1, 0x4000000

    .line 6260
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCategoryName()Z
    .locals 2

    .prologue
    const/high16 v1, 0x40000

    .line 5975
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCommentNum()Z
    .locals 2

    .prologue
    const/high16 v1, 0x1000000

    .line 6210
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCreateTime()Z
    .locals 2

    .prologue
    .line 4332
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDescription()Z
    .locals 2

    .prologue
    .line 4625
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDownNum()Z
    .locals 2

    .prologue
    .line 5465
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDownSpan()Z
    .locals 2

    .prologue
    const/high16 v1, 0x400000

    .line 6126
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasEncryptKey()Z
    .locals 2

    .prologue
    .line 5690
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasEncryptType()Z
    .locals 2

    .prologue
    .line 5665
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasExceptList()Z
    .locals 2

    .prologue
    const/high16 v1, 0x20000

    .line 4844
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFileMd5()Z
    .locals 2

    .prologue
    .line 4516
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFileName()Z
    .locals 2

    .prologue
    .line 4583
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFilePath()Z
    .locals 2

    .prologue
    .line 4474
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFileSize()Z
    .locals 2

    .prologue
    .line 4558
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasGradeNum()Z
    .locals 2

    .prologue
    .line 5565
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHdscreenshot1()Z
    .locals 2

    .prologue
    .line 6645
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHdscreenshot2()Z
    .locals 2

    .prologue
    .line 6687
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHdscreenshot3()Z
    .locals 2

    .prologue
    .line 6729
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHdscreenshot4()Z
    .locals 2

    .prologue
    .line 6771
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHdscreenshot5()Z
    .locals 2

    .prologue
    .line 6813
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIconMd5()Z
    .locals 2

    .prologue
    const/high16 v1, 0x1000000

    .line 5138
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIconUrl()Z
    .locals 2

    .prologue
    const/high16 v1, 0x40000

    .line 4886
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 4282
    iget v1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIsFit()Z
    .locals 2

    .prologue
    .line 6620
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIsFree()Z
    .locals 2

    .prologue
    const/high16 v1, -0x80000000

    .line 5415
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIsNew()Z
    .locals 2

    .prologue
    const/high16 v1, 0x8000000

    .line 6302
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLabelId()Z
    .locals 2

    .prologue
    .line 6511
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLabelUrl()Z
    .locals 2

    .prologue
    .line 6855
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLookNum()Z
    .locals 2

    .prologue
    .line 5490
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLookNumPC()Z
    .locals 2

    .prologue
    .line 5515
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMasterId()Z
    .locals 2

    .prologue
    .line 5590
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOnlineDays()Z
    .locals 2

    .prologue
    .line 5640
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOs()Z
    .locals 2

    .prologue
    const/high16 v1, 0x20000000

    .line 6352
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOsName()Z
    .locals 2

    .prologue
    .line 6897
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPackageName()Z
    .locals 2

    .prologue
    .line 4735
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPackagePermissions()Z
    .locals 2

    .prologue
    .line 4692
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPayFlag()Z
    .locals 2

    .prologue
    const/high16 v1, 0x20000

    .line 5950
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPic1()Z
    .locals 2

    .prologue
    const/high16 v1, 0x80000

    .line 4928
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPic1Md5()Z
    .locals 2

    .prologue
    const/high16 v1, 0x2000000

    .line 5180
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPic2()Z
    .locals 2

    .prologue
    const/high16 v1, 0x100000

    .line 4970
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPic2Md5()Z
    .locals 2

    .prologue
    const/high16 v1, 0x4000000

    .line 5222
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPic3()Z
    .locals 2

    .prologue
    const/high16 v1, 0x200000

    .line 5012
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPic3Md5()Z
    .locals 2

    .prologue
    const/high16 v1, 0x8000000

    .line 5264
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPic4()Z
    .locals 2

    .prologue
    const/high16 v1, 0x400000

    .line 5054
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPic4Md5()Z
    .locals 2

    .prologue
    const/high16 v1, 0x10000000

    .line 5306
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPic5()Z
    .locals 2

    .prologue
    const/high16 v1, 0x800000

    .line 5096
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPic5Md5()Z
    .locals 2

    .prologue
    const/high16 v1, 0x20000000

    .line 5348
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPlatform()Z
    .locals 2

    .prologue
    .line 5615
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPoint()Z
    .locals 2

    .prologue
    const/high16 v1, 0x80000

    .line 6017
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPosition()Z
    .locals 2

    .prologue
    const/high16 v1, 0x10000000

    .line 6327
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPrice()Z
    .locals 2

    .prologue
    .line 4667
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasReleaseTime()Z
    .locals 2

    .prologue
    .line 4382
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSalesAmount()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 5440
    iget v1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSalesNum()Z
    .locals 2

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    .line 5390
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasShortDesc()Z
    .locals 2

    .prologue
    const/high16 v1, 0x100000

    .line 6042
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasState()Z
    .locals 2

    .prologue
    const v1, 0x8000

    .line 5900
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTopCategoryId()Z
    .locals 2

    .prologue
    const/high16 v1, 0x2000000

    .line 6235
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUpdateDesc()Z
    .locals 2

    .prologue
    const/high16 v1, -0x80000000

    .line 6419
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUpdateTime()Z
    .locals 2

    .prologue
    .line 4357
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUserId()Z
    .locals 2

    .prologue
    .line 4307
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasWebUrl()Z
    .locals 2

    .prologue
    const/high16 v1, 0x800000

    .line 6168
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 3072
    # getter for: Lcom/oppo/tribune/protobuf/SearchResultNetProto;->internal_static_protobuf_PublishProductItem_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 3860
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "x1"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3063
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 3063
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "x1"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3063
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "x1"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3063
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 3063
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "x1"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3063
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 9
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/high16 v8, 0x40000

    const/high16 v7, 0x20000

    const/high16 v6, 0x10000

    const v5, 0x8000

    const/high16 v4, -0x80000000

    .line 3867
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v1

    .line 3870
    .local v1, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 3871
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 3877
    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3879
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 3880
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 3881
    :goto_1
    return-object p0

    .line 3873
    :sswitch_0
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 3874
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    goto :goto_1

    .line 3886
    :sswitch_1
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 3887
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->id_:J

    goto :goto_0

    .line 3891
    :sswitch_2
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 3892
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->userId_:I

    goto :goto_0

    .line 3896
    :sswitch_3
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 3897
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->createTime_:J

    goto :goto_0

    .line 3901
    :sswitch_4
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 3902
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->updateTime_:J

    goto :goto_0

    .line 3906
    :sswitch_5
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 3907
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->releaseTime_:J

    goto :goto_0

    .line 3911
    :sswitch_6
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 3912
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->categoryId_:I

    goto :goto_0

    .line 3916
    :sswitch_7
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x40

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 3917
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->appName_:Ljava/lang/Object;

    goto :goto_0

    .line 3921
    :sswitch_8
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x80

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 3922
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->filePath_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 3926
    :sswitch_9
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x100

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 3927
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->fileMd5_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 3931
    :sswitch_a
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x200

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 3932
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->fileSize_:J

    goto/16 :goto_0

    .line 3936
    :sswitch_b
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x400

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 3937
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->fileName_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 3941
    :sswitch_c
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x800

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 3942
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->description_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 3946
    :sswitch_d
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x1000

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 3947
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->price_:D

    goto/16 :goto_0

    .line 3951
    :sswitch_e
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x2000

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 3952
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->packagePermissions_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 3956
    :sswitch_f
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x4000

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 3957
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->packageName_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 3961
    :sswitch_10
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    or-int/2addr v2, v5

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 3962
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->apkVersName_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 3966
    :sswitch_11
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    or-int/2addr v2, v6

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 3967
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->apkVers_:I

    goto/16 :goto_0

    .line 3971
    :sswitch_12
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    or-int/2addr v2, v7

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 3972
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->exceptList_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 3976
    :sswitch_13
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    or-int/2addr v2, v8

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 3977
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->iconUrl_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 3981
    :sswitch_14
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    const/high16 v3, 0x80000

    or-int/2addr v2, v3

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 3982
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->pic1_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 3986
    :sswitch_15
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    const/high16 v3, 0x100000

    or-int/2addr v2, v3

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 3987
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->pic2_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 3991
    :sswitch_16
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    const/high16 v3, 0x200000

    or-int/2addr v2, v3

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 3992
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->pic3_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 3996
    :sswitch_17
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    const/high16 v3, 0x400000

    or-int/2addr v2, v3

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 3997
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->pic4_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 4001
    :sswitch_18
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    const/high16 v3, 0x800000

    or-int/2addr v2, v3

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 4002
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->pic5_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 4006
    :sswitch_19
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    const/high16 v3, 0x1000000

    or-int/2addr v2, v3

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 4007
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->iconMd5_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 4011
    :sswitch_1a
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    const/high16 v3, 0x2000000

    or-int/2addr v2, v3

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 4012
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->pic1Md5_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 4016
    :sswitch_1b
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    const/high16 v3, 0x4000000

    or-int/2addr v2, v3

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 4017
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->pic2Md5_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 4021
    :sswitch_1c
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    const/high16 v3, 0x8000000

    or-int/2addr v2, v3

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 4022
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->pic3Md5_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 4026
    :sswitch_1d
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    const/high16 v3, 0x10000000

    or-int/2addr v2, v3

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 4027
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->pic4Md5_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 4031
    :sswitch_1e
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    const/high16 v3, 0x20000000

    or-int/2addr v2, v3

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 4032
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->pic5Md5_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 4036
    :sswitch_1f
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    const/high16 v3, 0x40000000    # 2.0f

    or-int/2addr v2, v3

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 4037
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->salesNum_:I

    goto/16 :goto_0

    .line 4041
    :sswitch_20
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    or-int/2addr v2, v4

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 4042
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->isFree_:I

    goto/16 :goto_0

    .line 4046
    :sswitch_21
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 4047
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->salesAmount_:D

    goto/16 :goto_0

    .line 4051
    :sswitch_22
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 4052
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->downNum_:I

    goto/16 :goto_0

    .line 4056
    :sswitch_23
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 4057
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->lookNum_:I

    goto/16 :goto_0

    .line 4061
    :sswitch_24
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 4062
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->lookNumPC_:I

    goto/16 :goto_0

    .line 4066
    :sswitch_25
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 4067
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->avgGrade_:D

    goto/16 :goto_0

    .line 4071
    :sswitch_26
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 4072
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->gradeNum_:I

    goto/16 :goto_0

    .line 4076
    :sswitch_27
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    or-int/lit8 v2, v2, 0x40

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 4077
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->masterId_:J

    goto/16 :goto_0

    .line 4081
    :sswitch_28
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    or-int/lit16 v2, v2, 0x80

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 4082
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->platform_:I

    goto/16 :goto_0

    .line 4086
    :sswitch_29
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    or-int/lit16 v2, v2, 0x100

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 4087
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onlineDays_:I

    goto/16 :goto_0

    .line 4091
    :sswitch_2a
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    or-int/lit16 v2, v2, 0x200

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 4092
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->encryptType_:I

    goto/16 :goto_0

    .line 4096
    :sswitch_2b
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    or-int/lit16 v2, v2, 0x400

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 4097
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->encryptKey_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 4101
    :sswitch_2c
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    or-int/lit16 v2, v2, 0x800

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 4102
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->addUrl1_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 4106
    :sswitch_2d
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    or-int/lit16 v2, v2, 0x1000

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 4107
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->addUrl2_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 4111
    :sswitch_2e
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    or-int/lit16 v2, v2, 0x2000

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 4112
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->addMd51_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 4116
    :sswitch_2f
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    or-int/lit16 v2, v2, 0x4000

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 4117
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->addMd52_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 4121
    :sswitch_30
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    or-int/2addr v2, v5

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 4122
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->state_:I

    goto/16 :goto_0

    .line 4126
    :sswitch_31
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    or-int/2addr v2, v6

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 4127
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->appType_:I

    goto/16 :goto_0

    .line 4131
    :sswitch_32
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    or-int/2addr v2, v7

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 4132
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->payFlag_:I

    goto/16 :goto_0

    .line 4136
    :sswitch_33
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    or-int/2addr v2, v8

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 4137
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->categoryName_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 4141
    :sswitch_34
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    const/high16 v3, 0x80000

    or-int/2addr v2, v3

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 4142
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->point_:I

    goto/16 :goto_0

    .line 4146
    :sswitch_35
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    const/high16 v3, 0x100000

    or-int/2addr v2, v3

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 4147
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->shortDesc_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 4151
    :sswitch_36
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    const/high16 v3, 0x200000

    or-int/2addr v2, v3

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 4152
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->adaptInfo_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 4156
    :sswitch_37
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    const/high16 v3, 0x400000

    or-int/2addr v2, v3

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 4157
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->downSpan_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 4161
    :sswitch_38
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    const/high16 v3, 0x800000

    or-int/2addr v2, v3

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 4162
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->webUrl_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 4166
    :sswitch_39
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    const/high16 v3, 0x1000000

    or-int/2addr v2, v3

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 4167
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->commentNum_:I

    goto/16 :goto_0

    .line 4171
    :sswitch_3a
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    const/high16 v3, 0x2000000

    or-int/2addr v2, v3

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 4172
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->topCategoryId_:I

    goto/16 :goto_0

    .line 4176
    :sswitch_3b
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    const/high16 v3, 0x4000000

    or-int/2addr v2, v3

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 4177
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->categoryLabel_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 4181
    :sswitch_3c
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    const/high16 v3, 0x8000000

    or-int/2addr v2, v3

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 4182
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->isNew_:I

    goto/16 :goto_0

    .line 4186
    :sswitch_3d
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    const/high16 v3, 0x10000000

    or-int/2addr v2, v3

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 4187
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->position_:I

    goto/16 :goto_0

    .line 4191
    :sswitch_3e
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    const/high16 v3, 0x20000000

    or-int/2addr v2, v3

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 4192
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->os_:I

    goto/16 :goto_0

    .line 4196
    :sswitch_3f
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    const/high16 v3, 0x40000000    # 2.0f

    or-int/2addr v2, v3

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 4197
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->author_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 4201
    :sswitch_40
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    or-int/2addr v2, v4

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 4202
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->updateDesc_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 4206
    :sswitch_41
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    .line 4207
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->category1_:I

    goto/16 :goto_0

    .line 4211
    :sswitch_42
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    .line 4212
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->category2_:I

    goto/16 :goto_0

    .line 4216
    :sswitch_43
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    .line 4217
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->labelId_:I

    goto/16 :goto_0

    .line 4221
    :sswitch_44
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    .line 4222
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->barCodePath_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 4226
    :sswitch_45
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    .line 4227
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->authorEmail_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 4231
    :sswitch_46
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    .line 4232
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->isFit_:I

    goto/16 :goto_0

    .line 4236
    :sswitch_47
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    or-int/lit8 v2, v2, 0x40

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    .line 4237
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->hdscreenshot1_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 4241
    :sswitch_48
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    or-int/lit16 v2, v2, 0x80

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    .line 4242
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->hdscreenshot2_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 4246
    :sswitch_49
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    or-int/lit16 v2, v2, 0x100

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    .line 4247
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->hdscreenshot3_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 4251
    :sswitch_4a
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    or-int/lit16 v2, v2, 0x200

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    .line 4252
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->hdscreenshot4_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 4256
    :sswitch_4b
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    or-int/lit16 v2, v2, 0x400

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    .line 4257
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->hdscreenshot5_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 4261
    :sswitch_4c
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    or-int/lit16 v2, v2, 0x800

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    .line 4262
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->labelUrl_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 4266
    :sswitch_4d
    iget v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    or-int/lit16 v2, v2, 0x1000

    iput v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    .line 4267
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->osName_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 3871
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x50 -> :sswitch_a
        0x5a -> :sswitch_b
        0x62 -> :sswitch_c
        0x69 -> :sswitch_d
        0x72 -> :sswitch_e
        0x7a -> :sswitch_f
        0x82 -> :sswitch_10
        0x88 -> :sswitch_11
        0x92 -> :sswitch_12
        0x9a -> :sswitch_13
        0xa2 -> :sswitch_14
        0xaa -> :sswitch_15
        0xb2 -> :sswitch_16
        0xba -> :sswitch_17
        0xc2 -> :sswitch_18
        0xca -> :sswitch_19
        0xd2 -> :sswitch_1a
        0xda -> :sswitch_1b
        0xe2 -> :sswitch_1c
        0xea -> :sswitch_1d
        0xf2 -> :sswitch_1e
        0xf8 -> :sswitch_1f
        0x100 -> :sswitch_20
        0x109 -> :sswitch_21
        0x110 -> :sswitch_22
        0x118 -> :sswitch_23
        0x120 -> :sswitch_24
        0x129 -> :sswitch_25
        0x130 -> :sswitch_26
        0x138 -> :sswitch_27
        0x140 -> :sswitch_28
        0x148 -> :sswitch_29
        0x150 -> :sswitch_2a
        0x15a -> :sswitch_2b
        0x162 -> :sswitch_2c
        0x16a -> :sswitch_2d
        0x172 -> :sswitch_2e
        0x17a -> :sswitch_2f
        0x180 -> :sswitch_30
        0x188 -> :sswitch_31
        0x190 -> :sswitch_32
        0x19a -> :sswitch_33
        0x1a0 -> :sswitch_34
        0x1aa -> :sswitch_35
        0x1b2 -> :sswitch_36
        0x1ba -> :sswitch_37
        0x1c2 -> :sswitch_38
        0x1c8 -> :sswitch_39
        0x1d0 -> :sswitch_3a
        0x1da -> :sswitch_3b
        0x1e0 -> :sswitch_3c
        0x1e8 -> :sswitch_3d
        0x1f0 -> :sswitch_3e
        0x1fa -> :sswitch_3f
        0x202 -> :sswitch_40
        0x208 -> :sswitch_41
        0x210 -> :sswitch_42
        0x218 -> :sswitch_43
        0x222 -> :sswitch_44
        0x22a -> :sswitch_45
        0x230 -> :sswitch_46
        0x23a -> :sswitch_47
        0x242 -> :sswitch_48
        0x24a -> :sswitch_49
        0x252 -> :sswitch_4a
        0x25a -> :sswitch_4b
        0x262 -> :sswitch_4c
        0x26a -> :sswitch_4d
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 3611
    instance-of v0, p1, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    if-eqz v0, :cond_0

    .line 3612
    check-cast p1, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    move-result-object p0

    .line 3615
    .end local p0    # "this":Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    :goto_0
    return-object p0

    .line 3614
    .restart local p0    # "this":Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 2
    .param p1, "other"    # Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    .prologue
    .line 3621
    invoke-static {}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getDefaultInstance()Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 3856
    :goto_0
    return-object p0

    .line 3624
    :cond_0
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->hasId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3625
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->setId(J)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    .line 3627
    :cond_1
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->hasUserId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3628
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->setUserId(I)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    .line 3630
    :cond_2
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->hasCreateTime()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3631
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getCreateTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->setCreateTime(J)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    .line 3633
    :cond_3
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->hasUpdateTime()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3634
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getUpdateTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->setUpdateTime(J)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    .line 3636
    :cond_4
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->hasReleaseTime()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3637
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getReleaseTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->setReleaseTime(J)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    .line 3639
    :cond_5
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->hasCategoryId()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3640
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getCategoryId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->setCategoryId(I)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    .line 3642
    :cond_6
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->hasAppName()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3643
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->setAppName(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    .line 3645
    :cond_7
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->hasFilePath()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3646
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->setFilePath(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    .line 3648
    :cond_8
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->hasFileMd5()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3649
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getFileMd5()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->setFileMd5(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    .line 3651
    :cond_9
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->hasFileSize()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3652
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getFileSize()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->setFileSize(J)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    .line 3654
    :cond_a
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->hasFileName()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3655
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->setFileName(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    .line 3657
    :cond_b
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->hasDescription()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3658
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->setDescription(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    .line 3660
    :cond_c
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->hasPrice()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3661
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getPrice()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->setPrice(D)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    .line 3663
    :cond_d
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->hasPackagePermissions()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3664
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getPackagePermissions()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->setPackagePermissions(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    .line 3666
    :cond_e
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->hasPackageName()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3667
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->setPackageName(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    .line 3669
    :cond_f
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->hasApkVersName()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3670
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getApkVersName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->setApkVersName(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    .line 3672
    :cond_10
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->hasApkVers()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3673
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getApkVers()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->setApkVers(I)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    .line 3675
    :cond_11
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->hasExceptList()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 3676
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getExceptList()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->setExceptList(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    .line 3678
    :cond_12
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->hasIconUrl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 3679
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->setIconUrl(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    .line 3681
    :cond_13
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->hasPic1()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3682
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getPic1()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->setPic1(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    .line 3684
    :cond_14
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->hasPic2()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 3685
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getPic2()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->setPic2(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    .line 3687
    :cond_15
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->hasPic3()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 3688
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getPic3()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->setPic3(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    .line 3690
    :cond_16
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->hasPic4()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 3691
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getPic4()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->setPic4(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    .line 3693
    :cond_17
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->hasPic5()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 3694
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getPic5()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->setPic5(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    .line 3696
    :cond_18
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->hasIconMd5()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 3697
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getIconMd5()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->setIconMd5(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    .line 3699
    :cond_19
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->hasPic1Md5()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 3700
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getPic1Md5()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->setPic1Md5(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    .line 3702
    :cond_1a
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->hasPic2Md5()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 3703
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getPic2Md5()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->setPic2Md5(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    .line 3705
    :cond_1b
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->hasPic3Md5()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 3706
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getPic3Md5()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->setPic3Md5(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    .line 3708
    :cond_1c
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->hasPic4Md5()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 3709
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getPic4Md5()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->setPic4Md5(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    .line 3711
    :cond_1d
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->hasPic5Md5()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 3712
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getPic5Md5()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->setPic5Md5(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    .line 3714
    :cond_1e
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->hasSalesNum()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 3715
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getSalesNum()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->setSalesNum(I)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    .line 3717
    :cond_1f
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->hasIsFree()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 3718
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getIsFree()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->setIsFree(I)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    .line 3720
    :cond_20
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->hasSalesAmount()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 3721
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getSalesAmount()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->setSalesAmount(D)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    .line 3723
    :cond_21
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->hasDownNum()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 3724
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getDownNum()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->setDownNum(I)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    .line 3726
    :cond_22
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->hasLookNum()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 3727
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getLookNum()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->setLookNum(I)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    .line 3729
    :cond_23
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->hasLookNumPC()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 3730
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getLookNumPC()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->setLookNumPC(I)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    .line 3732
    :cond_24
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->hasAvgGrade()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 3733
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getAvgGrade()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->setAvgGrade(D)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    .line 3735
    :cond_25
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->hasGradeNum()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 3736
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getGradeNum()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->setGradeNum(I)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    .line 3738
    :cond_26
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->hasMasterId()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 3739
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getMasterId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->setMasterId(J)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    .line 3741
    :cond_27
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->hasPlatform()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 3742
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getPlatform()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->setPlatform(I)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    .line 3744
    :cond_28
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->hasOnlineDays()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 3745
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getOnlineDays()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->setOnlineDays(I)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    .line 3747
    :cond_29
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->hasEncryptType()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 3748
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getEncryptType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->setEncryptType(I)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    .line 3750
    :cond_2a
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->hasEncryptKey()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 3751
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getEncryptKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->setEncryptKey(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    .line 3753
    :cond_2b
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->hasAddUrl1()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 3754
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getAddUrl1()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->setAddUrl1(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    .line 3756
    :cond_2c
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->hasAddUrl2()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 3757
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getAddUrl2()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->setAddUrl2(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    .line 3759
    :cond_2d
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->hasAddMd51()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 3760
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getAddMd51()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->setAddMd51(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    .line 3762
    :cond_2e
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->hasAddMd52()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 3763
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getAddMd52()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->setAddMd52(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    .line 3765
    :cond_2f
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->hasState()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 3766
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->setState(I)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    .line 3768
    :cond_30
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->hasAppType()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 3769
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getAppType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->setAppType(I)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    .line 3771
    :cond_31
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->hasPayFlag()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 3772
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getPayFlag()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->setPayFlag(I)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    .line 3774
    :cond_32
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->hasCategoryName()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 3775
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getCategoryName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->setCategoryName(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    .line 3777
    :cond_33
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->hasPoint()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 3778
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getPoint()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->setPoint(I)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    .line 3780
    :cond_34
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->hasShortDesc()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 3781
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getShortDesc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->setShortDesc(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    .line 3783
    :cond_35
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->hasAdaptInfo()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 3784
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getAdaptInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->setAdaptInfo(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    .line 3786
    :cond_36
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->hasDownSpan()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 3787
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getDownSpan()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->setDownSpan(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    .line 3789
    :cond_37
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->hasWebUrl()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 3790
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getWebUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->setWebUrl(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    .line 3792
    :cond_38
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->hasCommentNum()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 3793
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getCommentNum()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->setCommentNum(I)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    .line 3795
    :cond_39
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->hasTopCategoryId()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 3796
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getTopCategoryId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->setTopCategoryId(I)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    .line 3798
    :cond_3a
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->hasCategoryLabel()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 3799
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getCategoryLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->setCategoryLabel(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    .line 3801
    :cond_3b
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->hasIsNew()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 3802
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getIsNew()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->setIsNew(I)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    .line 3804
    :cond_3c
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->hasPosition()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 3805
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->setPosition(I)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    .line 3807
    :cond_3d
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->hasOs()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 3808
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getOs()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->setOs(I)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    .line 3810
    :cond_3e
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->hasAuthor()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 3811
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getAuthor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->setAuthor(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    .line 3813
    :cond_3f
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->hasUpdateDesc()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 3814
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getUpdateDesc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->setUpdateDesc(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    .line 3816
    :cond_40
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->hasCategory1()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 3817
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getCategory1()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->setCategory1(I)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    .line 3819
    :cond_41
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->hasCategory2()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 3820
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getCategory2()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->setCategory2(I)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    .line 3822
    :cond_42
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->hasLabelId()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 3823
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getLabelId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->setLabelId(I)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    .line 3825
    :cond_43
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->hasBarCodePath()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 3826
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getBarCodePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->setBarCodePath(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    .line 3828
    :cond_44
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->hasAuthorEmail()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 3829
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getAuthorEmail()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->setAuthorEmail(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    .line 3831
    :cond_45
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->hasIsFit()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 3832
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getIsFit()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->setIsFit(I)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    .line 3834
    :cond_46
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->hasHdscreenshot1()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 3835
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getHdscreenshot1()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->setHdscreenshot1(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    .line 3837
    :cond_47
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->hasHdscreenshot2()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 3838
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getHdscreenshot2()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->setHdscreenshot2(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    .line 3840
    :cond_48
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->hasHdscreenshot3()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 3841
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getHdscreenshot3()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->setHdscreenshot3(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    .line 3843
    :cond_49
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->hasHdscreenshot4()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 3844
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getHdscreenshot4()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->setHdscreenshot4(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    .line 3846
    :cond_4a
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->hasHdscreenshot5()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 3847
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getHdscreenshot5()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->setHdscreenshot5(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    .line 3849
    :cond_4b
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->hasLabelUrl()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 3850
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getLabelUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->setLabelUrl(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    .line 3852
    :cond_4c
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->hasOsName()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 3853
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getOsName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->setOsName(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;

    .line 3855
    :cond_4d
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto/16 :goto_0
.end method

.method public setAdaptInfo(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 6100
    if-nez p1, :cond_0

    .line 6101
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6103
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 6104
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->adaptInfo_:Ljava/lang/Object;

    .line 6105
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 6106
    return-object p0
.end method

.method setAdaptInfo(Lcom/google/protobuf/ByteString;)V
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 6117
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 6118
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->adaptInfo_:Ljava/lang/Object;

    .line 6119
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 6120
    return-void
.end method

.method public setAddMd51(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 5832
    if-nez p1, :cond_0

    .line 5833
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5835
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 5836
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->addMd51_:Ljava/lang/Object;

    .line 5837
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 5838
    return-object p0
.end method

.method setAddMd51(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 5849
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 5850
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->addMd51_:Ljava/lang/Object;

    .line 5851
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 5852
    return-void
.end method

.method public setAddMd52(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 5874
    if-nez p1, :cond_0

    .line 5875
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5877
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 5878
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->addMd52_:Ljava/lang/Object;

    .line 5879
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 5880
    return-object p0
.end method

.method setAddMd52(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 5891
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 5892
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->addMd52_:Ljava/lang/Object;

    .line 5893
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 5894
    return-void
.end method

.method public setAddUrl1(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 5748
    if-nez p1, :cond_0

    .line 5749
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5751
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 5752
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->addUrl1_:Ljava/lang/Object;

    .line 5753
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 5754
    return-object p0
.end method

.method setAddUrl1(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 5765
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 5766
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->addUrl1_:Ljava/lang/Object;

    .line 5767
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 5768
    return-void
.end method

.method public setAddUrl2(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 5790
    if-nez p1, :cond_0

    .line 5791
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5793
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 5794
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->addUrl2_:Ljava/lang/Object;

    .line 5795
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 5796
    return-object p0
.end method

.method setAddUrl2(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 5807
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 5808
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->addUrl2_:Ljava/lang/Object;

    .line 5809
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 5810
    return-void
.end method

.method public setApkVers(I)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 4827
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 4828
    iput p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->apkVers_:I

    .line 4829
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 4830
    return-object p0
.end method

.method public setApkVersName(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4793
    if-nez p1, :cond_0

    .line 4794
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4796
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 4797
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->apkVersName_:Ljava/lang/Object;

    .line 4798
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 4799
    return-object p0
.end method

.method setApkVersName(Lcom/google/protobuf/ByteString;)V
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 4810
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 4811
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->apkVersName_:Ljava/lang/Object;

    .line 4812
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 4813
    return-void
.end method

.method public setAppName(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4448
    if-nez p1, :cond_0

    .line 4449
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4451
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 4452
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->appName_:Ljava/lang/Object;

    .line 4453
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 4454
    return-object p0
.end method

.method setAppName(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 4465
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 4466
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->appName_:Ljava/lang/Object;

    .line 4467
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 4468
    return-void
.end method

.method public setAppType(I)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 5933
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 5934
    iput p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->appType_:I

    .line 5935
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 5936
    return-object p0
.end method

.method public setAuthor(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 6393
    if-nez p1, :cond_0

    .line 6394
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6396
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 6397
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->author_:Ljava/lang/Object;

    .line 6398
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 6399
    return-object p0
.end method

.method setAuthor(Lcom/google/protobuf/ByteString;)V
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 6410
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 6411
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->author_:Ljava/lang/Object;

    .line 6412
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 6413
    return-void
.end method

.method public setAuthorEmail(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 6594
    if-nez p1, :cond_0

    .line 6595
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6597
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    .line 6598
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->authorEmail_:Ljava/lang/Object;

    .line 6599
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 6600
    return-object p0
.end method

.method setAuthorEmail(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 6611
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    .line 6612
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->authorEmail_:Ljava/lang/Object;

    .line 6613
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 6614
    return-void
.end method

.method public setAvgGrade(D)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 5548
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 5549
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->avgGrade_:D

    .line 5550
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 5551
    return-object p0
.end method

.method public setBarCodePath(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 6552
    if-nez p1, :cond_0

    .line 6553
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6555
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    .line 6556
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->barCodePath_:Ljava/lang/Object;

    .line 6557
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 6558
    return-object p0
.end method

.method setBarCodePath(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 6569
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    .line 6570
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->barCodePath_:Ljava/lang/Object;

    .line 6571
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 6572
    return-void
.end method

.method public setCategory1(I)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 6469
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    .line 6470
    iput p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->category1_:I

    .line 6471
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 6472
    return-object p0
.end method

.method public setCategory2(I)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 6494
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    .line 6495
    iput p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->category2_:I

    .line 6496
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 6497
    return-object p0
.end method

.method public setCategoryId(I)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4415
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 4416
    iput p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->categoryId_:I

    .line 4417
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 4418
    return-object p0
.end method

.method public setCategoryLabel(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 6276
    if-nez p1, :cond_0

    .line 6277
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6279
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    const/high16 v1, 0x4000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 6280
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->categoryLabel_:Ljava/lang/Object;

    .line 6281
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 6282
    return-object p0
.end method

.method setCategoryLabel(Lcom/google/protobuf/ByteString;)V
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 6293
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    const/high16 v1, 0x4000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 6294
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->categoryLabel_:Ljava/lang/Object;

    .line 6295
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 6296
    return-void
.end method

.method public setCategoryName(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 5991
    if-nez p1, :cond_0

    .line 5992
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5994
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 5995
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->categoryName_:Ljava/lang/Object;

    .line 5996
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 5997
    return-object p0
.end method

.method setCategoryName(Lcom/google/protobuf/ByteString;)V
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 6008
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 6009
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->categoryName_:Ljava/lang/Object;

    .line 6010
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 6011
    return-void
.end method

.method public setCommentNum(I)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 6218
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 6219
    iput p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->commentNum_:I

    .line 6220
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 6221
    return-object p0
.end method

.method public setCreateTime(J)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 4340
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 4341
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->createTime_:J

    .line 4342
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 4343
    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4641
    if-nez p1, :cond_0

    .line 4642
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4644
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 4645
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->description_:Ljava/lang/Object;

    .line 4646
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 4647
    return-object p0
.end method

.method setDescription(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 4658
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 4659
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->description_:Ljava/lang/Object;

    .line 4660
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 4661
    return-void
.end method

.method public setDownNum(I)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5473
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 5474
    iput p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->downNum_:I

    .line 5475
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 5476
    return-object p0
.end method

.method public setDownSpan(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 6142
    if-nez p1, :cond_0

    .line 6143
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6145
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    const/high16 v1, 0x400000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 6146
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->downSpan_:Ljava/lang/Object;

    .line 6147
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 6148
    return-object p0
.end method

.method setDownSpan(Lcom/google/protobuf/ByteString;)V
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 6159
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    const/high16 v1, 0x400000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 6160
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->downSpan_:Ljava/lang/Object;

    .line 6161
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 6162
    return-void
.end method

.method public setEncryptKey(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 5706
    if-nez p1, :cond_0

    .line 5707
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5709
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 5710
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->encryptKey_:Ljava/lang/Object;

    .line 5711
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 5712
    return-object p0
.end method

.method setEncryptKey(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 5723
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 5724
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->encryptKey_:Ljava/lang/Object;

    .line 5725
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 5726
    return-void
.end method

.method public setEncryptType(I)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5673
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 5674
    iput p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->encryptType_:I

    .line 5675
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 5676
    return-object p0
.end method

.method public setExceptList(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4860
    if-nez p1, :cond_0

    .line 4861
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4863
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 4864
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->exceptList_:Ljava/lang/Object;

    .line 4865
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 4866
    return-object p0
.end method

.method setExceptList(Lcom/google/protobuf/ByteString;)V
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 4877
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 4878
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->exceptList_:Ljava/lang/Object;

    .line 4879
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 4880
    return-void
.end method

.method public setFileMd5(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4532
    if-nez p1, :cond_0

    .line 4533
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4535
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 4536
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->fileMd5_:Ljava/lang/Object;

    .line 4537
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 4538
    return-object p0
.end method

.method setFileMd5(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 4549
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 4550
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->fileMd5_:Ljava/lang/Object;

    .line 4551
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 4552
    return-void
.end method

.method public setFileName(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4599
    if-nez p1, :cond_0

    .line 4600
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4602
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 4603
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->fileName_:Ljava/lang/Object;

    .line 4604
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 4605
    return-object p0
.end method

.method setFileName(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 4616
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 4617
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->fileName_:Ljava/lang/Object;

    .line 4618
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 4619
    return-void
.end method

.method public setFilePath(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4490
    if-nez p1, :cond_0

    .line 4491
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4493
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 4494
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->filePath_:Ljava/lang/Object;

    .line 4495
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 4496
    return-object p0
.end method

.method setFilePath(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 4507
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 4508
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->filePath_:Ljava/lang/Object;

    .line 4509
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 4510
    return-void
.end method

.method public setFileSize(J)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 4566
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 4567
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->fileSize_:J

    .line 4568
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 4569
    return-object p0
.end method

.method public setGradeNum(I)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5573
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 5574
    iput p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->gradeNum_:I

    .line 5575
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 5576
    return-object p0
.end method

.method public setHdscreenshot1(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 6661
    if-nez p1, :cond_0

    .line 6662
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6664
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    .line 6665
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->hdscreenshot1_:Ljava/lang/Object;

    .line 6666
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 6667
    return-object p0
.end method

.method setHdscreenshot1(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 6678
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    .line 6679
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->hdscreenshot1_:Ljava/lang/Object;

    .line 6680
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 6681
    return-void
.end method

.method public setHdscreenshot2(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 6703
    if-nez p1, :cond_0

    .line 6704
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6706
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    .line 6707
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->hdscreenshot2_:Ljava/lang/Object;

    .line 6708
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 6709
    return-object p0
.end method

.method setHdscreenshot2(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 6720
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    .line 6721
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->hdscreenshot2_:Ljava/lang/Object;

    .line 6722
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 6723
    return-void
.end method

.method public setHdscreenshot3(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 6745
    if-nez p1, :cond_0

    .line 6746
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6748
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    .line 6749
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->hdscreenshot3_:Ljava/lang/Object;

    .line 6750
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 6751
    return-object p0
.end method

.method setHdscreenshot3(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 6762
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    .line 6763
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->hdscreenshot3_:Ljava/lang/Object;

    .line 6764
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 6765
    return-void
.end method

.method public setHdscreenshot4(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 6787
    if-nez p1, :cond_0

    .line 6788
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6790
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    .line 6791
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->hdscreenshot4_:Ljava/lang/Object;

    .line 6792
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 6793
    return-object p0
.end method

.method setHdscreenshot4(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 6804
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    .line 6805
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->hdscreenshot4_:Ljava/lang/Object;

    .line 6806
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 6807
    return-void
.end method

.method public setHdscreenshot5(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 6829
    if-nez p1, :cond_0

    .line 6830
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6832
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    .line 6833
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->hdscreenshot5_:Ljava/lang/Object;

    .line 6834
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 6835
    return-object p0
.end method

.method setHdscreenshot5(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 6846
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    .line 6847
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->hdscreenshot5_:Ljava/lang/Object;

    .line 6848
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 6849
    return-void
.end method

.method public setIconMd5(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 5154
    if-nez p1, :cond_0

    .line 5155
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5157
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 5158
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->iconMd5_:Ljava/lang/Object;

    .line 5159
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 5160
    return-object p0
.end method

.method setIconMd5(Lcom/google/protobuf/ByteString;)V
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 5171
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 5172
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->iconMd5_:Ljava/lang/Object;

    .line 5173
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 5174
    return-void
.end method

.method public setIconUrl(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4902
    if-nez p1, :cond_0

    .line 4903
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4905
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 4906
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->iconUrl_:Ljava/lang/Object;

    .line 4907
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 4908
    return-object p0
.end method

.method setIconUrl(Lcom/google/protobuf/ByteString;)V
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 4919
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 4920
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->iconUrl_:Ljava/lang/Object;

    .line 4921
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 4922
    return-void
.end method

.method public setId(J)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 4290
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 4291
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->id_:J

    .line 4292
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 4293
    return-object p0
.end method

.method public setIsFit(I)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 6628
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    .line 6629
    iput p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->isFit_:I

    .line 6630
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 6631
    return-object p0
.end method

.method public setIsFree(I)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 5423
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 5424
    iput p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->isFree_:I

    .line 5425
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 5426
    return-object p0
.end method

.method public setIsNew(I)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 6310
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    const/high16 v1, 0x8000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 6311
    iput p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->isNew_:I

    .line 6312
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 6313
    return-object p0
.end method

.method public setLabelId(I)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 6519
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    .line 6520
    iput p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->labelId_:I

    .line 6521
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 6522
    return-object p0
.end method

.method public setLabelUrl(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 6871
    if-nez p1, :cond_0

    .line 6872
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6874
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    .line 6875
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->labelUrl_:Ljava/lang/Object;

    .line 6876
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 6877
    return-object p0
.end method

.method setLabelUrl(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 6888
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    .line 6889
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->labelUrl_:Ljava/lang/Object;

    .line 6890
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 6891
    return-void
.end method

.method public setLookNum(I)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5498
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 5499
    iput p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->lookNum_:I

    .line 5500
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 5501
    return-object p0
.end method

.method public setLookNumPC(I)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5523
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 5524
    iput p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->lookNumPC_:I

    .line 5525
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 5526
    return-object p0
.end method

.method public setMasterId(J)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 5598
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 5599
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->masterId_:J

    .line 5600
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 5601
    return-object p0
.end method

.method public setOnlineDays(I)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5648
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 5649
    iput p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onlineDays_:I

    .line 5650
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 5651
    return-object p0
.end method

.method public setOs(I)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 6360
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    const/high16 v1, 0x20000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 6361
    iput p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->os_:I

    .line 6362
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 6363
    return-object p0
.end method

.method public setOsName(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 6913
    if-nez p1, :cond_0

    .line 6914
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6916
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    .line 6917
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->osName_:Ljava/lang/Object;

    .line 6918
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 6919
    return-object p0
.end method

.method setOsName(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 6930
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField2_:I

    .line 6931
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->osName_:Ljava/lang/Object;

    .line 6932
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 6933
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4751
    if-nez p1, :cond_0

    .line 4752
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4754
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 4755
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->packageName_:Ljava/lang/Object;

    .line 4756
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 4757
    return-object p0
.end method

.method setPackageName(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 4768
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 4769
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->packageName_:Ljava/lang/Object;

    .line 4770
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 4771
    return-void
.end method

.method public setPackagePermissions(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4708
    if-nez p1, :cond_0

    .line 4709
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4711
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 4712
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->packagePermissions_:Ljava/lang/Object;

    .line 4713
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 4714
    return-object p0
.end method

.method setPackagePermissions(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 4726
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 4727
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->packagePermissions_:Ljava/lang/Object;

    .line 4728
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 4729
    return-void
.end method

.method public setPayFlag(I)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 5958
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 5959
    iput p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->payFlag_:I

    .line 5960
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 5961
    return-object p0
.end method

.method public setPic1(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4944
    if-nez p1, :cond_0

    .line 4945
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4947
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 4948
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->pic1_:Ljava/lang/Object;

    .line 4949
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 4950
    return-object p0
.end method

.method setPic1(Lcom/google/protobuf/ByteString;)V
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 4961
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 4962
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->pic1_:Ljava/lang/Object;

    .line 4963
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 4964
    return-void
.end method

.method public setPic1Md5(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 5196
    if-nez p1, :cond_0

    .line 5197
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5199
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    const/high16 v1, 0x2000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 5200
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->pic1Md5_:Ljava/lang/Object;

    .line 5201
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 5202
    return-object p0
.end method

.method setPic1Md5(Lcom/google/protobuf/ByteString;)V
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 5213
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    const/high16 v1, 0x2000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 5214
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->pic1Md5_:Ljava/lang/Object;

    .line 5215
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 5216
    return-void
.end method

.method public setPic2(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4986
    if-nez p1, :cond_0

    .line 4987
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4989
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 4990
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->pic2_:Ljava/lang/Object;

    .line 4991
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 4992
    return-object p0
.end method

.method setPic2(Lcom/google/protobuf/ByteString;)V
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 5003
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 5004
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->pic2_:Ljava/lang/Object;

    .line 5005
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 5006
    return-void
.end method

.method public setPic2Md5(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 5238
    if-nez p1, :cond_0

    .line 5239
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5241
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    const/high16 v1, 0x4000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 5242
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->pic2Md5_:Ljava/lang/Object;

    .line 5243
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 5244
    return-object p0
.end method

.method setPic2Md5(Lcom/google/protobuf/ByteString;)V
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 5255
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    const/high16 v1, 0x4000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 5256
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->pic2Md5_:Ljava/lang/Object;

    .line 5257
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 5258
    return-void
.end method

.method public setPic3(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 5028
    if-nez p1, :cond_0

    .line 5029
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5031
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 5032
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->pic3_:Ljava/lang/Object;

    .line 5033
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 5034
    return-object p0
.end method

.method setPic3(Lcom/google/protobuf/ByteString;)V
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 5045
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 5046
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->pic3_:Ljava/lang/Object;

    .line 5047
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 5048
    return-void
.end method

.method public setPic3Md5(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 5280
    if-nez p1, :cond_0

    .line 5281
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5283
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    const/high16 v1, 0x8000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 5284
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->pic3Md5_:Ljava/lang/Object;

    .line 5285
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 5286
    return-object p0
.end method

.method setPic3Md5(Lcom/google/protobuf/ByteString;)V
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 5297
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    const/high16 v1, 0x8000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 5298
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->pic3Md5_:Ljava/lang/Object;

    .line 5299
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 5300
    return-void
.end method

.method public setPic4(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 5070
    if-nez p1, :cond_0

    .line 5071
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5073
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    const/high16 v1, 0x400000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 5074
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->pic4_:Ljava/lang/Object;

    .line 5075
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 5076
    return-object p0
.end method

.method setPic4(Lcom/google/protobuf/ByteString;)V
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 5087
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    const/high16 v1, 0x400000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 5088
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->pic4_:Ljava/lang/Object;

    .line 5089
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 5090
    return-void
.end method

.method public setPic4Md5(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 5322
    if-nez p1, :cond_0

    .line 5323
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5325
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    const/high16 v1, 0x10000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 5326
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->pic4Md5_:Ljava/lang/Object;

    .line 5327
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 5328
    return-object p0
.end method

.method setPic4Md5(Lcom/google/protobuf/ByteString;)V
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 5339
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    const/high16 v1, 0x10000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 5340
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->pic4Md5_:Ljava/lang/Object;

    .line 5341
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 5342
    return-void
.end method

.method public setPic5(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 5112
    if-nez p1, :cond_0

    .line 5113
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5115
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    const/high16 v1, 0x800000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 5116
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->pic5_:Ljava/lang/Object;

    .line 5117
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 5118
    return-object p0
.end method

.method setPic5(Lcom/google/protobuf/ByteString;)V
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 5129
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    const/high16 v1, 0x800000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 5130
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->pic5_:Ljava/lang/Object;

    .line 5131
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 5132
    return-void
.end method

.method public setPic5Md5(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 5364
    if-nez p1, :cond_0

    .line 5365
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5367
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    const/high16 v1, 0x20000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 5368
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->pic5Md5_:Ljava/lang/Object;

    .line 5369
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 5370
    return-object p0
.end method

.method setPic5Md5(Lcom/google/protobuf/ByteString;)V
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 5381
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    const/high16 v1, 0x20000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 5382
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->pic5Md5_:Ljava/lang/Object;

    .line 5383
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 5384
    return-void
.end method

.method public setPlatform(I)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5623
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 5624
    iput p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->platform_:I

    .line 5625
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 5626
    return-object p0
.end method

.method public setPoint(I)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 6025
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 6026
    iput p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->point_:I

    .line 6027
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 6028
    return-object p0
.end method

.method public setPosition(I)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 6335
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    const/high16 v1, 0x10000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 6336
    iput p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->position_:I

    .line 6337
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 6338
    return-object p0
.end method

.method public setPrice(D)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 4675
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 4676
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->price_:D

    .line 4677
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 4678
    return-object p0
.end method

.method public setReleaseTime(J)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 4390
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 4391
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->releaseTime_:J

    .line 4392
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 4393
    return-object p0
.end method

.method public setSalesAmount(D)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 5448
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 5449
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->salesAmount_:D

    .line 5450
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 5451
    return-object p0
.end method

.method public setSalesNum(I)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 5398
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 5399
    iput p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->salesNum_:I

    .line 5400
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 5401
    return-object p0
.end method

.method public setShortDesc(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 6058
    if-nez p1, :cond_0

    .line 6059
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6061
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 6062
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->shortDesc_:Ljava/lang/Object;

    .line 6063
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 6064
    return-object p0
.end method

.method setShortDesc(Lcom/google/protobuf/ByteString;)V
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 6075
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 6076
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->shortDesc_:Ljava/lang/Object;

    .line 6077
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 6078
    return-void
.end method

.method public setState(I)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 5908
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 5909
    iput p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->state_:I

    .line 5910
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 5911
    return-object p0
.end method

.method public setTopCategoryId(I)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 6243
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    const/high16 v1, 0x2000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 6244
    iput p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->topCategoryId_:I

    .line 6245
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 6246
    return-object p0
.end method

.method public setUpdateDesc(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 6435
    if-nez p1, :cond_0

    .line 6436
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6438
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 6439
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->updateDesc_:Ljava/lang/Object;

    .line 6440
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 6441
    return-object p0
.end method

.method setUpdateDesc(Lcom/google/protobuf/ByteString;)V
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 6452
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 6453
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->updateDesc_:Ljava/lang/Object;

    .line 6454
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 6455
    return-void
.end method

.method public setUpdateTime(J)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 4365
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 4366
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->updateTime_:J

    .line 4367
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 4368
    return-object p0
.end method

.method public setUserId(I)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4315
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField0_:I

    .line 4316
    iput p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->userId_:I

    .line 4317
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 4318
    return-object p0
.end method

.method public setWebUrl(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 6184
    if-nez p1, :cond_0

    .line 6185
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6187
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    const/high16 v1, 0x800000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 6188
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->webUrl_:Ljava/lang/Object;

    .line 6189
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 6190
    return-object p0
.end method

.method setWebUrl(Lcom/google/protobuf/ByteString;)V
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 6201
    iget v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    const/high16 v1, 0x800000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->bitField1_:I

    .line 6202
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->webUrl_:Ljava/lang/Object;

    .line 6203
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem$Builder;->onChanged()V

    .line 6204
    return-void
.end method
