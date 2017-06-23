.class Landroid/speech/tts/TextToSpeechService$SynthHandler;
.super Landroid/os/Handler;
.source "TextToSpeechService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/TextToSpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SynthHandler"
.end annotation


# instance fields
.field private mCurrentSpeechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;

.field private mFlushAll:Z

.field private mFlushedObjects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/speech/tts/TextToSpeechService;


# direct methods
.method public constructor <init>(Landroid/speech/tts/TextToSpeechService;Landroid/os/Looper;)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 462
    iput-object p1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->this$0:Landroid/speech/tts/TextToSpeechService;

    .line 463
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 457
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mCurrentSpeechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;

    .line 459
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mFlushedObjects:Ljava/util/ArrayList;

    .line 464
    return-void
.end method

.method static synthetic access$100(Landroid/speech/tts/TextToSpeechService$SynthHandler;Landroid/speech/tts/TextToSpeechService$SpeechItem;)Z
    .locals 1
    .param p0, "x0"    # Landroid/speech/tts/TextToSpeechService$SynthHandler;
    .param p1, "x1"    # Landroid/speech/tts/TextToSpeechService$SpeechItem;

    .prologue
    .line 456
    invoke-direct {p0, p1}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->isFlushed(Landroid/speech/tts/TextToSpeechService$SpeechItem;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Landroid/speech/tts/TextToSpeechService$SynthHandler;Landroid/speech/tts/TextToSpeechService$SpeechItem;)Landroid/speech/tts/TextToSpeechService$SpeechItem;
    .locals 1
    .param p0, "x0"    # Landroid/speech/tts/TextToSpeechService$SynthHandler;
    .param p1, "x1"    # Landroid/speech/tts/TextToSpeechService$SpeechItem;

    .prologue
    .line 456
    invoke-direct {p0, p1}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->setCurrentSpeechItem(Landroid/speech/tts/TextToSpeechService$SpeechItem;)Landroid/speech/tts/TextToSpeechService$SpeechItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Landroid/speech/tts/TextToSpeechService$SynthHandler;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Landroid/speech/tts/TextToSpeechService$SynthHandler;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 456
    invoke-direct {p0, p1}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->endFlushingSpeechItems(Ljava/lang/Object;)V

    return-void
.end method

