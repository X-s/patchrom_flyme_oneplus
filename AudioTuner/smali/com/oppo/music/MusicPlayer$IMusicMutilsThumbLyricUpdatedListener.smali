.class public interface abstract Lcom/oppo/music/MusicPlayer$IMusicMutilsThumbLyricUpdatedListener;
.super Ljava/lang/Object;
.source "MusicPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/music/MusicPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IMusicMutilsThumbLyricUpdatedListener"
.end annotation


# virtual methods
.method public abstract onMusicMutilsLyricUpdated(Ljava/util/Map;[Lcom/oppo/music/media/PlaylistItem;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/oppo/music/media/PlaylistItem;",
            "Ljava/lang/String;",
            ">;[",
            "Lcom/oppo/music/media/PlaylistItem;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onMusicMutilsThumbUpdated(Ljava/util/Map;[Lcom/oppo/music/media/PlaylistItem;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/oppo/music/media/PlaylistItem;",
            "Landroid/graphics/Bitmap;",
            ">;[",
            "Lcom/oppo/music/media/PlaylistItem;",
            ")V"
        }
    .end annotation
.end method
