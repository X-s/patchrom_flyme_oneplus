.class public Lcom/oppo/tribune/square/parse/ToplineGalleryResult;
.super Ljava/lang/Object;
.source "ToplineGalleryResult.java"


# static fields
.field public static final TOLINEGALLERY_LASTMODIFY_KEY:Ljava/lang/String; = "ToplineGalleryResult.LastModify"

.field private static final URL:Ljava/lang/String; = "http://ddinterface2.oneplus.cn:8000/square/adlist"


# instance fields
.field private mHasNoContent:Z

.field private mIsNotModify:Z

.field private mPbGallery:Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;


# direct methods
.method private constructor <init>(Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;ZZ)V
    .locals 1
    .param p1, "pbGallery"    # Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;
    .param p2, "hasNoContent"    # Z
    .param p3, "isNotModify"    # Z

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-boolean v0, p0, Lcom/oppo/tribune/square/parse/ToplineGalleryResult;->mHasNoContent:Z

    .line 26
    iput-boolean v0, p0, Lcom/oppo/tribune/square/parse/ToplineGalleryResult;->mIsNotModify:Z

    .line 38
    iput-object p1, p0, Lcom/oppo/tribune/square/parse/ToplineGalleryResult;->mPbGallery:Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;

    .line 39
    iput-boolean p2, p0, Lcom/oppo/tribune/square/parse/ToplineGalleryResult;->mHasNoContent:Z

    .line 40
    iput-boolean p3, p0, Lcom/oppo/tribune/square/parse/ToplineGalleryResult;->mIsNotModify:Z

    .line 41
    return-void
.end method

.method private static getServerUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://ddinterface2.oneplus.cn:8000/square/adlist"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "?appversion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/oppo/tribune/StatisticsHeader;->getInstance(Landroid/content/Context;)Lcom/oppo/tribune/StatisticsHeader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oppo/tribune/StatisticsHeader;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Landroid/content/Context;)Lcom/oppo/tribune/square/parse/ToplineGalleryResult;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 46
    const-string v4, "ToplineGalleryResult.LastModify"

    const-string v6, ""

    invoke-static {p0, v4, v6}, Lcom/oppo/tribune/square/resdown/parse/ResUrlUtil;->getMd5c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 48
    .local v2, "md5c":Ljava/lang/String;
    new-instance v3, Lcom/oppo/tribune/util/connection/GetMethod;

    invoke-static {p0}, Lcom/oppo/tribune/square/parse/ToplineGalleryResult;->getServerUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4, v7, v7}, Lcom/oppo/tribune/util/connection/GetMethod;-><init>(Landroid/content/Context;Ljava/lang/String;ZZ)V

    .line 50
    .local v3, "method":Lcom/oppo/tribune/util/connection/GetMethod;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 51
    invoke-virtual {v3, v2}, Lcom/oppo/tribune/util/connection/GetMethod;->setMd5c(Ljava/lang/String;)V

    .line 53
    :cond_0
    invoke-virtual {v3}, Lcom/oppo/tribune/util/connection/GetMethod;->execute()[B

    move-result-object v0

    .line 55
    .local v0, "buf":[B
    invoke-static {v0}, Lcom/oppo/tribune/util/Utils;->isNullOrEmpty([B)Z

    move-result v4

    if-nez v4, :cond_2

    .line 59
    :try_start_0
    const-string v4, "ToplineGalleryResult.LastModify"

    invoke-virtual {v3}, Lcom/oppo/tribune/util/connection/GetMethod;->getMd5c()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v4, v6}, Lcom/oppo/tribune/square/resdown/parse/ResUrlUtil;->setMd5c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    new-instance v4, Lcom/oppo/tribune/square/parse/ToplineGalleryResult;

    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;->parseFrom([B)Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v4, v6, v7, v8}, Lcom/oppo/tribune/square/parse/ToplineGalleryResult;-><init>(Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;ZZ)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :goto_0
    return-object v4

    .line 64
    :catch_0
    move-exception v1

    .line 65
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->printStackTrace()V

    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :cond_1
    move-object v4, v5

    .line 76
    goto :goto_0

    .line 67
    :cond_2
    invoke-virtual {v3}, Lcom/oppo/tribune/util/connection/GetMethod;->hasNoContent()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 68
    const-string v4, "ToplineGalleryResult.LastModify"

    invoke-virtual {v3}, Lcom/oppo/tribune/util/connection/GetMethod;->getMd5c()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v4, v6}, Lcom/oppo/tribune/square/resdown/parse/ResUrlUtil;->setMd5c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    new-instance v4, Lcom/oppo/tribune/square/parse/ToplineGalleryResult;

    invoke-direct {v4, v5, v8, v7}, Lcom/oppo/tribune/square/parse/ToplineGalleryResult;-><init>(Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;ZZ)V

    goto :goto_0

    .line 71
    :cond_3
    invoke-virtual {v3}, Lcom/oppo/tribune/util/connection/GetMethod;->isNotModified()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 72
    const-string v4, "ToplineGalleryResult.LastModify"

    invoke-virtual {v3}, Lcom/oppo/tribune/util/connection/GetMethod;->getMd5c()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v4, v6}, Lcom/oppo/tribune/square/resdown/parse/ResUrlUtil;->setMd5c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    new-instance v4, Lcom/oppo/tribune/square/parse/ToplineGalleryResult;

    invoke-direct {v4, v5, v7, v8}, Lcom/oppo/tribune/square/parse/ToplineGalleryResult;-><init>(Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;ZZ)V

    goto :goto_0
