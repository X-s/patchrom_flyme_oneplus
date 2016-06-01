.class public Lcom/oppo/tribune/packshow/parse/ReasonListResult;
.super Ljava/lang/Object;
.source "ReasonListResult.java"


# instance fields
.field private mReasonListResult:Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;


# direct methods
.method private constructor <init>(Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;)V
    .locals 0
    .param p1, "result"    # Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/oppo/tribune/packshow/parse/ReasonListResult;->mReasonListResult:Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;

    .line 32
    return-void
.end method

.method public static parse(Landroid/content/Context;)Lcom/oppo/tribune/packshow/parse/ReasonListResult;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    const-string v2, "http://ddinterface2.oneplus.cn:8000/report/GetReport"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {p0, v2, v3, v4}, Lcom/oppo/tribune/util/HttpUtils;->parseConnection(Landroid/content/Context;Ljava/lang/String;ZZ)[B

    move-result-object v0

    .line 62
    .local v0, "buf":[B
    invoke-static {v0}, Lcom/oppo/tribune/util/Utils;->isNullOrEmpty([B)Z

    move-result v2

    if-nez v2, :cond_0

    .line 64
    :try_start_0
    new-instance v2, Lcom/oppo/tribune/packshow/parse/ReasonListResult;

    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;->parseFrom([B)Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/oppo/tribune/packshow/parse/ReasonListResult;-><init>(Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    return-object v2

    .line 66
    :catch_0
    move-exception v1

    .line 67
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->printStackTrace()V

    .line 71
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getReasonList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/info/ReasonEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 37
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/protobuf/info/ReasonEntity;>;"
    iget-object v5, p0, Lcom/oppo/tribune/packshow/parse/ReasonListResult;->mReasonListResult:Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;

    if-nez v5, :cond_1

    .line 55
    :cond_0
    return-object v2

    .line 41
    :cond_1
    iget-object v5, p0, Lcom/oppo/tribune/packshow/parse/ReasonListResult;->mReasonListResult:Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;

    invoke-virtual {v5}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonlist;->getReasonlistList()Ljava/util/List;

    move-result-object v3

    .line 43
    .local v3, "preList":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;>;"
    invoke-static {v3}, Lcom/oppo/tribune/util/Utils;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 47
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;

    .line 48
    .local v4, "reason":Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;
    new-instance v0, Lcom/oppo/tribune/protobuf/info/ReasonEntity;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/info/ReasonEntity;-><init>()V

    .line 49
    .local v0, "entity":Lcom/oppo/tribune/protobuf/info/ReasonEntity;
    invoke-virtual {v4}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;->getId()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/oppo/tribune/protobuf/info/ReasonEntity;->setId(I)V

    .line 50
    invoke-virtual {v4}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;->getReason()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/oppo/tribune/protobuf/info/ReasonEntity;->setReason(Ljava/lang/String;)V

    .line 51
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/oppo/tribune/protobuf/info/ReasonEntity;->setIsselected(Z)V

    .line 52
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
