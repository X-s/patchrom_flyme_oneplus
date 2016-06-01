.class Lcom/oppo/music/MusicPlayer$5;
.super Ljava/lang/Object;
.source "MusicPlayer.java"

# interfaces
.implements Lcom/oppo/music/manager/AsyncRequestManager$AsyncRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/music/MusicPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/music/MusicPlayer;


# direct methods
.method constructor <init>(Lcom/oppo/music/MusicPlayer;)V
    .locals 0

    .prologue
    .line 936
    iput-object p1, p0, Lcom/oppo/music/MusicPlayer$5;->this$0:Lcom/oppo/music/MusicPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestBack(Lcom/oppo/music/manager/Request;)V
    .locals 14
    .param p1, "request"    # Lcom/oppo/music/manager/Request;

    .prologue
    .line 940
    instance-of v11, p1, Lcom/oppo/music/manager/ThumbRequest;

    if-eqz v11, :cond_3

    move-object v10, p1

    .line 941
    check-cast v10, Lcom/oppo/music/manager/ThumbRequest;

    .line 942
    .local v10, "thumbRequest":Lcom/oppo/music/manager/ThumbRequest;
    const-string v11, "LockScreenMusicPlayer"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onRequestBack()--Mutils thumb path is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v10}, Lcom/oppo/music/manager/ThumbRequest;->getThumbPath()Ljava/util/Map;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/oppo/music/utils/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    invoke-virtual {v10}, Lcom/oppo/music/manager/ThumbRequest;->getPlaylistItem()[Lcom/oppo/music/media/PlaylistItem;

    move-result-object v5

    .line 944
    .local v5, "l":[Lcom/oppo/music/media/PlaylistItem;
    if-nez v5, :cond_0

    .line 945
    const-string v11, "LockScreenMusicPlayer"

    const-string v12, "onRequestBack()--Mutils thumb PlaylistItem queue is null!"

    invoke-static {v11, v12}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    .end local v5    # "l":[Lcom/oppo/music/media/PlaylistItem;
    .end local v10    # "thumbRequest":Lcom/oppo/music/manager/ThumbRequest;
    :goto_0
    return-void

    .line 948
    .restart local v5    # "l":[Lcom/oppo/music/media/PlaylistItem;
    .restart local v10    # "thumbRequest":Lcom/oppo/music/manager/ThumbRequest;
    :cond_0
    invoke-virtual {v10}, Lcom/oppo/music/manager/ThumbRequest;->getThumbPath()Ljava/util/Map;

    move-result-object v8

    .line 949
    .local v8, "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/oppo/music/media/PlaylistItem;Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 950
    .local v2, "bmMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/oppo/music/media/PlaylistItem;Landroid/graphics/Bitmap;>;"
    move-object v0, v5

    .local v0, "arr$":[Lcom/oppo/music/media/PlaylistItem;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v6, :cond_2

    aget-object v4, v0, v3

    .line 951
    .local v4, "it":Lcom/oppo/music/media/PlaylistItem;
    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 952
    .local v9, "path":Ljava/lang/String;
    if-eqz v9, :cond_1

    .line 953
    iget-object v11, p0, Lcom/oppo/music/MusicPlayer$5;->this$0:Lcom/oppo/music/MusicPlayer;

    # invokes: Lcom/oppo/music/MusicPlayer;->getBitmapWithPath(Ljava/lang/String;)Landroid/graphics/Bitmap;
    invoke-static {v11, v9}, Lcom/oppo/music/MusicPlayer;->access$1100(Lcom/oppo/music/MusicPlayer;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 954
    .local v1, "bm":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_1

    .line 955
    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 950
    .end local v1    # "bm":Landroid/graphics/Bitmap;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 959
    .end local v4    # "it":Lcom/oppo/music/media/PlaylistItem;
    .end local v9    # "path":Ljava/lang/String;
    :cond_2
    iget-object v11, p0, Lcom/oppo/music/MusicPlayer$5;->this$0:Lcom/oppo/music/MusicPlayer;

    # invokes: Lcom/oppo/music/MusicPlayer;->handleMusicMutilsThumbUpdated(Ljava/util/Map;[Lcom/oppo/music/media/PlaylistItem;)V
    invoke-static {v11, v2, v5}, Lcom/oppo/music/MusicPlayer;->access$1400(Lcom/oppo/music/MusicPlayer;Ljava/util/Map;[Lcom/oppo/music/media/PlaylistItem;)V

    goto :goto_0

    .line 960
    .end local v0    # "arr$":[Lcom/oppo/music/media/PlaylistItem;
    .end local v2    # "bmMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/oppo/music/media/PlaylistItem;Landroid/graphics/Bitmap;>;"
    .end local v3    # "i$":I
    .end local v5    # "l":[Lcom/oppo/music/media/PlaylistItem;
    .end local v6    # "len$":I
    .end local v8    # "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/oppo/music/media/PlaylistItem;Ljava/lang/String;>;"
    .end local v10    # "thumbRequest":Lcom/oppo/music/manager/ThumbRequest;
    :cond_3
    instance-of v11, p1, Lcom/oppo/music/manager/LyricRequest;

    if-eqz v11, :cond_5

    move-object v7, p1

    .line 961
    check-cast v7, Lcom/oppo/music/manager/LyricRequest;

    .line 962
    .local v7, "lyricRequest":Lcom/oppo/music/manager/LyricRequest;
    const-string v11, "LockScreenMusicPlayer"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onRequestBack()--Mutils lyric path is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v7}, Lcom/oppo/music/manager/LyricRequest;->getLyricPath()Ljava/util/Map;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/oppo/music/utils/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    invoke-virtual {v7}, Lcom/oppo/music/manager/LyricRequest;->getPlaylistItem()[Lcom/oppo/music/media/PlaylistItem;

    move-result-object v5

    .line 964
    .restart local v5    # "l":[Lcom/oppo/music/media/PlaylistItem;
    if-nez v5, :cond_4

    .line 965
    const-string v11, "LockScreenMusicPlayer"

    const-string v12, "onRequestBack()--Mutils lyric PlaylistItem queue is null!"

    invoke-static {v11, v12}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 968
    :cond_4
    invoke-virtual {v7}, Lcom/oppo/music/manager/LyricRequest;->getLyricPath()Ljava/util/Map;

    move-result-object v8

    .line 969
    .restart local v8    # "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/oppo/music/media/PlaylistItem;Ljava/lang/String;>;"
    iget-object v11, p0, Lcom/oppo/music/MusicPlayer$5;->this$0:Lcom/oppo/music/MusicPlayer;

    # invokes: Lcom/oppo/music/MusicPlayer;->handleMutilsMusicLyricUpdated(Ljava/util/Map;[Lcom/oppo/music/media/PlaylistItem;)V
    invoke-static {v11, v8, v5}, Lcom/oppo/music/MusicPlayer;->access$1500(Lcom/oppo/music/MusicPlayer;Ljava/util/Map;[Lcom/oppo/music/media/PlaylistItem;)V

    goto :goto_0

    .line 971
    .end local v5    # "l":[Lcom/oppo/music/media/PlaylistItem;
    .end local v7    # "lyricRequest":Lcom/oppo/music/manager/LyricRequest;
    .end local v8    # "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/oppo/music/media/PlaylistItem;Ljava/lang/String;>;"
    :cond_5
    const-string v11, "LockScreenMusicPlayer"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onRequestBack()--Mutils unknown request type, request="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