.method private endFlushingSpeechItems(Ljava/lang/Object;)V
    .locals 2
    .param p1, "callerIdentity"    # Ljava/lang/Object;

    .prologue
    .line 476
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mFlushedObjects:Ljava/util/ArrayList;

    monitor-enter v1

    .line 477
    if-nez p1, :cond_0

    .line 478
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mFlushAll:Z

    .line 482
    :goto_0
    monitor-exit v1

    .line 483
    return-void

    .line 480
    :cond_0
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mFlushedObjects:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 482
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private declared-synchronized getCurrentSpeechItem()Landroid/speech/tts/TextToSpeechService$SpeechItem;
    .locals 1

    .prologue
    .line 491
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mCurrentSpeechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private isFlushed(Landroid/speech/tts/TextToSpeechService$SpeechItem;)Z
    .locals 3
    .param p1, "speechItem"    # Landroid/speech/tts/TextToSpeechService$SpeechItem;

    .prologue
    .line 485
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mFlushedObjects:Ljava/util/ArrayList;

    monitor-enter v1

    .line 486
    :try_start_0
    iget-boolean v0, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mFlushAll:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mFlushedObjects:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->getCallerIdentity()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 487
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private declared-synchronized maybeRemoveCurrentSpeechItem(Ljava/lang/Object;)Landroid/speech/tts/TextToSpeechService$SpeechItem;
    .locals 2
    .param p1, "callerIdentity"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 501
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mCurrentSpeechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mCurrentSpeechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->getCallerIdentity()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 503
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mCurrentSpeechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;

    .line 504
    .local v0, "current":Landroid/speech/tts/TextToSpeechService$SpeechItem;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mCurrentSpeechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 508
    .end local v0    # "current":Landroid/speech/tts/TextToSpeechService$SpeechItem;
    :cond_0
    monitor-exit p0

    return-object v0

    .line 501
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized setCurrentSpeechItem(Landroid/speech/tts/TextToSpeechService$SpeechItem;)Landroid/speech/tts/TextToSpeechService$SpeechItem;
    .locals 2
    .param p1, "speechItem"    # Landroid/speech/tts/TextToSpeechService$SpeechItem;

    .prologue
    .line 495
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mCurrentSpeechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;

    .line 496
    .local v0, "old":Landroid/speech/tts/TextToSpeechService$SpeechItem;
    iput-object p1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mCurrentSpeechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 497
    monitor-exit p0

    return-object v0

    .line 495
    .end local v0    # "old":Landroid/speech/tts/TextToSpeechService$SpeechItem;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private startFlushingSpeechItems(Ljava/lang/Object;)V
    .locals 2
    .param p1, "callerIdentity"    # Ljava/lang/Object;

    .prologue
    .line 467
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mFlushedObjects:Ljava/util/ArrayList;

    monitor-enter v1

    .line 468
    if-nez p1, :cond_0

    .line 469
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mFlushAll:Z

    .line 473
    :goto_0
    monitor-exit v1

    .line 474
    return-void

    .line 471
    :cond_0
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mFlushedObjects:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 473
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public enqueueSpeechItem(ILandroid/speech/tts/TextToSpeechService$SpeechItem;)I
    .locals 6
    .param p1, "queueMode"    # I
    .param p2, "speechItem"    # Landroid/speech/tts/TextToSpeechService$SpeechItem;

    .prologue
    const/4 v3, -0x1

    .line 532
    const/4 v2, 0x0

    .line 533
    .local v2, "utterenceProgress":Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;
    instance-of v4, p2, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    if-eqz v4, :cond_0

    move-object v2, p2

    .line 534
    check-cast v2, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    .line 537
    :cond_0
    invoke-virtual {p2}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->isValid()Z

    move-result v4

    if-nez v4, :cond_2

    .line 538
    if-eqz v2, :cond_1

    .line 539
    const/4 v4, -0x8

    invoke-interface {v2, v4}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnError(I)V

    .line 577
    :cond_1
    :goto_0
    return v3

    .line 545
    :cond_2
    if-nez p1, :cond_4

    .line 546
    invoke-virtual {p2}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->getCallerIdentity()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->stopForApp(Ljava/lang/Object;)I

    .line 550
    :cond_3
    :goto_1
    new-instance v1, Landroid/speech/tts/TextToSpeechService$SynthHandler$1;

    invoke-direct {v1, p0, p2}, Landroid/speech/tts/TextToSpeechService$SynthHandler$1;-><init>(Landroid/speech/tts/TextToSpeechService$SynthHandler;Landroid/speech/tts/TextToSpeechService$SpeechItem;)V

    .line 562
    .local v1, "runnable":Ljava/lang/Runnable;
    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    .line 568
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p2}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->getCallerIdentity()Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 570
    invoke-virtual {p0, v0}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->sendMessage(Landroid/os/Message;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 571
    const/4 v3, 0x0

    goto :goto_0

    .line 547
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "runnable":Ljava/lang/Runnable;
    :cond_4
    const/4 v4, 0x2

    if-ne p1, v4, :cond_3

    .line 548
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->stopAll()I

    goto :goto_1

    .line 573
    .restart local v0    # "msg":Landroid/os/Message;
    .restart local v1    # "runnable":Ljava/lang/Runnable;
    :cond_5
    const-string v4, "TextToSpeechService"

    const-string v5, "SynthThread has quit"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    if-eqz v2, :cond_1

    .line 575
    const/4 v4, -0x4

    invoke-interface {v2, v4}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnError(I)V

    goto :goto_0
.end method

.method public isSpeaking()Z
    .locals 1

    .prologue
    .line 512
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->getCurrentSpeechItem()Landroid/speech/tts/TextToSpeechService$SpeechItem;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public quit()V
    .locals 2

    .prologue
    .line 517
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 519
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->setCurrentSpeechItem(Landroid/speech/tts/TextToSpeechService$SpeechItem;)Landroid/speech/tts/TextToSpeechService$SpeechItem;

    move-result-object v0

    .line 520
    .local v0, "current":Landroid/speech/tts/TextToSpeechService$SpeechItem;
    if-eqz v0, :cond_0

    .line 521
    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->stop()V

    .line 524
    :cond_0
    return-void
.end method

.method public stopAll()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 623
    invoke-direct {p0, v2}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->startFlushingSpeechItems(Ljava/lang/Object;)V

    .line 626
    invoke-direct {p0, v2}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->setCurrentSpeechItem(Landroid/speech/tts/TextToSpeechService$SpeechItem;)Landroid/speech/tts/TextToSpeechService$SpeechItem;

    move-result-object v0

    .line 627
    .local v0, "current":Landroid/speech/tts/TextToSpeechService$SpeechItem;
    if-eqz v0, :cond_0

    .line 628
    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->stop()V

    .line 631
    :cond_0
    iget-object v2, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->this$0:Landroid/speech/tts/TextToSpeechService;

    # getter for: Landroid/speech/tts/TextToSpeechService;->mAudioPlaybackHandler:Landroid/speech/tts/AudioPlaybackHandler;
    invoke-static {v2}, Landroid/speech/tts/TextToSpeechService;->access$300(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/AudioPlaybackHandler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/speech/tts/AudioPlaybackHandler;->stop()V

    .line 634
    new-instance v1, Landroid/speech/tts/TextToSpeechService$SynthHandler$3;

    invoke-direct {v1, p0}, Landroid/speech/tts/TextToSpeechService$SynthHandler$3;-><init>(Landroid/speech/tts/TextToSpeechService$SynthHandler;)V

    .line 640
    .local v1, "runnable":Ljava/lang/Runnable;
    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->sendMessage(Landroid/os/Message;)Z

    .line 643
    const/4 v2, 0x0

    return v2
.end method

.method public stopForApp(Ljava/lang/Object;)I
    .locals 3
    .param p1, "callerIdentity"    # Ljava/lang/Object;

    .prologue
    .line 588
    if-nez p1, :cond_0

    .line 589
    const/4 v2, -0x1

    .line 618
    :goto_0
    return v2

    .line 593
    :cond_0
    invoke-direct {p0, p1}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->startFlushingSpeechItems(Ljava/lang/Object;)V

    .line 602
    invoke-direct {p0, p1}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->maybeRemoveCurrentSpeechItem(Ljava/lang/Object;)Landroid/speech/tts/TextToSpeechService$SpeechItem;

    move-result-object v0

    .line 603
    .local v0, "current":Landroid/speech/tts/TextToSpeechService$SpeechItem;
    if-eqz v0, :cond_1

    .line 604
    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->stop()V

    .line 608
    :cond_1
    iget-object v2, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->this$0:Landroid/speech/tts/TextToSpeechService;

    # getter for: Landroid/speech/tts/TextToSpeechService;->mAudioPlaybackHandler:Landroid/speech/tts/AudioPlaybackHandler;
    invoke-static {v2}, Landroid/speech/tts/TextToSpeechService;->access$300(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/AudioPlaybackHandler;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/speech/tts/AudioPlaybackHandler;->stopForApp(Ljava/lang/Object;)V

    .line 611
    new-instance v1, Landroid/speech/tts/TextToSpeechService$SynthHandler$2;

    invoke-direct {v1, p0, p1}, Landroid/speech/tts/TextToSpeechService$SynthHandler$2;-><init>(Landroid/speech/tts/TextToSpeechService$SynthHandler;Ljava/lang/Object;)V

    .line 617
    .local v1, "runnable":Ljava/lang/Runnable;
    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->sendMessage(Landroid/os/Message;)Z

    .line 618
    const/4 v2, 0x0

    goto :goto_0
.end method
