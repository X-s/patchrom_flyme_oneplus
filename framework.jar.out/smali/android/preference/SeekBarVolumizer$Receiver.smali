.class final Landroid/preference/SeekBarVolumizer$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "SeekBarVolumizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/SeekBarVolumizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Receiver"
.end annotation


# instance fields
.field private mListening:Z

.field final synthetic this$0:Landroid/preference/SeekBarVolumizer;


# direct methods
.method private constructor <init>(Landroid/preference/SeekBarVolumizer;)V
    .locals 0

    .prologue
    .line 376
    iput-object p1, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/preference/SeekBarVolumizer;Landroid/preference/SeekBarVolumizer$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/preference/SeekBarVolumizer;
    .param p2, "x1"    # Landroid/preference/SeekBarVolumizer$1;

    .prologue
    .line 376
    invoke-direct {p0, p1}, Landroid/preference/SeekBarVolumizer$Receiver;-><init>(Landroid/preference/SeekBarVolumizer;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, -0x1

    .line 397
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 398
    .local v0, "action":Ljava/lang/String;
    const-string v7, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 399
    const-string v7, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 400
    .local v4, "streamType":I
    const-string v7, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 401
    .local v5, "streamValue":I
    iget-object v7, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    # getter for: Landroid/preference/SeekBarVolumizer;->mNotificationOrRing:Z
    invoke-static {v7}, Landroid/preference/SeekBarVolumizer;->access$800(Landroid/preference/SeekBarVolumizer;)Z

    move-result v7

    if-eqz v7, :cond_1

    # invokes: Landroid/preference/SeekBarVolumizer;->isNotificationOrRing(I)Z
    invoke-static {v4}, Landroid/preference/SeekBarVolumizer;->access$900(I)Z

    move-result v3

    .line 403
    .local v3, "streamMatch":Z
    :goto_0
    iget-object v7, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    # getter for: Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v7}, Landroid/preference/SeekBarVolumizer;->access$200(Landroid/preference/SeekBarVolumizer;)Landroid/widget/SeekBar;

    move-result-object v7

    if-eqz v7, :cond_0

    if-eqz v3, :cond_0

    if-eq v5, v8, :cond_0

    .line 404
    iget-object v7, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    # getter for: Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v7}, Landroid/preference/SeekBarVolumizer;->access$1100(Landroid/preference/SeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v7

    iget-object v8, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    # getter for: Landroid/preference/SeekBarVolumizer;->mStreamType:I
    invoke-static {v8}, Landroid/preference/SeekBarVolumizer;->access$1000(Landroid/preference/SeekBarVolumizer;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v2

    .line 405
    .local v2, "muted":Z
    iget-object v7, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    # getter for: Landroid/preference/SeekBarVolumizer;->mUiHandler:Landroid/preference/SeekBarVolumizer$H;
    invoke-static {v7}, Landroid/preference/SeekBarVolumizer;->access$1200(Landroid/preference/SeekBarVolumizer;)Landroid/preference/SeekBarVolumizer$H;

    move-result-object v7

    invoke-virtual {v7, v5, v2}, Landroid/preference/SeekBarVolumizer$H;->postUpdateSlider(IZ)V

    .line 431
    .end local v2    # "muted":Z
    .end local v3    # "streamMatch":Z
    .end local v4    # "streamType":I
    .end local v5    # "streamValue":I
    :cond_0
    :goto_1
    return-void

    .line 401
    .restart local v4    # "streamType":I
    .restart local v5    # "streamValue":I
    :cond_1
    iget-object v7, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    # getter for: Landroid/preference/SeekBarVolumizer;->mStreamType:I
    invoke-static {v7}, Landroid/preference/SeekBarVolumizer;->access$1000(Landroid/preference/SeekBarVolumizer;)I

    move-result v7

    if-ne v4, v7, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 407
    .end local v4    # "streamType":I
    .end local v5    # "streamValue":I
    :cond_3
    const-string v7, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 408
    iget-object v7, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    # getter for: Landroid/preference/SeekBarVolumizer;->mNotificationOrRing:Z
    invoke-static {v7}, Landroid/preference/SeekBarVolumizer;->access$800(Landroid/preference/SeekBarVolumizer;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 409
    iget-object v7, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    iget-object v8, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    # getter for: Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v8}, Landroid/preference/SeekBarVolumizer;->access$1100(Landroid/preference/SeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v8

    # setter for: Landroid/preference/SeekBarVolumizer;->mRingerMode:I
    invoke-static {v7, v8}, Landroid/preference/SeekBarVolumizer;->access$1302(Landroid/preference/SeekBarVolumizer;I)I

    .line 413
    :cond_4
    iget-object v7, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    # invokes: Landroid/preference/SeekBarVolumizer;->updateSlider()V
    invoke-static {v7}, Landroid/preference/SeekBarVolumizer;->access$600(Landroid/preference/SeekBarVolumizer;)V

    goto :goto_1

    .line 419
    :cond_5
    const-string v7, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 420
    iget-object v7, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    # getter for: Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v7}, Landroid/preference/SeekBarVolumizer;->access$200(Landroid/preference/SeekBarVolumizer;)Landroid/widget/SeekBar;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    # getter for: Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v7}, Landroid/preference/SeekBarVolumizer;->access$1100(Landroid/preference/SeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 421
    const-string v7, "SeekBarVolumizer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "VOLUME_CHANGED_ACTION mStreamType : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    # getter for: Landroid/preference/SeekBarVolumizer;->mStreamType:I
    invoke-static {v9}, Landroid/preference/SeekBarVolumizer;->access$1000(Landroid/preference/SeekBarVolumizer;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    iget-object v7, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    # getter for: Landroid/preference/SeekBarVolumizer;->mStreamType:I
    invoke-static {v7}, Landroid/preference/SeekBarVolumizer;->access$1000(Landroid/preference/SeekBarVolumizer;)I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_0

    .line 423
    iget-object v7, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    # getter for: Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v7}, Landroid/preference/SeekBarVolumizer;->access$1100(Landroid/preference/SeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v7

    iget-object v8, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    # getter for: Landroid/preference/SeekBarVolumizer;->mStreamType:I
    invoke-static {v8}, Landroid/preference/SeekBarVolumizer;->access$1000(Landroid/preference/SeekBarVolumizer;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v6

    .line 424
    .local v6, "volume":I
    iget-object v7, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    # getter for: Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v7}, Landroid/preference/SeekBarVolumizer;->access$1100(Landroid/preference/SeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v7

    iget-object v8, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    # getter for: Landroid/preference/SeekBarVolumizer;->mStreamType:I
    invoke-static {v8}, Landroid/preference/SeekBarVolumizer;->access$1000(Landroid/preference/SeekBarVolumizer;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v1

    .line 425
    .local v1, "mute":Z
    const/4 v1, 0x0

    .line 426
    iget-object v7, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    # getter for: Landroid/preference/SeekBarVolumizer;->mUiHandler:Landroid/preference/SeekBarVolumizer$H;
    invoke-static {v7}, Landroid/preference/SeekBarVolumizer;->access$1200(Landroid/preference/SeekBarVolumizer;)Landroid/preference/SeekBarVolumizer$H;

    move-result-object v7

    invoke-virtual {v7, v6, v1}, Landroid/preference/SeekBarVolumizer$H;->postUpdateSlider(IZ)V

    goto/16 :goto_1
.end method

.method public setListening(Z)V
    .locals 2
    .param p1, "listening"    # Z

    .prologue
    .line 380
    iget-boolean v1, p0, Landroid/preference/SeekBarVolumizer$Receiver;->mListening:Z

    if-ne v1, p1, :cond_0

    .line 393
    :goto_0
    return-void

    .line 381
    :cond_0
    iput-boolean p1, p0, Landroid/preference/SeekBarVolumizer$Receiver;->mListening:Z

    .line 382
    if-eqz p1, :cond_1

    .line 383
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 384
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 387
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 389
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    # getter for: Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/preference/SeekBarVolumizer;->access$700(Landroid/preference/SeekBarVolumizer;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 391
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_1
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    # getter for: Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/preference/SeekBarVolumizer;->access$700(Landroid/preference/SeekBarVolumizer;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method
