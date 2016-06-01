.class public Lcom/oppo/music/manager/ThumbRequest;
.super Lcom/oppo/music/manager/Request;
.source "ThumbRequest.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ThumbRequest"


# instance fields
.field private mItems:[Lcom/oppo/music/media/PlaylistItem;

.field private mThumbPaths:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/oppo/music/media/PlaylistItem;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Lcom/oppo/music/media/PlaylistItem;)V
    .locals 1
    .param p1, "items"    # [Lcom/oppo/music/media/PlaylistItem;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/oppo/music/manager/Request;-><init>()V

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oppo/music/manager/ThumbRequest;->mThumbPaths:Ljava/util/Map;

    .line 19
    iput-object p1, p0, Lcom/oppo/music/manager/ThumbRequest;->mItems:[Lcom/oppo/music/media/PlaylistItem;

    .line 20
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 8

    .prologue
    .line 33
    const-string v5, "ThumbRequest"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ThumbRequest, mItems="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/oppo/music/manager/ThumbRequest;->mItems:[Lcom/oppo/music/media/PlaylistItem;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/oppo/music/utils/MyLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iget-object v5, p0, Lcom/oppo/music/manager/ThumbRequest;->mItems:[Lcom/oppo/music/media/PlaylistItem;

    if-eqz v5, :cond_0

    .line 35
    const-string v5, "ThumbRequest"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ThumbRequest, mItems.length="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/oppo/music/manager/ThumbRequest;->mItems:[Lcom/oppo/music/media/PlaylistItem;

    array-length v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/oppo/music/utils/MyLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iget-object v0, p0, Lcom/oppo/music/manager/ThumbRequest;->mItems:[Lcom/oppo/music/media/PlaylistItem;

    .local v0, "arr$":[Lcom/oppo/music/media/PlaylistItem;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 37
    .local v2, "it":Lcom/oppo/music/media/PlaylistItem;
    invoke-static {v2}, Lcom/oppo/music/utils/PlayServiceUtils;->getTrackThumbPath(Lcom/oppo/music/media/PlaylistItem;)Ljava/lang/String;

    move-result-object v4

    .line 38
    .local v4, "path":Ljava/lang/String;
    iget-object v5, p0, Lcom/oppo/music/manager/ThumbRequest;->mThumbPaths:Ljava/util/Map;

    invoke-interface {v5, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 41
    .end local v0    # "arr$":[Lcom/oppo/music/media/PlaylistItem;
    .end local v1    # "i$":I
    .end local v2    # "it":Lcom/oppo/music/media/PlaylistItem;
    .end local v3    # "len$":I
    .end local v4    # "path":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public getPlaylistItem()[Lcom/oppo/music/media/PlaylistItem;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/oppo/music/manager/ThumbRequest;->mItems:[Lcom/oppo/music/media/PlaylistItem;

    return-object v0
.end method

.method public getThumbPath()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/oppo/music/media/PlaylistItem;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lcom/oppo/music/manager/ThumbRequest;->mThumbPaths:Ljava/util/Map;

    return-object v0
.end method
