.class Lcom/android/server/OemExService$OemUEventObserver;
.super Landroid/os/UEventObserver;
.source "OemExService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OemExService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OemUEventObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/OemExService$OemUEventObserver$UEventInfo;
    }
.end annotation


# instance fields
.field private final mUEventInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/OemExService$OemUEventObserver$UEventInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/OemExService;


# direct methods
.method public constructor <init>(Lcom/android/server/OemExService;)V
    .locals 1

    .prologue
    .line 305
    iput-object p1, p0, Lcom/android/server/OemExService$OemUEventObserver;->this$0:Lcom/android/server/OemExService;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    .line 306
    invoke-direct {p0}, Lcom/android/server/OemExService$OemUEventObserver;->makeObservedUEventList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/OemExService$OemUEventObserver;->mUEventInfo:Ljava/util/List;

    .line 307
    return-void
.end method

.method private makeObservedUEventList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/OemExService$OemUEventObserver$UEventInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 356
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 360
    .local v0, "retVal":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/OemExService$OemUEventObserver$UEventInfo;>;"
    invoke-static {}, Landroid/util/OpFeatures;->isSupportedBackcoverTheme()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 361
    new-instance v1, Lcom/android/server/OemExService$OemUEventObserver$UEventInfo;

    const-string v2, "switch-theme"

    invoke-direct {v1, p0, v2}, Lcom/android/server/OemExService$OemUEventObserver$UEventInfo;-><init>(Lcom/android/server/OemExService$OemUEventObserver;Ljava/lang/String;)V

    .line 362
    .local v1, "uei":Lcom/android/server/OemExService$OemUEventObserver$UEventInfo;
    invoke-virtual {v1}, Lcom/android/server/OemExService$OemUEventObserver$UEventInfo;->checkSwitchExists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 363
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 370
    .end local v1    # "uei":Lcom/android/server/OemExService$OemUEventObserver$UEventInfo;
    :cond_0
    :goto_0
    invoke-static {}, Landroid/util/OpFeatures;->isSupportedTriStateKey()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 371
    new-instance v1, Lcom/android/server/OemExService$OemUEventObserver$UEventInfo;

    const-string v2, "tri-state-key"

    invoke-direct {v1, p0, v2}, Lcom/android/server/OemExService$OemUEventObserver$UEventInfo;-><init>(Lcom/android/server/OemExService$OemUEventObserver;Ljava/lang/String;)V

    .line 372
    .restart local v1    # "uei":Lcom/android/server/OemExService$OemUEventObserver$UEventInfo;
    invoke-virtual {v1}, Lcom/android/server/OemExService$OemUEventObserver$UEventInfo;->checkSwitchExists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 373
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 379
    .end local v1    # "uei":Lcom/android/server/OemExService$OemUEventObserver$UEventInfo;
    :cond_1
    :goto_1
    return-object v0

    .line 365
    .restart local v1    # "uei":Lcom/android/server/OemExService$OemUEventObserver$UEventInfo;
    :cond_2
    const-string v2, "OemExService"

    const-string v3, "This kernel does not have backcover support"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 375
    :cond_3
    const-string v2, "OemExService"

    const-string v3, "This kernel does not have tri-key support"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private updateStateLocked(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p1, "devPath"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "state"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x3

    .line 403
    iget-object v1, p0, Lcom/android/server/OemExService$OemUEventObserver;->this$0:Lcom/android/server/OemExService;

    # getter for: Lcom/android/server/OemExService;->mSystemReady:Z
    invoke-static {v1}, Lcom/android/server/OemExService;->access$1000(Lcom/android/server/OemExService;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 442
    :cond_0
    :goto_0
    return-void

    .line 410
    :cond_1
    iget-object v1, p0, Lcom/android/server/OemExService$OemUEventObserver;->this$0:Lcom/android/server/OemExService;

    # getter for: Lcom/android/server/OemExService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/server/OemExService;->access$100(Lcom/android/server/OemExService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_2

    .line 411
    iget-object v1, p0, Lcom/android/server/OemExService$OemUEventObserver;->this$0:Lcom/android/server/OemExService;

    # getter for: Lcom/android/server/OemExService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/server/OemExService;->access$100(Lcom/android/server/OemExService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 414
    :cond_2
    const/4 v1, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_3
    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 437
    iget-object v1, p0, Lcom/android/server/OemExService$OemUEventObserver;->this$0:Lcom/android/server/OemExService;

    # getter for: Lcom/android/server/OemExService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/server/OemExService;->access$100(Lcom/android/server/OemExService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 438
    iget-object v1, p0, Lcom/android/server/OemExService$OemUEventObserver;->this$0:Lcom/android/server/OemExService;

    # getter for: Lcom/android/server/OemExService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/server/OemExService;->access$100(Lcom/android/server/OemExService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 414
    :sswitch_0
    const-string v2, "switch-theme"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_1
    const-string v2, "tri-state-key"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    .line 416
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/OemExService$OemUEventObserver;->this$0:Lcom/android/server/OemExService;

    # getter for: Lcom/android/server/OemExService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/OemExService;->access$700(Lcom/android/server/OemExService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    # getter for: Lcom/android/server/OemExService;->sBackcoverState:I
    invoke-static {}, Lcom/android/server/OemExService;->access$200()I

    move-result v3

    invoke-virtual {v1, v2, p3, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 417
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/OemExService$OemUEventObserver;->this$0:Lcom/android/server/OemExService;

    # getter for: Lcom/android/server/OemExService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/OemExService;->access$700(Lcom/android/server/OemExService;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x5dc

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 420
    .end local v0    # "msg":Landroid/os/Message;
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/OemExService$OemUEventObserver;->this$0:Lcom/android/server/OemExService;

    # getter for: Lcom/android/server/OemExService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/OemExService;->access$700(Lcom/android/server/OemExService;)Landroid/os/Handler;

    move-result-object v1

    # getter for: Lcom/android/server/OemExService;->sZenModeState:I
    invoke-static {}, Lcom/android/server/OemExService;->access$900()I

    move-result v2

    invoke-virtual {v1, v3, p3, v2, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 422
    .restart local v0    # "msg":Landroid/os/Message;
    # getter for: Lcom/android/server/OemExService;->sZenModeState:I
    invoke-static {}, Lcom/android/server/OemExService;->access$900()I

    move-result v1

    if-eq p3, v1, :cond_5

    .line 423
    # setter for: Lcom/android/server/OemExService;->sZenModeState:I
    invoke-static {p3}, Lcom/android/server/OemExService;->access$902(I)I

    .line 424
    invoke-static {}, Landroid/util/OpFeatures;->isO2()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 425
    iget-object v1, p0, Lcom/android/server/OemExService$OemUEventObserver;->this$0:Lcom/android/server/OemExService;

    # getter for: Lcom/android/server/OemExService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/OemExService;->access$700(Lcom/android/server/OemExService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 426
    iget-object v1, p0, Lcom/android/server/OemExService$OemUEventObserver;->this$0:Lcom/android/server/OemExService;

    # getter for: Lcom/android/server/OemExService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/OemExService;->access$700(Lcom/android/server/OemExService;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 428
    :cond_4
    iget-object v1, p0, Lcom/android/server/OemExService$OemUEventObserver;->this$0:Lcom/android/server/OemExService;

    # getter for: Lcom/android/server/OemExService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/OemExService;->access$700(Lcom/android/server/OemExService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 431
    :cond_5
    iget-object v1, p0, Lcom/android/server/OemExService$OemUEventObserver;->this$0:Lcom/android/server/OemExService;

    # getter for: Lcom/android/server/OemExService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/server/OemExService;->access$100(Lcom/android/server/OemExService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 432
    iget-object v1, p0, Lcom/android/server/OemExService$OemUEventObserver;->this$0:Lcom/android/server/OemExService;

    # getter for: Lcom/android/server/OemExService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/server/OemExService;->access$100(Lcom/android/server/OemExService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 414
    nop

    :sswitch_data_0
    .sparse-switch
        0x6caf181 -> :sswitch_1
        0x93809f0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method init()V
    .locals 11

    .prologue
    .line 310
    iget-object v7, p0, Lcom/android/server/OemExService$OemUEventObserver;->this$0:Lcom/android/server/OemExService;

    # getter for: Lcom/android/server/OemExService;->mLock:Ljava/lang/Object;
    invoke-static {v7}, Lcom/android/server/OemExService;->access$800(Lcom/android/server/OemExService;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 312
    :try_start_0
    const-string v7, "OemExService"

    const-string v9, "init()"

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    const/16 v7, 0x400

    new-array v0, v7, [C

    .line 316
    .local v0, "buffer":[C
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v7, p0, Lcom/android/server/OemExService$OemUEventObserver;->mUEventInfo:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_3

    .line 317
    iget-object v7, p0, Lcom/android/server/OemExService$OemUEventObserver;->mUEventInfo:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/OemExService$OemUEventObserver$UEventInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    .local v6, "uei":Lcom/android/server/OemExService$OemUEventObserver$UEventInfo;
    :try_start_1
    new-instance v3, Ljava/io/FileReader;

    invoke-virtual {v6}, Lcom/android/server/OemExService$OemUEventObserver$UEventInfo;->getSwitchStatePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 321
    .local v3, "file":Ljava/io/FileReader;
    const/4 v7, 0x0

    const/16 v9, 0x400

    invoke-virtual {v3, v0, v7, v9}, Ljava/io/FileReader;->read([CII)I

    move-result v5

    .line 322
    .local v5, "len":I
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    .line 323
    new-instance v7, Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct {v7, v0, v9, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 325
    .local v1, "curState":I
    if-lez v1, :cond_0

    .line 326
    invoke-virtual {v6}, Lcom/android/server/OemExService$OemUEventObserver$UEventInfo;->getDevName()Ljava/lang/String;

    move-result-object v7

    const-string v9, "switch-theme"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 327
    iget-object v7, p0, Lcom/android/server/OemExService$OemUEventObserver;->this$0:Lcom/android/server/OemExService;

    # invokes: Lcom/android/server/OemExService;->sendBroadcastForChangeTheme(I)V
    invoke-static {v7, v1}, Lcom/android/server/OemExService;->access$300(Lcom/android/server/OemExService;I)V

    .line 316
    .end local v1    # "curState":I
    .end local v3    # "file":Ljava/io/FileReader;
    .end local v5    # "len":I
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 329
    .restart local v1    # "curState":I
    .restart local v3    # "file":Ljava/io/FileReader;
    .restart local v5    # "len":I
    :cond_1
    invoke-static {}, Landroid/util/OpFeatures;->isO2()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 332
    # setter for: Lcom/android/server/OemExService;->sZenModeState:I
    invoke-static {v1}, Lcom/android/server/OemExService;->access$902(I)I

    .line 334
    :cond_2
    invoke-virtual {v6}, Lcom/android/server/OemExService$OemUEventObserver$UEventInfo;->getDevPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lcom/android/server/OemExService$OemUEventObserver$UEventInfo;->getDevName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v7, v9, v1}, Lcom/android/server/OemExService$OemUEventObserver;->updateStateLocked(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 338
    .end local v1    # "curState":I
    .end local v3    # "file":Ljava/io/FileReader;
    .end local v5    # "len":I
    :catch_0
    move-exception v2

    .line 339
    .local v2, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    const-string v7, "OemExService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/android/server/OemExService$OemUEventObserver$UEventInfo;->getSwitchStatePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "not found while attempting to determine initial switch state."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 345
    .end local v0    # "buffer":[C
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .end local v4    # "i":I
    .end local v6    # "uei":Lcom/android/server/OemExService$OemUEventObserver$UEventInfo;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .line 341
    .restart local v0    # "buffer":[C
    .restart local v4    # "i":I
    .restart local v6    # "uei":Lcom/android/server/OemExService$OemUEventObserver$UEventInfo;
    :catch_1
    move-exception v2

    .line 342
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v7, "OemExService"

    const-string v9, ""

    invoke-static {v7, v9, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 345
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v6    # "uei":Lcom/android/server/OemExService$OemUEventObserver$UEventInfo;
    :cond_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 349
    const/4 v4, 0x0

    :goto_2
    iget-object v7, p0, Lcom/android/server/OemExService$OemUEventObserver;->mUEventInfo:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_4

    .line 350
    iget-object v7, p0, Lcom/android/server/OemExService$OemUEventObserver;->mUEventInfo:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/OemExService$OemUEventObserver$UEventInfo;

    .line 351
    .restart local v6    # "uei":Lcom/android/server/OemExService$OemUEventObserver$UEventInfo;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DEVPATH="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Lcom/android/server/OemExService$OemUEventObserver$UEventInfo;->getDevPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/server/OemExService$OemUEventObserver;->startObserving(Ljava/lang/String;)V

    .line 349
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 353
    .end local v6    # "uei":Lcom/android/server/OemExService$OemUEventObserver$UEventInfo;
    :cond_4
    return-void
.end method

.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .prologue
    .line 385
    const-string v4, "OemExService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OEM UEVENT: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :try_start_0
    const-string v4, "DEVPATH"

    invoke-virtual {p1, v4}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 390
    .local v0, "devPath":Ljava/lang/String;
    const-string v4, "SWITCH_NAME"

    invoke-virtual {p1, v4}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 391
    .local v2, "name":Ljava/lang/String;
    const-string v4, "SWITCH_STATE"

    invoke-virtual {p1, v4}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 392
    .local v3, "state":I
    iget-object v4, p0, Lcom/android/server/OemExService$OemUEventObserver;->this$0:Lcom/android/server/OemExService;

    # getter for: Lcom/android/server/OemExService;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/OemExService;->access$800(Lcom/android/server/OemExService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    :try_start_1
    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/OemExService$OemUEventObserver;->updateStateLocked(Ljava/lang/String;Ljava/lang/String;I)V

    .line 394
    monitor-exit v5

    .line 400
    .end local v0    # "devPath":Ljava/lang/String;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "state":I
    :goto_0
    return-void

    .line 394
    .restart local v0    # "devPath":Ljava/lang/String;
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v3    # "state":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    .line 395
    .end local v0    # "devPath":Ljava/lang/String;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "state":I
    :catch_0
    move-exception v1

    .line 396
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v4, "OemExService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not parse switch state from event "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
