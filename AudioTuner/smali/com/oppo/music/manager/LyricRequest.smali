.class public Lcom/oppo/music/manager/LyricRequest;
.super Lcom/oppo/music/manager/Request;
.source "LyricRequest.java"


# instance fields
.field private mItems:[Lcom/oppo/music/media/PlaylistItem;

.field private mLyricPaths:Ljava/util/Map;
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
    .line 15
    invoke-direct {p0}, Lcom/oppo/music/manager/Request;-><init>()V

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oppo/music/manager/LyricRequest;->mLyricPaths:Ljava/util/Map;

    .line 16
    iput-object p1, p0, Lcom/oppo/music/manager/LyricRequest;->mItems:[Lcom/oppo/music/media/PlaylistItem;

    .line 17
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 6

    .prologue
    .line 29
    iget-object v5, p0, Lcom/oppo/music/manager/LyricRequest;->mItems:[Lcom/oppo/music/media/PlaylistItem;

    if-eqz v5, :cond_0

    .line 30
    iget-object v0, p0, Lcom/oppo/music/manager/LyricRequest;->mItems:[Lcom/oppo/music/media/PlaylistItem;

    .local v0, "arr$":[Lcom/oppo/music/media/PlaylistItem;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 31
    .local v2, "it":Lcom/oppo/music/media/PlaylistItem;
    invoke-static {v2}, Lcom/oppo/music/utils/PlayServiceUtils;->getLyricPath(Lcom/oppo/music/media/PlaylistItem;)Ljava/lang/String;

    move-result-object v4

    .line 32
    .local v4, "path":Ljava/lang/String;
    iget-object v5, p0, Lcom/oppo/music/manager/LyricRequest;->mLyricPaths:Ljava/util/Map;

    invoke-interface {v5, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 35
    .end local v0    # "arr$":[Lcom/oppo/music/media/PlaylistItem;
    .end local v1    # "i$":I
    .end local v2    # "it":Lcom/oppo/music/media/PlaylistItem;
    .end local v3    # "len$":I
    .end local v4    # "path":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public getLyricPath()Ljava/util/Map;
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
    .line 20
    iget-object v0, p0, Lcom/oppo/music/manager/LyricRequest;->mLyricPaths:Ljava/util/Map;

    return-object v0
.end method

.method public getPlaylistItem()[Lcom/oppo/music/media/PlaylistItem;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/oppo/music/manager/LyricRequest;->mItems:[Lcom/oppo/music/media/PlaylistItem;

    return-object v0
.end method
