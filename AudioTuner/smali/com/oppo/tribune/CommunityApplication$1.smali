.class Lcom/oppo/tribune/CommunityApplication$1;
.super Ljava/lang/Object;
.source "CommunityApplication.java"

# interfaces
.implements Lcom/oppo/music/MusicPlayer$IMusicStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/CommunityApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/tribune/CommunityApplication;


# direct methods
.method constructor <init>(Lcom/oppo/tribune/CommunityApplication;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/oppo/tribune/CommunityApplication$1;->this$0:Lcom/oppo/tribune/CommunityApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnMusicPlaybackCompleted()V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

.method public OnMusicQueueChanged()V
    .locals 0

    .prologue
    .line 68
    return-void
.end method

.method public onMetaChanged()V
    .locals 0

    .prologue
    .line 73
    return-void
.end method

.method public onMusicServiceConnected()V
    .locals 0

    .prologue
    .line 78
    return-void
.end method

.method public onMusicServiceDisconnected()V
    .locals 0

    .prologue
    .line 83
    return-void
.end method

.method public onPlayStatechanged()V
    .locals 3

    .prologue
    .line 89
    const/4 v0, 0x1

    .line 91
    .local v0, "isPlaying":Z
    if-eqz v0, :cond_0

    .line 92
    invoke-static {}, Lcom/waves/maxxaudio/MaxxAudioManager;->getInstance()Lcom/waves/maxxaudio/MaxxAudioManager;

    move-result-object v1

    .line 93
    .local v1, "manager":Lcom/waves/maxxaudio/MaxxAudioManager;
    invoke-virtual {v1}, Lcom/waves/maxxaudio/MaxxAudioManager;->isEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/waves/maxxaudio/MaxxAudioManager;->setEnabled(Z)V

    .line 96
    .end local v1    # "manager":Lcom/waves/maxxaudio/MaxxAudioManager;
    :cond_0
    return-void
.end method
