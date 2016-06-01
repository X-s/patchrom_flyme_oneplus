.class Lcom/oppo/music/MusicPlayer$3;
.super Ljava/lang/Object;
.source "MusicPlayer.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
    .line 689
    iput-object p1, p0, Lcom/oppo/music/MusicPlayer$3;->this$0:Lcom/oppo/music/MusicPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 691
    if-nez p2, :cond_0

    .line 692
    const-string v0, "TestZag"

    const-string v1, "intialFinished false"

    invoke-static {v0, v1}, Lcom/oppo/music/utils/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    iget-object v0, p0, Lcom/oppo/music/MusicPlayer$3;->this$0:Lcom/oppo/music/MusicPlayer;

    # getter for: Lcom/oppo/music/MusicPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/oppo/music/MusicPlayer;->access$100(Lcom/oppo/music/MusicPlayer;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 699
    :goto_0
    iget-object v0, p0, Lcom/oppo/music/MusicPlayer$3;->this$0:Lcom/oppo/music/MusicPlayer;

    const/4 v1, 0x0

    # setter for: Lcom/oppo/music/MusicPlayer;->mHaveBinded:Z
    invoke-static {v0, v1}, Lcom/oppo/music/MusicPlayer;->access$902(Lcom/oppo/music/MusicPlayer;Z)Z

    .line 700
    return-void

    .line 695
    :cond_0
    iget-object v0, p0, Lcom/oppo/music/MusicPlayer$3;->this$0:Lcom/oppo/music/MusicPlayer;

    # setter for: Lcom/oppo/music/MusicPlayer;->mIBinder:Landroid/os/IBinder;
    invoke-static {v0, p2}, Lcom/oppo/music/MusicPlayer;->access$802(Lcom/oppo/music/MusicPlayer;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 696
    iget-object v0, p0, Lcom/oppo/music/MusicPlayer$3;->this$0:Lcom/oppo/music/MusicPlayer;

    # getter for: Lcom/oppo/music/MusicPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/oppo/music/MusicPlayer;->access$100(Lcom/oppo/music/MusicPlayer;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 697
    const-string v0, "TestZag"

    const-string v1, "intialFinished true"

    invoke-static {v0, v1}, Lcom/oppo/music/utils/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 703
    const-string v0, "LockScreenMusicPlayer"

    const-string v1, "onServiceDisconnected,unbindService \t "

    invoke-static {v0, v1}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    # getter for: Lcom/oppo/music/MusicPlayer;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/oppo/music/MusicPlayer;->access$1000()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 706
    # getter for: Lcom/oppo/music/MusicPlayer;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/oppo/music/MusicPlayer;->access$1000()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oppo/music/utils/PlayServiceUtils;->unbindService(Landroid/content/Context;)V

    .line 709
    :cond_0
    iget-object v0, p0, Lcom/oppo/music/MusicPlayer$3;->this$0:Lcom/oppo/music/MusicPlayer;

    const/4 v1, 0x0

    # setter for: Lcom/oppo/music/MusicPlayer;->mIBinder:Landroid/os/IBinder;
    invoke-static {v0, v1}, Lcom/oppo/music/MusicPlayer;->access$802(Lcom/oppo/music/MusicPlayer;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 710
    iget-object v0, p0, Lcom/oppo/music/MusicPlayer$3;->this$0:Lcom/oppo/music/MusicPlayer;

    const/4 v1, 0x0

    # setter for: Lcom/oppo/music/MusicPlayer;->mHaveBinded:Z
    invoke-static {v0, v1}, Lcom/oppo/music/MusicPlayer;->access$902(Lcom/oppo/music/MusicPlayer;Z)Z

    .line 713
    iget-object v0, p0, Lcom/oppo/music/MusicPlayer$3;->this$0:Lcom/oppo/music/MusicPlayer;

    # getter for: Lcom/oppo/music/MusicPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/oppo/music/MusicPlayer;->access$100(Lcom/oppo/music/MusicPlayer;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 715
    return-void
.end method
