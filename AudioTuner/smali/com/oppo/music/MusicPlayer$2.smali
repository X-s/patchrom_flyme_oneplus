.class Lcom/oppo/music/MusicPlayer$2;
.super Landroid/os/Handler;
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
    .line 113
    iput-object p1, p0, Lcom/oppo/music/MusicPlayer$2;->this$0:Lcom/oppo/music/MusicPlayer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 115
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 139
    :goto_0
    return-void

    .line 117
    :pswitch_0
    iget-object v0, p0, Lcom/oppo/music/MusicPlayer$2;->this$0:Lcom/oppo/music/MusicPlayer;

    # invokes: Lcom/oppo/music/MusicPlayer;->handlePlayStateChanged()V
    invoke-static {v0}, Lcom/oppo/music/MusicPlayer;->access$200(Lcom/oppo/music/MusicPlayer;)V

    goto :goto_0

    .line 120
    :pswitch_1
    iget-object v0, p0, Lcom/oppo/music/MusicPlayer$2;->this$0:Lcom/oppo/music/MusicPlayer;

    # invokes: Lcom/oppo/music/MusicPlayer;->handleMetaChanged()V
    invoke-static {v0}, Lcom/oppo/music/MusicPlayer;->access$300(Lcom/oppo/music/MusicPlayer;)V

    goto :goto_0

    .line 124
    :pswitch_2
    iget-object v0, p0, Lcom/oppo/music/MusicPlayer$2;->this$0:Lcom/oppo/music/MusicPlayer;

    # invokes: Lcom/oppo/music/MusicPlayer;->handleMusicServiceDisconnected()V
    invoke-static {v0}, Lcom/oppo/music/MusicPlayer;->access$400(Lcom/oppo/music/MusicPlayer;)V

    .line 127
    :pswitch_3
    iget-object v0, p0, Lcom/oppo/music/MusicPlayer$2;->this$0:Lcom/oppo/music/MusicPlayer;

    const/4 v1, 0x0

    # invokes: Lcom/oppo/music/MusicPlayer;->handleMusicServiceBindResult(Z)V
    invoke-static {v0, v1}, Lcom/oppo/music/MusicPlayer;->access$500(Lcom/oppo/music/MusicPlayer;Z)V

    goto :goto_0

    .line 130
    :pswitch_4
    iget-object v0, p0, Lcom/oppo/music/MusicPlayer$2;->this$0:Lcom/oppo/music/MusicPlayer;

    const/4 v1, 0x1

    # invokes: Lcom/oppo/music/MusicPlayer;->handleMusicServiceBindResult(Z)V
    invoke-static {v0, v1}, Lcom/oppo/music/MusicPlayer;->access$500(Lcom/oppo/music/MusicPlayer;Z)V

    goto :goto_0

    .line 133
    :pswitch_5
    iget-object v0, p0, Lcom/oppo/music/MusicPlayer$2;->this$0:Lcom/oppo/music/MusicPlayer;

    # invokes: Lcom/oppo/music/MusicPlayer;->handleMusicQueueChanged()V
    invoke-static {v0}, Lcom/oppo/music/MusicPlayer;->access$600(Lcom/oppo/music/MusicPlayer;)V

    goto :goto_0

    .line 136
    :pswitch_6
    iget-object v0, p0, Lcom/oppo/music/MusicPlayer$2;->this$0:Lcom/oppo/music/MusicPlayer;

    # invokes: Lcom/oppo/music/MusicPlayer;->handleMusicPlaybackCompleted()V
    invoke-static {v0}, Lcom/oppo/music/MusicPlayer;->access$700(Lcom/oppo/music/MusicPlayer;)V

    goto :goto_0

    .line 115
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
