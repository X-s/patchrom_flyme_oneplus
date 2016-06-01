.class public Lcom/oneplus/tuner/providers/WriteAndReadConfigNumInfo;
.super Ljava/lang/Object;
.source "WriteAndReadConfigNumInfo.java"


# instance fields
.field private mDao:Lcom/oppo/tribune/provider/forum/dao/ConfigNumInfoDao;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lcom/oppo/tribune/provider/forum/dao/ConfigNumInfoDao;

    invoke-direct {v0, p1}, Lcom/oppo/tribune/provider/forum/dao/ConfigNumInfoDao;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/tuner/providers/WriteAndReadConfigNumInfo;->mDao:Lcom/oppo/tribune/provider/forum/dao/ConfigNumInfoDao;

    .line 15
    return-void
.end method


# virtual methods
.method public insertConfigNum(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/info/ConfigNumInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 18
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/protobuf/info/ConfigNumInfo;>;"
    iget-object v0, p0, Lcom/oneplus/tuner/providers/WriteAndReadConfigNumInfo;->mDao:Lcom/oppo/tribune/provider/forum/dao/ConfigNumInfoDao;

    invoke-virtual {v0, p1}, Lcom/oppo/tribune/provider/forum/dao/ConfigNumInfoDao;->insert(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public queryBrandId(Ljava/lang/Long;)J
    .locals 4
    .param p1, "mTypeId"    # Ljava/lang/Long;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/oneplus/tuner/providers/WriteAndReadConfigNumInfo;->mDao:Lcom/oppo/tribune/provider/forum/dao/ConfigNumInfoDao;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/oppo/tribune/provider/forum/dao/ConfigNumInfoDao;->queryBrandId(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public queryRequestNum(Ljava/lang/Long;)J
    .locals 4
    .param p1, "mTypeId"    # Ljava/lang/Long;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/oneplus/tuner/providers/WriteAndReadConfigNumInfo;->mDao:Lcom/oppo/tribune/provider/forum/dao/ConfigNumInfoDao;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/oppo/tribune/provider/forum/dao/ConfigNumInfoDao;->queryRequestNum(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public readConfigNumList(I)Ljava/util/List;
    .locals 1
    .param p1, "brand_id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/info/ConfigNumInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lcom/oneplus/tuner/providers/WriteAndReadConfigNumInfo;->mDao:Lcom/oppo/tribune/provider/forum/dao/ConfigNumInfoDao;

    invoke-virtual {v0, p1}, Lcom/oppo/tribune/provider/forum/dao/ConfigNumInfoDao;->query(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public writeConfigNum(Ljava/util/List;I)Z
    .locals 1
    .param p2, "brand_id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/info/ConfigNumInfo;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 22
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/protobuf/info/ConfigNumInfo;>;"
    iget-object v0, p0, Lcom/oneplus/tuner/providers/WriteAndReadConfigNumInfo;->mDao:Lcom/oppo/tribune/provider/forum/dao/ConfigNumInfoDao;

    invoke-virtual {v0, p1, p2}, Lcom/oppo/tribune/provider/forum/dao/ConfigNumInfoDao;->update(Ljava/util/List;I)Z

    move-result v0

    return v0
.end method
