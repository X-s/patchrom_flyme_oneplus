.class final Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "OPSeekBarVolumizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/notification/OPSeekBarVolumizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Receiver"
.end annotation


# instance fields
.field private mListening:Z

.field final synthetic this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;


# direct methods
.method private constructor <init>(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)V
    .locals 0

    .prologue
    .line 392
    iput-object p1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;Lcom/oneplus/settings/notification/OPSeekBarVolumizer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/settings/notification/OPSeekBarVolumizer;
    .param p2, "x1"    # Lcom/oneplus/settings/notification/OPSeekBarVolumizer$1;

    .prologue
    .line 392
    invoke-direct {p0, p1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;-><init>(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)V

    return-void
.end method

.method private updateVolumeSlider(II)V
    .locals 6
    .param p1, "streamType"    # I
    .param p2, "streamValue"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 452
    iget-object v4, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    # getter for: Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mNotificationOrRing:Z
    invoke-static {v4}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$900(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Z

    move-result v4

    if-eqz v4, :cond_2

    # invokes: Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->isNotificationOrRing(I)Z
    invoke-static {p1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1700(I)Z

    move-result v1

    .line 454
    .local v1, "streamMatch":Z
    :goto_0
    iget-object v4, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    # getter for: Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v4}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$200(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/widget/SeekBar;

    move-result-object v4

    if-eqz v4, :cond_1

    if-eqz v1, :cond_1

    const/4 v4, -0x1

    if-eq p2, v4, :cond_1

    .line 455
    iget-object v4, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    # getter for: Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v4}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1100(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v4

    iget-object v5, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    # getter for: Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mStreamType:I
    invoke-static {v5}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1500(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v4

    if-nez v4, :cond_0

    if-nez p2, :cond_4

    :cond_0
    move v0, v2

    .line 457
    .local v0, "muted":Z
    :goto_1
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    # getter for: Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mUiHandler:Lcom/oneplus/settings/notification/OPSeekBarVolumizer$H;
    invoke-static {v2}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1600(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Lcom/oneplus/settings/notification/OPSeekBarVolumizer$H;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    # getter for: Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mLastAudibleStreamVolume:I
    invoke-static {v3}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$400(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)I

    move-result v3

    invoke-virtual {v2, p2, v3, v0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$H;->postUpdateSlider(IIZ)V

    .line 459
    .end local v0    # "muted":Z
    :cond_1
    return-void

    .line 452
    .end local v1    # "streamMatch":Z
    :cond_2
    iget-object v4, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    # getter for: Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mStreamType:I
    invoke-static {v4}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1500(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)I

    move-result v4

    if-ne p1, v4, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_0

    .restart local v1    # "streamMatch":Z
    :cond_4
    move v0, v3

    .line 455
    goto :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, -0x1

    .line 415
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 416
    .local v0, "action":Ljava/lang/String;
    const-string v6, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 417
    const-string v6, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 418
    .local v2, "streamType":I
    const-string v6, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 419
    .local v3, "streamValue":I
    invoke-direct {p0, v2, v3}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->updateVolumeSlider(II)V

    .line 449
    .end local v2    # "streamType":I
    .end local v3    # "streamValue":I
    :cond_0
    :goto_0
    return-void

    .line 420
    :cond_1
    const-string v6, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 421
    iget-object v6, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    # getter for: Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mNotificationOrRing:Z
    invoke-static {v6}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$900(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 422
    iget-object v6, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    iget-object v7, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    # getter for: Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v7}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1100(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v7

    # setter for: Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mRingerMode:I
    invoke-static {v6, v7}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1002(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;I)I

    .line 424
    :cond_2
    iget-object v6, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    # getter for: Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mAffectedByRingerMode:Z
    invoke-static {v6}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1200(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 425
    iget-object v6, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    # invokes: Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->updateSlider()V
    invoke-static {v6}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$700(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)V

    goto :goto_0

    .line 427
    :cond_3
    const-string v6, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 428
    const-string v6, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 429
    .restart local v2    # "streamType":I
    iget-object v6, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    # getter for: Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v6}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1100(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    .line 430
    .local v4, "streamVolume":I
    invoke-direct {p0, v2, v4}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->updateVolumeSlider(II)V

    goto :goto_0

    .line 431
    .end local v2    # "streamType":I
    .end local v4    # "streamVolume":I
    :cond_4
    const-string v6, "android.app.action.INTERRUPTION_FILTER_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 432
    iget-object v6, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    iget-object v7, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    # getter for: Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v7}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1400(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/app/NotificationManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v7

    # setter for: Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mZenMode:I
    invoke-static {v6, v7}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1302(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;I)I

    .line 433
    iget-object v6, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    # invokes: Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->updateSlider()V
    invoke-static {v6}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$700(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)V

    goto :goto_0

    .line 437
    :cond_5
    const-string v6, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 438
    iget-object v6, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    # getter for: Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v6}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$200(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/widget/SeekBar;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    # getter for: Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v6}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1100(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 439
    const-string v6, "OPSeekBarVolumizer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "VOLUME_CHANGED_ACTION mStreamType : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    # getter for: Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mStreamType:I
    invoke-static {v8}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1500(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget-object v6, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    # getter for: Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mStreamType:I
    invoke-static {v6}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1500(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_0

    .line 441
    iget-object v6, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    # getter for: Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v6}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1100(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v6

    iget-object v7, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    # getter for: Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mStreamType:I
    invoke-static {v7}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1500(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    .line 442
    .local v5, "volume":I
    iget-object v6, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    # getter for: Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v6}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1100(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v6

    iget-object v7, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    # getter for: Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mStreamType:I
    invoke-static {v7}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1500(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v1

    .line 443
    .local v1, "mute":Z
    const/4 v1, 0x0

    .line 444
    iget-object v6, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    # getter for: Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mUiHandler:Lcom/oneplus/settings/notification/OPSeekBarVolumizer$H;
    invoke-static {v6}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1600(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Lcom/oneplus/settings/notification/OPSeekBarVolumizer$H;

    move-result-object v6

    iget-object v7, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    # getter for: Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mLastAudibleStreamVolume:I
    invoke-static {v7}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$400(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)I

    move-result v7

    invoke-virtual {v6, v5, v7, v1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$H;->postUpdateSlider(IIZ)V

    goto/16 :goto_0
.end method

.method public setListening(Z)V
    .locals 2
    .param p1, "listening"    # Z

    .prologue
    .line 396
    iget-boolean v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->mListening:Z

    if-ne v1, p1, :cond_0

    .line 411
    :goto_0
    return-void

    .line 397
    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->mListening:Z

    .line 398
    if-eqz p1, :cond_1

    .line 399
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 400
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 403
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 405
    const-string v1, "android.app.action.INTERRUPTION_FILTER_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 406
    const-string v1, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 407
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    # getter for: Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$800(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 409
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_1
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    # getter for: Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$800(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method
