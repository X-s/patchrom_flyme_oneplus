.class Lcom/android/systemui_ex/statusbar/BaseStatusBar$5$2;
.super Ljava/lang/Object;
.source "BaseStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/statusbar/BaseStatusBar$5;->onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui_ex/statusbar/BaseStatusBar$5;

.field final synthetic val$rankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

.field final synthetic val$sbn:Landroid/service/notification/StatusBarNotification;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/statusbar/BaseStatusBar$5;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0

    .prologue
    .line 562
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$5$2;->this$1:Lcom/android/systemui_ex/statusbar/BaseStatusBar$5;

    iput-object p2, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$5$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    iput-object p3, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$5$2;->val$rankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v0, 0x0

    .line 567
    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$5$2;->this$1:Lcom/android/systemui_ex/statusbar/BaseStatusBar$5;

    iget-object v5, v5, Lcom/android/systemui_ex/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui_ex/statusbar/BaseStatusBar;

    iget-object v5, v5, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/systemui_ex/util/Utils;->isEnableWakeUpByNotification(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$5$2;->this$1:Lcom/android/systemui_ex/statusbar/BaseStatusBar$5;

    iget-object v5, v5, Lcom/android/systemui_ex/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui_ex/statusbar/BaseStatusBar;

    invoke-virtual {v5}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->isDoNotDisturbModeEnabled()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$5$2;->this$1:Lcom/android/systemui_ex/statusbar/BaseStatusBar$5;

    iget-object v5, v5, Lcom/android/systemui_ex/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui_ex/statusbar/BaseStatusBar;

    iget-object v5, v5, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v5}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$5$2;->this$1:Lcom/android/systemui_ex/statusbar/BaseStatusBar$5;

    iget-object v5, v5, Lcom/android/systemui_ex/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui_ex/statusbar/BaseStatusBar;

    iget-object v5, v5, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v5}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v5

    if-nez v5, :cond_0

    .line 568
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 570
    .local v6, "time":J
    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$5$2;->this$1:Lcom/android/systemui_ex/statusbar/BaseStatusBar$5;

    iget-object v5, v5, Lcom/android/systemui_ex/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui_ex/statusbar/BaseStatusBar;

    # getter for: Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mLastOnTime:J
    invoke-static {v5}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->access$600(Lcom/android/systemui_ex/statusbar/BaseStatusBar;)J

    move-result-wide v8

    const-wide/16 v10, 0x7530

    add-long/2addr v8, v10

    cmp-long v5, v6, v8

    if-lez v5, :cond_0

    .line 571
    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$5$2;->this$1:Lcom/android/systemui_ex/statusbar/BaseStatusBar$5;

    iget-object v5, v5, Lcom/android/systemui_ex/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui_ex/statusbar/BaseStatusBar;

    iget-object v5, v5, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui_ex/statusbar/NotificationData;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$5$2;->this$1:Lcom/android/systemui_ex/statusbar/BaseStatusBar$5;

    iget-object v5, v5, Lcom/android/systemui_ex/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui_ex/statusbar/BaseStatusBar;

    iget-object v5, v5, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui_ex/statusbar/NotificationData;

    iget-object v8, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$5$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$5$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v9

    invoke-virtual {v5, v8, v9}, Lcom/android/systemui_ex/statusbar/NotificationData;->findPriority(Ljava/lang/String;I)I

    move-result v5

    const/4 v8, 0x2

    if-ne v5, v8, :cond_0

    .line 573
    new-instance v5, Lcom/android/systemui_ex/statusbar/BaseStatusBar$ProximityCheck;

    iget-object v8, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$5$2;->this$1:Lcom/android/systemui_ex/statusbar/BaseStatusBar$5;

    iget-object v8, v8, Lcom/android/systemui_ex/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui_ex/statusbar/BaseStatusBar;

    const/4 v9, 0x0

    invoke-direct {v5, v8, v9}, Lcom/android/systemui_ex/statusbar/BaseStatusBar$ProximityCheck;-><init>(Lcom/android/systemui_ex/statusbar/BaseStatusBar;Lcom/android/systemui_ex/statusbar/BaseStatusBar$1;)V

    invoke-virtual {v5}, Lcom/android/systemui_ex/statusbar/BaseStatusBar$ProximityCheck;->check()V

    .line 578
    .end local v6    # "time":J
    :cond_0
    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$5$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    .line 579
    .local v3, "n":Landroid/app/Notification;
    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$5$2;->this$1:Lcom/android/systemui_ex/statusbar/BaseStatusBar$5;

    iget-object v5, v5, Lcom/android/systemui_ex/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui_ex/statusbar/BaseStatusBar;

    iget-object v5, v5, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui_ex/statusbar/NotificationData;

    iget-object v8, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$5$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/android/systemui_ex/statusbar/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui_ex/statusbar/NotificationData$Entry;

    move-result-object v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$5$2;->this$1:Lcom/android/systemui_ex/statusbar/BaseStatusBar$5;

    iget-object v5, v5, Lcom/android/systemui_ex/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui_ex/statusbar/BaseStatusBar;

    iget-object v8, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$5$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->isHeadsUp(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 585
    .local v0, "isUpdate":Z
    :cond_2
    invoke-virtual {v3}, Landroid/app/Notification;->isGroupChild()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$5$2;->this$1:Lcom/android/systemui_ex/statusbar/BaseStatusBar$5;

    iget-object v5, v5, Lcom/android/systemui_ex/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui_ex/statusbar/BaseStatusBar;

    iget-object v5, v5, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui_ex/statusbar/NotificationData;

    iget-object v8, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$5$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/android/systemui_ex/statusbar/NotificationData;->isGroupWithSummary(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 587
    sget-boolean v5, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v5, :cond_3

    .line 588
    const-string v5, "StatusBar"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Ignoring group child due to existing summary: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$5$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    :cond_3
    if-eqz v0, :cond_4

    .line 593
    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$5$2;->this$1:Lcom/android/systemui_ex/statusbar/BaseStatusBar$5;

    iget-object v5, v5, Lcom/android/systemui_ex/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui_ex/statusbar/BaseStatusBar;

    iget-object v8, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$5$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$5$2;->val$rankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-virtual {v5, v8, v9}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->removeNotification(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 624
    :goto_0
    return-void

    .line 595
    :cond_4
    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$5$2;->this$1:Lcom/android/systemui_ex/statusbar/BaseStatusBar$5;

    iget-object v5, v5, Lcom/android/systemui_ex/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui_ex/statusbar/BaseStatusBar;

    iget-object v5, v5, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui_ex/statusbar/NotificationData;

    iget-object v8, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$5$2;->val$rankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-virtual {v5, v8}, Lcom/android/systemui_ex/statusbar/NotificationData;->updateRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    goto :goto_0

    .line 599
    :cond_5
    if-eqz v0, :cond_7

    .line 600
    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$5$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Notification;->isGroupChild()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 601
    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$5$2;->this$1:Lcom/android/systemui_ex/statusbar/BaseStatusBar$5;

    iget-object v5, v5, Lcom/android/systemui_ex/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui_ex/statusbar/BaseStatusBar;

    iget-object v8, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$5$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    iget-object v9, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$5$2;->val$rankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-virtual {v5, v8, v9}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->updateNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    goto :goto_0

    .line 603
    :cond_6
    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$5$2;->this$1:Lcom/android/systemui_ex/statusbar/BaseStatusBar$5;

    iget-object v5, v5, Lcom/android/systemui_ex/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui_ex/statusbar/BaseStatusBar;

    # getter for: Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mUpdaterList:Landroid/util/ArrayMap;
    invoke-static {v5}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->access$500(Lcom/android/systemui_ex/statusbar/BaseStatusBar;)Landroid/util/ArrayMap;

    move-result-object v8

    monitor-enter v8

    .line 605
    :try_start_0
    new-instance v4, Lcom/android/systemui_ex/statusbar/BaseStatusBar$5$2$1;

    invoke-direct {v4, p0}, Lcom/android/systemui_ex/statusbar/BaseStatusBar$5$2$1;-><init>(Lcom/android/systemui_ex/statusbar/BaseStatusBar$5$2;)V

    .line 613
    .local v4, "r":Ljava/lang/Runnable;
    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$5$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 614
    .local v1, "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$5$2;->this$1:Lcom/android/systemui_ex/statusbar/BaseStatusBar$5;

    iget-object v5, v5, Lcom/android/systemui_ex/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui_ex/statusbar/BaseStatusBar;

    # getter for: Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mUpdaterList:Landroid/util/ArrayMap;
    invoke-static {v5}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->access$500(Lcom/android/systemui_ex/statusbar/BaseStatusBar;)Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5, v1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$5$2;->this$1:Lcom/android/systemui_ex/statusbar/BaseStatusBar$5;

    iget-object v5, v5, Lcom/android/systemui_ex/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui_ex/statusbar/BaseStatusBar;

    # getter for: Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mUpdaterHandler:Lcom/android/systemui_ex/statusbar/BaseStatusBar$UpdaterWorkerHandler;
    invoke-static {v5}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->access$900(Lcom/android/systemui_ex/statusbar/BaseStatusBar;)Lcom/android/systemui_ex/statusbar/BaseStatusBar$UpdaterWorkerHandler;

    move-result-object v5

    const/4 v9, 0x0

    invoke-virtual {v5, v9, v1}, Lcom/android/systemui_ex/statusbar/BaseStatusBar$UpdaterWorkerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 616
    .local v2, "m":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$5$2;->this$1:Lcom/android/systemui_ex/statusbar/BaseStatusBar$5;

    iget-object v5, v5, Lcom/android/systemui_ex/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui_ex/statusbar/BaseStatusBar;

    # getter for: Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mUpdaterHandler:Lcom/android/systemui_ex/statusbar/BaseStatusBar$UpdaterWorkerHandler;
    invoke-static {v5}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->access$900(Lcom/android/systemui_ex/statusbar/BaseStatusBar;)Lcom/android/systemui_ex/statusbar/BaseStatusBar$UpdaterWorkerHandler;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/systemui_ex/statusbar/BaseStatusBar$UpdaterWorkerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 618
    const-string v5, "StatusBar"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Add Message to List, key="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", id="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$5$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    monitor-exit v8

    goto/16 :goto_0

    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "m":Landroid/os/Message;
    .end local v4    # "r":Ljava/lang/Runnable;
    :catchall_0
    move-exception v5

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 622
    :cond_7
    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$5$2;->this$1:Lcom/android/systemui_ex/statusbar/BaseStatusBar$5;

    iget-object v5, v5, Lcom/android/systemui_ex/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui_ex/statusbar/BaseStatusBar;

    iget-object v8, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$5$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    iget-object v9, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$5$2;->val$rankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-virtual {v5, v8, v9}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->addNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    goto/16 :goto_0
.end method
