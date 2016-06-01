.class Lcom/oppo/music/MusicPlayer$1;
.super Landroid/content/BroadcastReceiver;
.source "MusicPlayer.java"


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
    .line 88
    iput-object p1, p0, Lcom/oppo/music/MusicPlayer$1;->this$0:Lcom/oppo/music/MusicPlayer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x6

    .line 90
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "strAction":Ljava/lang/String;
    iget-object v1, p0, Lcom/oppo/music/MusicPlayer$1;->this$0:Lcom/oppo/music/MusicPlayer;

    # getter for: Lcom/oppo/music/MusicPlayer;->DEBUG:Z
    invoke-static {v1}, Lcom/oppo/music/MusicPlayer;->access$000(Lcom/oppo/music/MusicPlayer;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    const-string v1, "LockScreenMusicPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive strAction = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oppo/music/utils/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const-string v1, "LockScreenMusicPlayer"

    const-string v2, "changeMusic"

    invoke-static {v1, v2}, Lcom/oppo/music/utils/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_0
    const-string v1, "com.oppo.music.service.playstate_changed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 98
    iget-object v1, p0, Lcom/oppo/music/MusicPlayer$1;->this$0:Lcom/oppo/music/MusicPlayer;

    # getter for: Lcom/oppo/music/MusicPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/oppo/music/MusicPlayer;->access$100(Lcom/oppo/music/MusicPlayer;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 110
    :cond_1
    :goto_0
    return-void

    .line 99
    :cond_2
    const-string v1, "com.oppo.music.service.meta_changed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 100
    iget-object v1, p0, Lcom/oppo/music/MusicPlayer$1;->this$0:Lcom/oppo/music/MusicPlayer;

    # getter for: Lcom/oppo/music/MusicPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/oppo/music/MusicPlayer;->access$100(Lcom/oppo/music/MusicPlayer;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 101
    :cond_3
    const-string v1, "oppo.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 102
    iget-object v1, p0, Lcom/oppo/music/MusicPlayer$1;->this$0:Lcom/oppo/music/MusicPlayer;

    invoke-virtual {v1}, Lcom/oppo/music/MusicPlayer;->end()V

    goto :goto_0

    .line 103
    :cond_4
    const-string v1, "com.oppo.music.service.queue_changed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 104
    iget-object v1, p0, Lcom/oppo/music/MusicPlayer$1;->this$0:Lcom/oppo/music/MusicPlayer;

    # getter for: Lcom/oppo/music/MusicPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/oppo/music/MusicPlayer;->access$100(Lcom/oppo/music/MusicPlayer;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 105
    iget-object v1, p0, Lcom/oppo/music/MusicPlayer$1;->this$0:Lcom/oppo/music/MusicPlayer;

    # getter for: Lcom/oppo/music/MusicPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/oppo/music/MusicPlayer;->access$100(Lcom/oppo/music/MusicPlayer;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 106
    :cond_5
    const-string v1, "com.oppo.music.service.playback_complete"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    iget-object v1, p0, Lcom/oppo/music/MusicPlayer$1;->this$0:Lcom/oppo/music/MusicPlayer;

    # getter for: Lcom/oppo/music/MusicPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/oppo/music/MusicPlayer;->access$100(Lcom/oppo/music/MusicPlayer;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
