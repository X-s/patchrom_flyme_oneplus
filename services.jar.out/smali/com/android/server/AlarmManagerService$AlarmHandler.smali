.class Lcom/android/server/AlarmManagerService$AlarmHandler;
.super Landroid/os/Handler;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlarmHandler"
.end annotation


# static fields
.field public static final ALARM_EVENT:I = 0x1

.field public static final DATE_CHANGE_EVENT:I = 0x3

.field public static final DELEVER_DELAY_ALARM:I = 0x5

.field public static final MINUTE_CHANGE_EVENT:I = 0x2

.field public static final SEND_NEXT_ALARM_CLOCK_CHANGED:I = 0x4


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 0

    .prologue
    .line 2599
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2600
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 24
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2603
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v2, v0, :cond_1

    .line 2604
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2605
    .local v3, "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v2, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 2606
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 2607
    .local v6, "nowRTC":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 2608
    .local v4, "nowELAPSED":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/AlarmManagerService;->triggerAlarmsLocked(Ljava/util/ArrayList;JJ)Z

    .line 2609
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/AlarmManagerService;

    # invokes: Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$700(Lcom/android/server/AlarmManagerService;)V

    .line 2610
    monitor-exit v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2613
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v11, v2, :cond_2

    .line 2614
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/AlarmManagerService$Alarm;

    .line 2616
    .local v8, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :try_start_1
    iget-object v2, v8, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->send()V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2613
    :cond_0
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 2610
    .end local v4    # "nowELAPSED":J
    .end local v6    # "nowRTC":J
    .end local v8    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v11    # "i":I
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v20
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 2617
    .restart local v4    # "nowELAPSED":J
    .restart local v6    # "nowRTC":J
    .restart local v8    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .restart local v11    # "i":I
    :catch_0
    move-exception v10

    .line 2618
    .local v10, "e":Landroid/app/PendingIntent$CanceledException;
    iget-wide v0, v8, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmp-long v2, v20, v22

    if-lez v2, :cond_0

    .line 2621
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v8, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/android/server/AlarmManagerService;->removeImpl(Landroid/app/PendingIntent;)V

    goto :goto_1

    .line 2625
    .end local v3    # "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .end local v4    # "nowELAPSED":J
    .end local v6    # "nowRTC":J
    .end local v8    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v10    # "e":Landroid/app/PendingIntent$CanceledException;
    .end local v11    # "i":I
    :cond_1
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v20, 0x4

    move/from16 v0, v20

    if-ne v2, v0, :cond_3

    .line 2626
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/AlarmManagerService;

    # invokes: Lcom/android/server/AlarmManagerService;->sendNextAlarmClockChanged()V
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$800(Lcom/android/server/AlarmManagerService;)V

    .line 2660
    :cond_2
    return-void

    .line 2627
    :cond_3
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v20, 0x5

    move/from16 v0, v20

    if-ne v2, v0, :cond_2

    .line 2628
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 2629
    .restart local v4    # "nowELAPSED":J
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Ljava/lang/String;

    .line 2630
    .local v19, "packageName":Ljava/lang/String;
    const-string v16, ""

    .line 2632
    .local v16, "mPackage":Ljava/lang/String;
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 2633
    .local v17, "mPendingAlarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mPendingDelayWakeupAlarms:Landroid/util/ArrayMap;
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$900(Lcom/android/server/AlarmManagerService;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v11, v2, :cond_5

    .line 2634
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mPendingDelayWakeupAlarms:Landroid/util/ArrayMap;
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$900(Lcom/android/server/AlarmManagerService;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "mPackage":Ljava/lang/String;
    check-cast v16, Ljava/lang/String;

    .line 2635
    .restart local v16    # "mPackage":Ljava/lang/String;
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2636
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mPendingDelayWakeupAlarms:Landroid/util/ArrayMap;
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$900(Lcom/android/server/AlarmManagerService;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/AlarmManagerService$Alarm;

    .line 2637
    .local v14, "mAlarm":Lcom/android/server/AlarmManagerService$Alarm;
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2638
    const-string v2, "AlarmManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, " deliverAlarmsLocked "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " operation ="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-object v0, v14, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2633
    .end local v14    # "mAlarm":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 2642
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v2, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 2643
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v4, v5}, Lcom/android/server/AlarmManagerService;->deliverAlarmsLocked(Ljava/util/ArrayList;J)V

    .line 2644
    monitor-exit v20
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2645
    const/16 v18, 0x0

    .local v18, "n":I
    :goto_3
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v18

    if-ge v0, v2, :cond_6

    .line 2646
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mPendingDelayWakeupAlarms:Landroid/util/ArrayMap;
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$900(Lcom/android/server/AlarmManagerService;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2645
    add-int/lit8 v18, v18, 0x1

    goto :goto_3

    .line 2644
    .end local v18    # "n":I
    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit v20
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    .line 2648
    .restart local v18    # "n":I
    :cond_6
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mUidOperation:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v12, v2, :cond_2

    .line 2649
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mUidOperation:Landroid/util/ArrayMap;

    invoke-virtual {v2, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "mPackage":Ljava/lang/String;
    check-cast v16, Ljava/lang/String;

    .line 2650
    .restart local v16    # "mPackage":Ljava/lang/String;
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2651
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mUidOperation:Landroid/util/ArrayMap;

    invoke-virtual {v2, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    .line 2652
    .local v15, "mOperation":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v13, 0x0

    .local v13, "k":I
    :goto_5
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v13, v2, :cond_7

    .line 2653
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 2654
    .local v9, "alarmTag":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mPendingDelayOperation:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$200(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2655
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mOperationCounts:Landroid/util/ArrayMap;

    invoke-virtual {v2, v9}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2652
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 2648
    .end local v9    # "alarmTag":Ljava/lang/String;
    .end local v13    # "k":I
    .end local v15    # "mOperation":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_7
    add-int/lit8 v12, v12, 0x1

    goto :goto_4
.end method
