.class public Lcom/oppo/tribune/protobuf/info/FeedImgListGson;
.super Ljava/lang/Object;
.source "FeedImgListGson.java"


# instance fields
.field private imgInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/info/FeedImgInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/info/FeedImgInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p1, "imgInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/protobuf/info/FeedImgInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/info/FeedImgListGson;->imgInfoList:Ljava/util/List;

    .line 22
    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/info/FeedImgListGson;
    .locals 3
    .param p0, "json"    # Ljava/lang/String;

    .prologue
    .line 35
    :try_start_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/oppo/tribune/protobuf/info/FeedImgListGson;

    invoke-virtual {v1, p0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/tribune/protobuf/info/FeedImgListGson;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :goto_0
    return-object v1

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Lcom/google/gson/JsonSyntaxException;
    invoke-virtual {v0}, Lcom/google/gson/JsonSyntaxException;->printStackTrace()V

    .line 39
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static toJson(Lcom/oppo/tribune/protobuf/info/FeedImgListGson;)Ljava/lang/String;
    .locals 1
    .param p0, "obj"    # Lcom/oppo/tribune/protobuf/info/FeedImgListGson;

    .prologue
    .line 29
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getFeedImgList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/info/FeedImgInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/info/FeedImgListGson;->imgInfoList:Ljava/util/List;

    return-object v0
.end method
