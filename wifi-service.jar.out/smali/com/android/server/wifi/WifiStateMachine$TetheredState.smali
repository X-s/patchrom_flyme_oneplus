.class Lcom/android/server/wifi/WifiStateMachine$TetheredState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TetheredState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    .prologue
    .line 10369
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method private sendClientsChangedBroadcast()V
    .locals 3

    .prologue
    .line 10373
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.WIFI_HOTSPOT_CLIENTS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10374
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 10375
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 10376
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 8

    .prologue
    .line 10380
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 10381
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mClientNum:I
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$29802(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 10382
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mHotspotClients:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$29900()Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 10383
    :try_start_0
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mHotspotClients:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$29900()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 10384
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10386
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDuration:I
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$30000(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 10387
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$12500(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/AlarmManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mIntentShutDownHotspot:Landroid/app/PendingIntent;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$30100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 10388
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "WifiStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set alarm for AP auto shutdown when enter TetheredState, mDuration:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDuration:I
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$30000(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10389
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$12500(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/AlarmManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDuration:I
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$30000(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v4

    int-to-long v4, v4

    const-wide/32 v6, 0x493e0

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mIntentShutDownHotspot:Landroid/app/PendingIntent;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$30100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 10393
    :cond_2
    return-void

    .line 10384
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 10495
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDuration:I
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$30000(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 10496
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$12500(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/AlarmManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mIntentShutDownHotspot:Landroid/app/PendingIntent;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$30100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 10498
    :cond_0
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mHotspotClients:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$29900()Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 10499
    :try_start_0
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mHotspotClients:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$29900()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 10500
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10501
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->sendClientsChangedBroadcast()V

    .line 10502
    return-void

    .line 10500
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 14
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 10398
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logStateAndMessage(Landroid/os/Message;Ljava/lang/String;)V
    invoke-static {v6, p1, v7}, Lcom/android/server/wifi/WifiStateMachine;->access$1100(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Ljava/lang/String;)V

    .line 10400
    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_0

    .line 10486
    const/4 v6, 0x0

    .line 10488
    :goto_0
    return v6

    .line 10402
    :sswitch_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/wifi/WifiStateMachine$TetherStateChange;

    .line 10403
    .local v3, "stateChange":Lcom/android/server/wifi/WifiStateMachine$TetherStateChange;
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v7, v3, Lcom/android/server/wifi/WifiStateMachine$TetherStateChange;->active:Ljava/util/ArrayList;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->isWifiTethered(Ljava/util/ArrayList;)Z
    invoke-static {v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->access$29200(Lcom/android/server/wifi/WifiStateMachine;Ljava/util/ArrayList;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 10404
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v7, "Tethering reports wifi as untethered!, shut down soft Ap"

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 10405
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/android/server/wifi/WifiStateMachine;->setHostApRunning(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 10406
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lcom/android/server/wifi/WifiStateMachine;->setHostApRunning(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 10408
    :cond_0
    const/4 v6, 0x1

    goto :goto_0

    .line 10410
    .end local v3    # "stateChange":Lcom/android/server/wifi/WifiStateMachine$TetherStateChange;
    :sswitch_1
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v7, "Untethering before stopping AP"

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 10411
    :cond_1
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/16 v7, 0xa

    const/4 v8, 0x0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setWifiApState(II)V
    invoke-static {v6, v7, v8}, Lcom/android/server/wifi/WifiStateMachine;->access$4900(Lcom/android/server/wifi/WifiStateMachine;II)V

    .line 10412
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->stopTethering()V
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->access$30200(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 10413
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mUntetheringState:Lcom/android/internal/util/State;
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$30300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v7

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->access$30400(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 10415
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v6, p1}, Lcom/android/server/wifi/WifiStateMachine;->access$30500(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    .line 10488
    :goto_1
    const/4 v6, 0x1

    goto :goto_0

    .line 10420
    :sswitch_2
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AP STA CONNECTED:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 10421
    :cond_2
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # ++operator for: Lcom/android/server/wifi/WifiStateMachine;->mClientNum:I
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->access$29804(Lcom/android/server/wifi/WifiStateMachine;)I

    .line 10422
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 10423
    .local v0, "address":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 10424
    .local v4, "time":J
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mHotspotClients:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$29900()Ljava/util/HashMap;

    move-result-object v7

    monitor-enter v7

    .line 10425
    :try_start_0
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mHotspotClients:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$29900()Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 10426
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mHotspotClients:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$29900()Ljava/util/HashMap;

    move-result-object v6

    new-instance v8, Landroid/net/wifi/HotspotClient;

    const/4 v9, 0x0

    invoke-direct {v8, v0, v9, v4, v5}, Landroid/net/wifi/HotspotClient;-><init>(Ljava/lang/String;ZJ)V

    invoke-virtual {v6, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10428
    :cond_3
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10430
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDuration:I
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->access$30000(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mClientNum:I
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->access$29800(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_5

    .line 10431
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "WifiStateMachine"

    const-string v7, "Cancel alarm for AP atuo shutdown"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10432
    :cond_4
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->access$12500(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/AlarmManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mIntentShutDownHotspot:Landroid/app/PendingIntent;
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$30100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 10434
    :cond_5
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->sendClientsChangedBroadcast()V

    goto :goto_1

    .line 10428
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 10437
    .end local v0    # "address":Ljava/lang/String;
    .end local v4    # "time":J
    :sswitch_3
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AP STA DISCONNECTED:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 10438
    :cond_6
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # --operator for: Lcom/android/server/wifi/WifiStateMachine;->mClientNum:I
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->access$29806(Lcom/android/server/wifi/WifiStateMachine;)I

    .line 10439
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 10440
    .restart local v0    # "address":Ljava/lang/String;
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mHotspotClients:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$29900()Ljava/util/HashMap;

    move-result-object v7

    monitor-enter v7

    .line 10441
    :try_start_2
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mHotspotClients:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$29900()Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/HotspotClient;

    .line 10442
    .local v1, "client":Landroid/net/wifi/HotspotClient;
    if-eqz v1, :cond_7

    iget-boolean v6, v1, Landroid/net/wifi/HotspotClient;->isBlocked:Z

    if-nez v6, :cond_7

    .line 10443
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mHotspotClients:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$29900()Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10445
    :cond_7
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 10447
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDuration:I
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->access$30000(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mClientNum:I
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->access$29800(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v6

    if-nez v6, :cond_9

    .line 10448
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v6

    if-eqz v6, :cond_8

    const-string v6, "WifiStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Set alarm for AP atuo shutdown, mDuration:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDuration:I
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$30000(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10449
    :cond_8
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->access$12500(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/AlarmManager;

    move-result-object v6

    const/4 v7, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDuration:I
    invoke-static {v10}, Lcom/android/server/wifi/WifiStateMachine;->access$30000(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v10

    int-to-long v10, v10

    const-wide/32 v12, 0x493e0

    mul-long/2addr v10, v12

    add-long/2addr v8, v10

    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mIntentShutDownHotspot:Landroid/app/PendingIntent;
    invoke-static {v10}, Lcom/android/server/wifi/WifiStateMachine;->access$30100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/PendingIntent;

    move-result-object v10

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 10453
    :cond_9
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->sendClientsChangedBroadcast()V

    goto/16 :goto_1

    .line 10445
    .end local v1    # "client":Landroid/net/wifi/HotspotClient;
    :catchall_1
    move-exception v6

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v6

    .line 10456
    .end local v0    # "address":Ljava/lang/String;
    :sswitch_4
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mHotspotNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->access$30600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v7

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/net/wifi/HotspotClient;

    iget-object v6, v6, Landroid/net/wifi/HotspotClient;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v7, v6}, Lcom/android/server/wifi/WifiNative;->blockClientCommand(Ljava/lang/String;)Z

    move-result v2

    .line 10457
    .local v2, "ok":Z
    if-eqz v2, :cond_b

    .line 10458
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mHotspotClients:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$29900()Ljava/util/HashMap;

    move-result-object v7

    monitor-enter v7

    .line 10459
    :try_start_4
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mHotspotClients:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$29900()Ljava/util/HashMap;

    move-result-object v8

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/net/wifi/HotspotClient;

    iget-object v6, v6, Landroid/net/wifi/HotspotClient;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/HotspotClient;

    .line 10460
    .restart local v1    # "client":Landroid/net/wifi/HotspotClient;
    if-eqz v1, :cond_a

    .line 10461
    const/4 v6, 0x1

    iput-boolean v6, v1, Landroid/net/wifi/HotspotClient;->isBlocked:Z

    .line 10465
    :goto_2
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 10466
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->sendClientsChangedBroadcast()V

    .line 10470
    .end local v1    # "client":Landroid/net/wifi/HotspotClient;
    :goto_3
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->access$30700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->what:I

    if-eqz v2, :cond_c

    const/4 v6, 0x1

    :goto_4
    invoke-virtual {v7, p1, v8, v6}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 10463
    .restart local v1    # "client":Landroid/net/wifi/HotspotClient;
    :cond_a
    :try_start_5
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to get "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/net/wifi/HotspotClient;

    iget-object v6, v6, Landroid/net/wifi/HotspotClient;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_2

    .line 10465
    .end local v1    # "client":Landroid/net/wifi/HotspotClient;
    :catchall_2
    move-exception v6

    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v6

    .line 10468
    :cond_b
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to block "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/net/wifi/HotspotClient;

    iget-object v6, v6, Landroid/net/wifi/HotspotClient;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_3

    .line 10470
    :cond_c
    const/4 v6, -0x1

    goto :goto_4

    .line 10473
    .end local v2    # "ok":Z
    :sswitch_5
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mHotspotNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->access$30600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v7

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/net/wifi/HotspotClient;

    iget-object v6, v6, Landroid/net/wifi/HotspotClient;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v7, v6}, Lcom/android/server/wifi/WifiNative;->unblockClientCommand(Ljava/lang/String;)Z

    move-result v2

    .line 10474
    .restart local v2    # "ok":Z
    if-eqz v2, :cond_d

    .line 10475
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mHotspotClients:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$29900()Ljava/util/HashMap;

    move-result-object v7

    monitor-enter v7

    .line 10476
    :try_start_6
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mHotspotClients:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$29900()Ljava/util/HashMap;

    move-result-object v8

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/net/wifi/HotspotClient;

    iget-object v6, v6, Landroid/net/wifi/HotspotClient;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10477
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 10478
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->sendClientsChangedBroadcast()V

    .line 10482
    :goto_5
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->access$30700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->what:I

    if-eqz v2, :cond_e

    const/4 v6, 0x1

    :goto_6
    invoke-virtual {v7, p1, v8, v6}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 10477
    :catchall_3
    move-exception v6

    :try_start_7
    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v6

    .line 10480
    :cond_d
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to unblock "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/net/wifi/HotspotClient;

    iget-object v6, v6, Landroid/net/wifi/HotspotClient;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_5

    .line 10482
    :cond_e
    const/4 v6, -0x1

    goto :goto_6

    .line 10400
    :sswitch_data_0
    .sparse-switch
        0x20018 -> :sswitch_1
        0x2001d -> :sswitch_0
        0x200a6 -> :sswitch_4
        0x200a7 -> :sswitch_5
        0x24029 -> :sswitch_3
        0x2402a -> :sswitch_2
    .end sparse-switch
.end method
