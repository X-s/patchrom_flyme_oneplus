.class Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;
.super Landroid/service/notification/INotificationListener$Stub;
.source "NotificationListenerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/NotificationListenerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "INotificationListenerWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/notification/NotificationListenerService;


# direct methods
.method private constructor <init>(Landroid/service/notification/NotificationListenerService;)V
    .locals 0

    .prologue
    .line 679
    iput-object p1, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-direct {p0}, Landroid/service/notification/INotificationListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/service/notification/NotificationListenerService;Landroid/service/notification/NotificationListenerService$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/service/notification/NotificationListenerService;
    .param p2, "x1"    # Landroid/service/notification/NotificationListenerService$1;

    .prologue
    .line 679
    invoke-direct {p0, p1}, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;-><init>(Landroid/service/notification/NotificationListenerService;)V

    return-void
.end method


# virtual methods
.method public onInterruptionFilterChanged(I)V
    .locals 3
    .param p1, "interruptionFilter"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 774
    :try_start_0
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v1, p1}, Landroid/service/notification/NotificationListenerService;->onInterruptionFilterChanged(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 778
    :goto_0
    return-void

    .line 775
    :catch_0
    move-exception v0

    .line 776
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    # getter for: Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;
    invoke-static {v1}, Landroid/service/notification/NotificationListenerService;->access$100(Landroid/service/notification/NotificationListenerService;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error running onInterruptionFilterChanged"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onListenerConnected(Landroid/service/notification/NotificationRankingUpdate;)V
    .locals 4
    .param p1, "update"    # Landroid/service/notification/NotificationRankingUpdate;

    .prologue
    .line 740
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    # getter for: Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;
    invoke-static {v1}, Landroid/service/notification/NotificationListenerService;->access$400(Landroid/service/notification/NotificationListenerService;)Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;

    move-result-object v2

    monitor-enter v2

    .line 741
    :try_start_0
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    # invokes: Landroid/service/notification/NotificationListenerService;->applyUpdate(Landroid/service/notification/NotificationRankingUpdate;)V
    invoke-static {v1, p1}, Landroid/service/notification/NotificationListenerService;->access$500(Landroid/service/notification/NotificationListenerService;Landroid/service/notification/NotificationRankingUpdate;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 743
    :try_start_1
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v1}, Landroid/service/notification/NotificationListenerService;->onListenerConnected()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 747
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 748
    return-void

    .line 744
    :catch_0
    move-exception v0

    .line 745
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    # getter for: Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;
    invoke-static {v1}, Landroid/service/notification/NotificationListenerService;->access$100(Landroid/service/notification/NotificationListenerService;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Error running onListenerConnected"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 747
    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public onListenerHintsChanged(I)V
    .locals 3
    .param p1, "hints"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 765
    :try_start_0
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v1, p1}, Landroid/service/notification/NotificationListenerService;->onListenerHintsChanged(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 769
    :goto_0
    return-void

    .line 766
    :catch_0
    move-exception v0

    .line 767
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    # getter for: Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;
    invoke-static {v1}, Landroid/service/notification/NotificationListenerService;->access$100(Landroid/service/notification/NotificationListenerService;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error running onListenerHintsChanged"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onNotificationPosted(Landroid/service/notification/IStatusBarNotificationHolder;Landroid/service/notification/NotificationRankingUpdate;)V
    .locals 6
    .param p1, "sbnHolder"    # Landroid/service/notification/IStatusBarNotificationHolder;
    .param p2, "update"    # Landroid/service/notification/NotificationRankingUpdate;

    .prologue
    .line 685
    :try_start_0
    invoke-interface {p1}, Landroid/service/notification/IStatusBarNotificationHolder;->get()Landroid/service/notification/StatusBarNotification;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 692
    .local v1, "sbn":Landroid/service/notification/StatusBarNotification;
    :try_start_1
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    # invokes: Landroid/service/notification/NotificationListenerService;->getContext()Landroid/content/Context;
    invoke-static {v3}, Landroid/service/notification/NotificationListenerService;->access$200(Landroid/service/notification/NotificationListenerService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/app/Notification$Builder;->rebuild(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification;

    .line 694
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    # invokes: Landroid/service/notification/NotificationListenerService;->createLegacyIconExtras(Landroid/app/Notification;)V
    invoke-static {v3, v4}, Landroid/service/notification/NotificationListenerService;->access$300(Landroid/service/notification/NotificationListenerService;Landroid/app/Notification;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 703
    :goto_0
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    # getter for: Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;
    invoke-static {v3}, Landroid/service/notification/NotificationListenerService;->access$400(Landroid/service/notification/NotificationListenerService;)Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;

    move-result-object v4

    monitor-enter v4

    .line 704
    :try_start_2
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    # invokes: Landroid/service/notification/NotificationListenerService;->applyUpdate(Landroid/service/notification/NotificationRankingUpdate;)V
    invoke-static {v3, p2}, Landroid/service/notification/NotificationListenerService;->access$500(Landroid/service/notification/NotificationListenerService;Landroid/service/notification/NotificationRankingUpdate;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 706
    if-eqz v1, :cond_0

    .line 707
    :try_start_3
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    iget-object v5, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    # getter for: Landroid/service/notification/NotificationListenerService;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;
    invoke-static {v5}, Landroid/service/notification/NotificationListenerService;->access$600(Landroid/service/notification/NotificationListenerService;)Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v5

    invoke-virtual {v3, v1, v5}, Landroid/service/notification/NotificationListenerService;->onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 715
    :goto_1
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 716
    .end local v1    # "sbn":Landroid/service/notification/StatusBarNotification;
    :goto_2
    return-void

    .line 686
    :catch_0
    move-exception v0

    .line 687
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    # getter for: Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;
    invoke-static {v3}, Landroid/service/notification/NotificationListenerService;->access$100(Landroid/service/notification/NotificationListenerService;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "onNotificationPosted: Error receiving StatusBarNotification"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 695
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "sbn":Landroid/service/notification/StatusBarNotification;
    :catch_1
    move-exception v0

    .line 697
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    .line 698
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    # getter for: Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;
    invoke-static {v3}, Landroid/service/notification/NotificationListenerService;->access$100(Landroid/service/notification/NotificationListenerService;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onNotificationPosted: can\'t rebuild notification from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 710
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    :try_start_5
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    iget-object v5, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    # getter for: Landroid/service/notification/NotificationListenerService;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;
    invoke-static {v5}, Landroid/service/notification/NotificationListenerService;->access$600(Landroid/service/notification/NotificationListenerService;)Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/service/notification/NotificationListenerService;->onNotificationRankingUpdate(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 712
    :catch_2
    move-exception v2

    .line 713
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_6
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    # getter for: Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;
    invoke-static {v3}, Landroid/service/notification/NotificationListenerService;->access$100(Landroid/service/notification/NotificationListenerService;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "Error running onNotificationPosted"

    invoke-static {v3, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 715
    .end local v2    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v3
.end method

.method public onNotificationRankingUpdate(Landroid/service/notification/NotificationRankingUpdate;)V
    .locals 4
    .param p1, "update"    # Landroid/service/notification/NotificationRankingUpdate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 753
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    # getter for: Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;
    invoke-static {v1}, Landroid/service/notification/NotificationListenerService;->access$400(Landroid/service/notification/NotificationListenerService;)Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;

    move-result-object v2

    monitor-enter v2

    .line 754
    :try_start_0
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    # invokes: Landroid/service/notification/NotificationListenerService;->applyUpdate(Landroid/service/notification/NotificationRankingUpdate;)V
    invoke-static {v1, p1}, Landroid/service/notification/NotificationListenerService;->access$500(Landroid/service/notification/NotificationListenerService;Landroid/service/notification/NotificationRankingUpdate;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 756
    :try_start_1
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    # getter for: Landroid/service/notification/NotificationListenerService;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;
    invoke-static {v3}, Landroid/service/notification/NotificationListenerService;->access$600(Landroid/service/notification/NotificationListenerService;)Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/service/notification/NotificationListenerService;->onNotificationRankingUpdate(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 760
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 761
    return-void

    .line 757
    :catch_0
    move-exception v0

    .line 758
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    # getter for: Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;
    invoke-static {v1}, Landroid/service/notification/NotificationListenerService;->access$100(Landroid/service/notification/NotificationListenerService;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Error running onNotificationRankingUpdate"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 760
    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public onNotificationRemoved(Landroid/service/notification/IStatusBarNotificationHolder;Landroid/service/notification/NotificationRankingUpdate;)V
    .locals 6
    .param p1, "sbnHolder"    # Landroid/service/notification/IStatusBarNotificationHolder;
    .param p2, "update"    # Landroid/service/notification/NotificationRankingUpdate;

    .prologue
    .line 722
    :try_start_0
    invoke-interface {p1}, Landroid/service/notification/IStatusBarNotificationHolder;->get()Landroid/service/notification/StatusBarNotification;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 728
    .local v1, "sbn":Landroid/service/notification/StatusBarNotification;
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    # getter for: Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;
    invoke-static {v3}, Landroid/service/notification/NotificationListenerService;->access$400(Landroid/service/notification/NotificationListenerService;)Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;

    move-result-object v4

    monitor-enter v4

    .line 729
    :try_start_1
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    # invokes: Landroid/service/notification/NotificationListenerService;->applyUpdate(Landroid/service/notification/NotificationRankingUpdate;)V
    invoke-static {v3, p2}, Landroid/service/notification/NotificationListenerService;->access$500(Landroid/service/notification/NotificationListenerService;Landroid/service/notification/NotificationRankingUpdate;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 731
    :try_start_2
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    iget-object v5, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    # getter for: Landroid/service/notification/NotificationListenerService;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;
    invoke-static {v5}, Landroid/service/notification/NotificationListenerService;->access$600(Landroid/service/notification/NotificationListenerService;)Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v5

    invoke-virtual {v3, v1, v5}, Landroid/service/notification/NotificationListenerService;->onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 735
    :goto_0
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 736
    .end local v1    # "sbn":Landroid/service/notification/StatusBarNotification;
    :goto_1
    return-void

    .line 723
    :catch_0
    move-exception v0

    .line 724
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    # getter for: Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;
    invoke-static {v3}, Landroid/service/notification/NotificationListenerService;->access$100(Landroid/service/notification/NotificationListenerService;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "onNotificationRemoved: Error receiving StatusBarNotification"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 732
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "sbn":Landroid/service/notification/StatusBarNotification;
    :catch_1
    move-exception v2

    .line 733
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_4
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    # getter for: Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;
    invoke-static {v3}, Landroid/service/notification/NotificationListenerService;->access$100(Landroid/service/notification/NotificationListenerService;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "Error running onNotificationRemoved"

    invoke-static {v3, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 735
    .end local v2    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3
.end method
