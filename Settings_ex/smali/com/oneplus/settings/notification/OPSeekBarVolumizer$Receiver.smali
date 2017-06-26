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
    .line 439
    iput-object p1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;Lcom/oneplus/settings/notification/OPSeekBarVolumizer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/settings/notification/OPSeekBarVolumizer;
    .param p2, "x1"    # Lcom/oneplus/settings/notification/OPSeekBarVolumizer$1;

    .prologue
    .line 439
    invoke-direct {p0, p1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;-><init>(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 465
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 466
    .local v0, "action":Ljava/lang/String;
    iget-object v8, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    # getter for: Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mStreamType:I
    invoke-static {v8}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$800(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_0

    .line 467
    const-string v8, "chenhl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "action:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/oneplus/settings/ringtone/OPMyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    :cond_0
    const-string v8, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 470
    const-string v8, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/4 v9, -0x1

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 472
    .local v5, "streamType":I
    const-string v8, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    const/4 v9, -0x1

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 474
    .local v6, "streamValue":I
    iget-object v8, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    # getter for: Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mNotificationOrRing:Z
    invoke-static {v8}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1000(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Z

    move-result v8

    if-eqz v8, :cond_3

    # invokes: Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->isNotificationOrRing(I)Z
    invoke-static {v5}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1300(I)Z

    move-result v4

    .line 476
    .local v4, "streamMatch":Z
    :goto_0
    iget-object v8, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    # getter for: Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mSeekBar:Lcom/oneplus/widget/OPSeekBar;
    invoke-static {v8}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$200(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Lcom/oneplus/widget/OPSeekBar;

    move-result-object v8

    if-eqz v8, :cond_2

    if-eqz v4, :cond_2

    const/4 v8, -0x1

    if-eq v6, v8, :cond_2

    .line 477
    iget-object v8, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    # getter for: Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v8}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1400(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v8

    iget-object v9, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    # getter for: Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mStreamType:I
    invoke-static {v9}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$800(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v8

    if-nez v8, :cond_1

    if-nez v6, :cond_5

    :cond_1
    const/4 v2, 0x1

    .line 479
    .local v2, "muted":Z
    :goto_1
    iget-object v8, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    # getter for: Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mUiHandler:Lcom/oneplus/settings/notification/OPSeekBarVolumizer$H;
    invoke-static {v8}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1500(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Lcom/oneplus/settings/notification/OPSeekBarVolumizer$H;

    move-result-object v8

    iget-object v9, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    # getter for: Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mLastAudibleStreamVolume:I
    invoke-static {v9}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$400(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)I

    move-result v9

    invoke-virtual {v8, v6, v9, v2}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$H;->postUpdateSlider(IIZ)V

    .line 522
    .end local v2    # "muted":Z
    .end local v4    # "streamMatch":Z
    .end local v5    # "streamType":I
    .end local v6    # "streamValue":I
    :cond_2
    :goto_2
    return-void

    .line 474
    .restart local v5    # "streamType":I
    .restart local v6    # "streamValue":I
    :cond_3
    iget-object v8, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    # getter for: Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mStreamType:I
    invoke-static {v8}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$800(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)I

    move-result v8

    if-ne v5, v8, :cond_4

    const/4 v4, 0x1

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    goto :goto_0

    .line 477
    .restart local v4    # "streamMatch":Z
    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    .line 482
    .end local v4    # "streamMatch":Z
    .end local v5    # "streamType":I
    .end local v6    # "streamValue":I
    :cond_6
    const-string v8, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 484
    iget-object v8, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    # getter for: Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mNotificationOrRing:Z
    invoke-static {v8}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1000(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 485
    iget-object v8, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    iget-object v9, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    # getter for: Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v9}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1400(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v9

    # setter for: Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mRingerMode:I
    invoke-static {v8, v9}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1602(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;I)I

    .line 487
    :cond_7
    const-string v8, "OPSeekBarVolumizer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mAffectedByRingerMode:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    # getter for: Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mAffectedByRingerMode:Z
    invoke-static {v10}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1700(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/oneplus/settings/ringtone/OPMyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    iget-object v8, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    # getter for: Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mAffectedByRingerMode:Z
    invoke-static {v8}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1700(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 489
    iget-object v8, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    # invokes: Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->updateSlider()V
    invoke-static {v8}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1200(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)V

    goto :goto_2

    .line 491
    :cond_8
    const-string v8, "android.app.action.INTERRUPTION_FILTER_CHANGED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 493
    iget-object v8, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    iget-object v9, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    # getter for: Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v9}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1900(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/app/NotificationManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v9

    # setter for: Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mZenMode:I
    invoke-static {v8, v9}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1802(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;I)I

    .line 494
    iget-object v8, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    # invokes: Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->updateSlider()V
    invoke-static {v8}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1200(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)V

    goto :goto_2

    .line 499
    :cond_9
    const-string v8, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 500
    iget-object v8, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    # getter for: Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mSeekBar:Lcom/oneplus/widget/OPSeekBar;
    invoke-static {v8}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$200(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Lcom/oneplus/widget/OPSeekBar;

    move-result-object v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    # getter for: Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v8}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1400(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 501
    const-string v8, "chenhl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "VOLUME_CHANGED_ACTION mStreamType : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    # getter for: Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mStreamType:I
    invoke-static {v10}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$800(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    iget-object v8, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    # getter for: Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mStreamType:I
    invoke-static {v8}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$800(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_a

    .line 504
    iget-object v8, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    # getter for: Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v8}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1400(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v8

    iget-object v9, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    # getter for: Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mStreamType:I
    invoke-static {v9}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$800(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v7

    .line 506
    .local v7, "volume":I
    iget-object v8, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    # getter for: Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v8}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1400(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v8

    iget-object v9, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    # getter for: Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mStreamType:I
    invoke-static {v9}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$800(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v1

    .line 507
    .local v1, "mute":Z
    const/4 v1, 0x0

    .line 508
    iget-object v8, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    # getter for: Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mUiHandler:Lcom/oneplus/settings/notification/OPSeekBarVolumizer$H;
    invoke-static {v8}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1500(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Lcom/oneplus/settings/notification/OPSeekBarVolumizer$H;

    move-result-object v8

    iget-object v9, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    # getter for: Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mLastAudibleStreamVolume:I
    invoke-static {v9}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$400(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)I

    move-result v9

    invoke-virtual {v8, v7, v9, v1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$H;->postUpdateSlider(IIZ)V

    goto/16 :goto_2

    .line 510
    .end local v1    # "mute":Z
    .end local v7    # "volume":I
    :cond_a
    iget-object v8, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    # getter for: Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mStreamType:I
    invoke-static {v8}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$800(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_2

    .line 511
    iget-object v8, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    iget-object v9, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    # getter for: Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v9}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1400(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v9

    # setter for: Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->isHeadseOn:Z
    invoke-static {v8, v9}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$2002(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;Z)Z

    .line 512
    const-string v8, "OPSeekBarVolumizer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " intent:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " isHeadseOn:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    # getter for: Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->isHeadseOn:Z
    invoke-static {v10}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$2000(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/oneplus/settings/ringtone/OPMyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    iget-object v8, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    # invokes: Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->updateSlider()V
    invoke-static {v8}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1200(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)V

    goto/16 :goto_2

    .line 516
    :cond_b
    const-string v8, "com.oem.intent.action.THREE_KEY_MODE"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 517
    const-string v8, "switch_state"

    const/4 v9, 0x3

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 518
    .local v3, "status":I
    const-string v8, "OPSeekBarVolumizer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ACTION_THREE_KEY status:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/oneplus/settings/ringtone/OPMyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    iget-object v9, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    const/4 v8, 0x1

    if-ne v3, v8, :cond_c

    const/4 v8, 0x1

    :goto_3
    # setter for: Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mZenMute:Z
    invoke-static {v9, v8}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$2102(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;Z)Z

    goto/16 :goto_2

    :cond_c
    const/4 v8, 0x0

    goto :goto_3
.end method

.method public setListening(Z)V
    .locals 2
    .param p1, "listening"    # Z

    .prologue
    .line 443
    iget-boolean v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->mListening:Z

    if-ne v1, p1, :cond_0

    .line 461
    :goto_0
    return-void

    .line 445
    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->mListening:Z

    .line 446
    if-eqz p1, :cond_1

    .line 447
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 449
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 453
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 455
    const-string v1, "android.app.action.INTERRUPTION_FILTER_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 456
    const-string v1, "com.oem.intent.action.THREE_KEY_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 457
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    # getter for: Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$900(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 459
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_1
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    # getter for: Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$900(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method
