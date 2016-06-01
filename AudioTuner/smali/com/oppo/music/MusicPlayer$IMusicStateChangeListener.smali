.class public interface abstract Lcom/oppo/music/MusicPlayer$IMusicStateChangeListener;
.super Ljava/lang/Object;
.source "MusicPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/music/MusicPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IMusicStateChangeListener"
.end annotation


# virtual methods
.method public abstract OnMusicPlaybackCompleted()V
.end method

.method public abstract OnMusicQueueChanged()V
.end method

.method public abstract onMetaChanged()V
.end method

.method public abstract onMusicServiceConnected()V
.end method

.method public abstract onMusicServiceDisconnected()V
.end method

.method public abstract onPlayStatechanged()V
.end method
