.class public Lcom/oppo/tribune/packshow/parse/ConfigNumResult;
.super Ljava/lang/Object;
.source "ConfigNumResult.java"


# instance fields
.field mHeadsetListConfigNum:Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;


# direct methods
.method private constructor <init>(Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;)V
    .locals 0
    .param p1, "result"    # Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/oppo/tribune/packshow/parse/ConfigNumResult;->mHeadsetListConfigNum:Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;

    .line 21
    return-void
.end method

.method private static getUrl(I)Ljava/lang/String;
    .locals 3
    .param p0, "brand_id"    # I

    .prologue
    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://ddinterface2.oneplus.cn:8000/report/GetConfigNum"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "?brand_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 60
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oppo/tribune/util/NearMeSignCheck;->getAppendSign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static parse(Landroid/content/Context;I)Lcom/oppo/tribune/packshow/parse/ConfigNumResult;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "brand_id"    # I

    .prologue
    .line 66
    invoke-static {p1}, Lcom/oppo/tribune/packshow/parse/ConfigNumResult;->getUrl(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {p0, v2, v3, v4}, Lcom/oppo/tribune/util/HttpUtils;->parseConnection(Landroid/content/Context;Ljava/lang/String;ZZ)[B

    move-result-object v0

    .line 68
    .local v0, "buf":[B
    invoke-static {v0}, Lcom/oppo/tribune/util/Utils;->isNullOrEmpty([B)Z

    move-result v2

    if-nez v2, :cond_0

    .line 70
    :try_start_0
    new-instance v2, Lcom/oppo/tribune/packshow/parse/ConfigNumResult;

    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;->parseFrom([B)Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/oppo/tribune/packshow/parse/ConfigNumResult;-><init>(Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    return-object v2

    .line 72
    :catch_0
    move-exception v1

    .line 73
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->printStackTrace()V

    .line 77
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getBrandId()J
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/oppo/tribune/packshow/parse/ConfigNumResult;->mHeadsetListConfigNum:Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;

    if-nez v0, :cond_0

    .line 50
    const-wide/16 v0, 0x0

    .line 52
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/packshow/parse/ConfigNumResult;->mHeadsetListConfigNum:Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;->getBrandId()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getTypeList()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oppo/tribune/protobuf/info/ConfigNumInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 26
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oppo/tribune/protobuf/info/ConfigNumInfo;>;"
    iget-object v5, p0, Lcom/oppo/tribune/packshow/parse/ConfigNumResult;->mHeadsetListConfigNum:Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;

    if-nez v5, :cond_1

    .line 45
    :cond_0
    return-object v2

    .line 30
    :cond_1
    iget-object v5, p0, Lcom/oppo/tribune/packshow/parse/ConfigNumResult;->mHeadsetListConfigNum:Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;

    invoke-virtual {v5}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_headset_confignum;->getEachTypeList()Ljava/util/List;

    move-result-object v4

    .line 32
    .local v4, "typeList":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;>;"
    invoke-static {v4}, Lcom/oppo/tribune/util/Utils;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 36
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;

    .line 37
    .local v3, "type":Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;
    new-instance v0, Lcom/oppo/tribune/protobuf/info/ConfigNumInfo;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/info/ConfigNumInfo;-><init>()V

    .line 38
    .local v0, "entity":Lcom/oppo/tribune/protobuf/info/ConfigNumInfo;
    invoke-virtual {p0}, Lcom/oppo/tribune/packshow/parse/ConfigNumResult;->getBrandId()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/oppo/tribune/protobuf/info/ConfigNumInfo;->setBrandId(J)V

    .line 39
    invoke-virtual {v3}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->getTypeId()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/oppo/tribune/protobuf/info/ConfigNumInfo;->setTypeId(J)V

    .line 40
    invoke-virtual {v3}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/oppo/tribune/protobuf/info/ConfigNumInfo;->setType(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v3}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->getConfigNum()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/oppo/tribune/protobuf/info/ConfigNumInfo;->setConfigNum(I)V

    .line 42
    invoke-virtual {v3}, Lcom/oppo/tribune/protobuf/ConfigNumProto$pb_config_num;->getRequestNum()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/oppo/tribune/protobuf/info/ConfigNumInfo;->setRequestNum(I)V

    .line 43
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
