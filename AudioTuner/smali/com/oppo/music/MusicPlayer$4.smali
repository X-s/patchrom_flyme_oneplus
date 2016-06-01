.class Lcom/oppo/music/MusicPlayer$4;
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
    .line 894
    iput-object p1, p0, Lcom/oppo/music/MusicPlayer$4;->this$0:Lcom/oppo/music/MusicPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestBack(Lcom/oppo/music/manager/Request;)V
    .locals 10
    .param p1, "request"    # Lcom/oppo/music/manager/Request;

    .prologue
    const/4 v9, 0x0

    .line 898
    instance-of v6, p1, Lcom/oppo/music/manager/ThumbRequest;

    if-eqz v6, :cond_2

    move-object v5, p1

    .line 899
    check-cast v5, Lcom/oppo/music/manager/ThumbRequest;

    .line 900
    .local v5, "thumbRequest":Lcom/oppo/music/manager/ThumbRequest;
    const-string v6, "LockScreenMusicPlayer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onRequestBack() thumb path is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/oppo/music/manager/ThumbRequest;->getThumbPath()Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/oppo/music/utils/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    invoke-virtual {v5}, Lcom/oppo/music/manager/ThumbRequest;->getPlaylistItem()[Lcom/oppo/music/media/PlaylistItem;

    move-result-object v1

    .line 902
    .local v1, "l":[Lcom/oppo/music/media/PlaylistItem;
    if-nez v1, :cond_0

    .line 903
    const-string v6, "LockScreenMusicPlayer"

    const-string v7, "onRequestBack() thumb PlaylistItem queue is null!"

    invoke-static {v6, v7}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    .end local v1    # "l":[Lcom/oppo/music/media/PlaylistItem;
    .end local v5    # "thumbRequest":Lcom/oppo/music/manager/ThumbRequest;
    :goto_0
    return-void

    .line 906
    .restart local v1    # "l":[Lcom/oppo/music/media/PlaylistItem;
    .restart local v5    # "thumbRequest":Lcom/oppo/music/manager/ThumbRequest;
    :cond_0
    invoke-virtual {v5}, Lcom/oppo/music/manager/ThumbRequest;->getThumbPath()Ljava/util/Map;

    move-result-object v3

    .line 907
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/oppo/music/media/PlaylistItem;Ljava/lang/String;>;"
    if-nez v3, :cond_1

    .line 908
    const-string v6, "LockScreenMusicPlayer"

    const-string v7, "onRequestBack() thumb back map is null!"

    invoke-static {v6, v7}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 911
    :cond_1
    aget-object v6, v1, v9

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 912
    .local v4, "path":Ljava/lang/String;
    iget-object v6, p0, Lcom/oppo/music/MusicPlayer$4;->this$0:Lcom/oppo/music/MusicPlayer;

    # invokes: Lcom/oppo/music/MusicPlayer;->getBitmapWithPath(Ljava/lang/String;)Landroid/graphics/Bitmap;
    invoke-static {v6, v4}, Lcom/oppo/music/MusicPlayer;->access$1100(Lcom/oppo/music/MusicPlayer;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 913
    .local v0, "bm":Landroid/graphics/Bitmap;
    iget-object v6, p0, Lcom/oppo/music/MusicPlayer$4;->this$0:Lcom/oppo/music/MusicPlayer;

    # invokes: Lcom/oppo/music/MusicPlayer;->handleMusicThumbUpdated(Landroid/graphics/Bitmap;)V
    invoke-static {v6, v0}, Lcom/oppo/music/MusicPlayer;->access$1200(Lcom/oppo/music/MusicPlayer;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 914
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v1    # "l":[Lcom/oppo/music/media/PlaylistItem;
    .end local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/oppo/music/media/PlaylistItem;Ljava/lang/String;>;"
    .end local v4    # "path":Ljava/lang/String;
    .end local v5    # "thumbRequest":Lcom/oppo/music/manager/ThumbRequest;
    :cond_2
    instance-of v6, p1, Lcom/oppo/music/manager/LyricRequest;

    if-eqz v6, :cond_5

    move-object v2, p1

    .line 915
    check-cast v2, Lcom/oppo/music/manager/LyricRequest;

    .line 916
    .local v2, "lyricRequest":Lcom/oppo/music/manager/LyricRequest;
    const-string v6, "LockScreenMusicPlayer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onRequestBack() lyric path is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/oppo/music/manager/LyricRequest;->getLyricPath()Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/oppo/music/utils/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    invoke-virtual {v2}, Lcom/oppo/music/manager/LyricRequest;->getPlaylistItem()[Lcom/oppo/music/media/PlaylistItem;

    move-result-object v1

    .line 918
    .restart local v1    # "l":[Lcom/oppo/music/media/PlaylistItem;
    if-nez v1, :cond_3

    .line 919
    const-string v6, "LockScreenMusicPlayer"

    const-string v7, "onRequestBack() lyric PlaylistItem queue is null!"

    invoke-static {v6, v7}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 922
    :cond_3
    invoke-virtual {v2}, Lcom/oppo/music/manager/LyricRequest;->getLyricPath()Ljava/util/Map;

    move-result-object v3

    .line 923
    .restart local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/oppo/music/media/PlaylistItem;Ljava/lang/String;>;"
    if-nez v3, :cond_4

    .line 924
    const-string v6, "LockScreenMusicPlayer"

    const-string v7, "onRequestBack() lyric back map is null!"

    invoke-static {v6, v7}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 927
    :cond_4
    aget-object v6, v1, v9

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 928
    .restart local v4    # "path":Ljava/lang/String;
    iget-object v6, p0, Lcom/oppo/music/MusicPlayer$4;->this$0:Lcom/oppo/music/MusicPlayer;

    # invokes: Lcom/oppo/music/MusicPlayer;->handleMusicLyricUpdated(Ljava/lang/String;)V
    invoke-static {v6, v4}, Lcom/oppo/music/MusicPlayer;->access$1300(Lcom/oppo/music/MusicPlayer;Ljava/lang/String;)V

    goto :goto_0

    .line 930
    .end local v1    # "l":[Lcom/oppo/music/media/PlaylistItem;
    .end local v2    # "lyricRequest":Lcom/oppo/music/manager/LyricRequest;
    .end local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/oppo/music/media/PlaylistItem;Ljava/lang/String;>;"
    .end local v4    # "path":Ljava/lang/String;
    :cond_5
    const-string v6, "LockScreenMusicPlayer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onRequestBack() unknown request type, request="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