.end method


# virtual methods
.method public getToplineGalleryList()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/info/GalleryImgInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 80
    iget-object v5, p0, Lcom/oppo/tribune/square/parse/ToplineGalleryResult;->mPbGallery:Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;

    if-nez v5, :cond_1

    .line 105
    :cond_0
    return-object v2

    .line 84
    :cond_1
    iget-object v5, p0, Lcom/oppo/tribune/square/parse/ToplineGalleryResult;->mPbGallery:Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;

    invoke-virtual {v5}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_adlist;->getAdlistList()Ljava/util/List;

    move-result-object v4

    .line 86
    .local v4, "netList":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;>;"
    invoke-static {v4}, Lcom/oppo/tribune/util/Utils;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 90
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/protobuf/info/GalleryImgInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;

    .line 94
    .local v3, "netEntity":Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;
    new-instance v0, Lcom/oppo/tribune/protobuf/info/GalleryImgInfo;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/info/GalleryImgInfo;-><init>()V

    .line 96
    .local v0, "entity":Lcom/oppo/tribune/protobuf/info/GalleryImgInfo;
    invoke-virtual {v3}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/oppo/tribune/protobuf/info/GalleryImgInfo;->setTitle(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v3}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->getType()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/oppo/tribune/protobuf/info/GalleryImgInfo;->setType(I)V

    .line 98
    invoke-virtual {v3}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->getId()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/oppo/tribune/protobuf/info/GalleryImgInfo;->setId(I)V

    .line 99
    invoke-virtual {v3}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->getPic()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/oppo/tribune/protobuf/info/GalleryImgInfo;->setPic(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v3}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->getRid()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/oppo/tribune/protobuf/info/GalleryImgInfo;->setRid(J)V

    .line 101
    invoke-virtual {v3}, Lcom/oppo/tribune/protobuf/ToplineGalleryProto$pb_ad;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/oppo/tribune/protobuf/info/GalleryImgInfo;->setUrl(Ljava/lang/String;)V

    .line 103
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public hasNoContent()Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/oppo/tribune/square/parse/ToplineGalleryResult;->mHasNoContent:Z

    return v0
.end method

.method public isNotModify()Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/oppo/tribune/square/parse/ToplineGalleryResult;->mIsNotModify:Z

    return v0
.end method
