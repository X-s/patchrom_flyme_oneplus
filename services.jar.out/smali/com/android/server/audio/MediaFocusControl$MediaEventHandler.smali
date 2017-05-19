.class Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;
.super Landroid/os/Handler;
.source "MediaFocusControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/MediaFocusControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaEventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/MediaFocusControl;


# direct methods
.method constructor <init>(Lcom/android/server/audio/MediaFocusControl;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 363
    iput-object p1, p0, Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    .line 364
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 365
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 369
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 418
    :goto_0
    :pswitch_0
    return-void

    .line 371
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    # invokes: Lcom/android/server/audio/MediaFocusControl;->onRcDisplayClear()V
    invoke-static {v0}, Lcom/android/server/audio/MediaFocusControl;->access$900(Lcom/android/server/audio/MediaFocusControl;)V

    goto :goto_0

    .line 376
    :pswitch_2
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/audio/PlayerRecord;

    iget v2, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/audio/MediaFocusControl;->onRcDisplayUpdate(Lcom/android/server/audio/PlayerRecord;I)V
    invoke-static {v1, v0, v2}, Lcom/android/server/audio/MediaFocusControl;->access$1000(Lcom/android/server/audio/MediaFocusControl;Lcom/android/server/audio/PlayerRecord;I)V

    goto :goto_0

    .line 380
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    # invokes: Lcom/android/server/audio/MediaFocusControl;->onReevaluateRemote()V
    invoke-static {v0}, Lcom/android/server/audio/MediaFocusControl;->access$1100(Lcom/android/server/audio/MediaFocusControl;)V

    goto :goto_0

    .line 384
    :pswitch_4
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/IRemoteVolumeObserver;

    # invokes: Lcom/android/server/audio/MediaFocusControl;->onRegisterVolumeObserverForRcc(ILandroid/media/IRemoteVolumeObserver;)V
    invoke-static {v1, v2, v0}, Lcom/android/server/audio/MediaFocusControl;->access$1200(Lcom/android/server/audio/MediaFocusControl;ILandroid/media/IRemoteVolumeObserver;)V

    goto :goto_0

    .line 389
    :pswitch_5
    const-string v1, "MediaFocusControl"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSG_RCC_SET_PLAY_ITEM: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    # invokes: Lcom/android/server/audio/MediaFocusControl;->onSetRemoteControlClientPlayItem(ILjava/lang/Long;)V
    invoke-static {v1, v2, v0}, Lcom/android/server/audio/MediaFocusControl;->access$1300(Lcom/android/server/audio/MediaFocusControl;ILjava/lang/Long;)V

    goto :goto_0

    .line 395
    :pswitch_6
    const-string v0, "MediaFocusControl"

    const-string v1, "MSG_RCC_GET_NOW_PLAYING_ENTRIES: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    # invokes: Lcom/android/server/audio/MediaFocusControl;->onGetRemoteControlClientNowPlayingEntries()V
    invoke-static {v0}, Lcom/android/server/audio/MediaFocusControl;->access$1400(Lcom/android/server/audio/MediaFocusControl;)V

    goto :goto_0

    .line 400
    :pswitch_7
    const-string v0, "MediaFocusControl"

    const-string v1, "MSG_RCC_SET_BROWSED_PLAYER: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    # invokes: Lcom/android/server/audio/MediaFocusControl;->onSetRemoteControlClientBrowsedPlayer()V
    invoke-static {v0}, Lcom/android/server/audio/MediaFocusControl;->access$1500(Lcom/android/server/audio/MediaFocusControl;)V

    goto :goto_0

    .line 406
    :pswitch_8
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/IRemoteControlDisplay;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/android/server/audio/MediaFocusControl;->onRcDisplayInitInfo(Landroid/media/IRemoteControlDisplay;II)V
    invoke-static {v1, v0, v2, v3}, Lcom/android/server/audio/MediaFocusControl;->access$1600(Lcom/android/server/audio/MediaFocusControl;Landroid/media/IRemoteControlDisplay;II)V

    goto :goto_0

    .line 411
    :pswitch_9
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    # invokes: Lcom/android/server/audio/MediaFocusControl;->onReevaluateRemoteControlDisplays()V
    invoke-static {v0}, Lcom/android/server/audio/MediaFocusControl;->access$1700(Lcom/android/server/audio/MediaFocusControl;)V

    goto/16 :goto_0

    .line 415
    :pswitch_a
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/PendingIntent;

    invoke-virtual {v1, v0}, Lcom/android/server/audio/MediaFocusControl;->unregisterMediaButtonIntent(Landroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 369
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_7
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
