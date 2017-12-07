.class public Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;
.super Landroid/service/notification/INotificationListener$Stub;
.source "NotificationListenerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/NotificationListenerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "NotificationListenerWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/notification/NotificationListenerService;


# direct methods
.method protected constructor <init>(Landroid/service/notification/NotificationListenerService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/service/notification/NotificationListenerService;

    .prologue
    .line 871
    iput-object p1, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-direct {p0}, Landroid/service/notification/INotificationListener$Stub;-><init>()V

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
    .line 964
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-static {v0}, Landroid/service/notification/NotificationListenerService;->-get2(Landroid/service/notification/NotificationListenerService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    .line 965
    const/4 v2, 0x0

    .line 964
    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 963
    return-void
.end method

.method public onListenerConnected(Landroid/service/notification/NotificationRankingUpdate;)V
    .locals 2
    .param p1, "update"    # Landroid/service/notification/NotificationRankingUpdate;

    .prologue
    .line 937
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-static {v0}, Landroid/service/notification/NotificationListenerService;->-get3(Landroid/service/notification/NotificationListenerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 938
    :try_start_0
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-static {v0, p1}, Landroid/service/notification/NotificationListenerService;->-wrap0(Landroid/service/notification/NotificationListenerService;Landroid/service/notification/NotificationRankingUpdate;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 940
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/service/notification/NotificationListenerService;->-set0(Landroid/service/notification/NotificationListenerService;Z)Z

    .line 941
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-static {v0}, Landroid/service/notification/NotificationListenerService;->-get2(Landroid/service/notification/NotificationListenerService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 935
    return-void

    .line 937
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
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
    .line 958
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-static {v0}, Landroid/service/notification/NotificationListenerService;->-get2(Landroid/service/notification/NotificationListenerService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    .line 959
    const/4 v2, 0x0

    .line 958
    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 957
    return-void
.end method

.method public onNotificationActionClick(Ljava/lang/String;JI)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "time"    # J
    .param p4, "actionIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 987
    return-void
.end method

.method public onNotificationClick(Ljava/lang/String;J)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "time"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 981
    return-void
.end method

.method public onNotificationEnqueued(Landroid/service/notification/IStatusBarNotificationHolder;IZ)V
    .locals 0
    .param p1, "notificationHolder"    # Landroid/service/notification/IStatusBarNotificationHolder;
    .param p2, "importance"    # I
    .param p3, "user"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 970
    return-void
.end method

.method public onNotificationPosted(Landroid/service/notification/IStatusBarNotificationHolder;Landroid/service/notification/NotificationRankingUpdate;)V
    .locals 8
    .param p1, "sbnHolder"    # Landroid/service/notification/IStatusBarNotificationHolder;
    .param p2, "update"    # Landroid/service/notification/NotificationRankingUpdate;

    .prologue
    .line 877
    :try_start_0
    invoke-interface {p1}, Landroid/service/notification/IStatusBarNotificationHolder;->get()Landroid/service/notification/StatusBarNotification;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 885
    .local v3, "sbn":Landroid/service/notification/StatusBarNotification;
    :try_start_1
    iget-object v4, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/service/notification/NotificationListenerService;->-wrap1(Landroid/service/notification/NotificationListenerService;Landroid/app/Notification;)V

    .line 886
    iget-object v4, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/service/notification/NotificationListenerService;->-wrap2(Landroid/service/notification/NotificationListenerService;Landroid/app/Notification;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 895
    .end local v3    # "sbn":Landroid/service/notification/StatusBarNotification;
    :goto_0
    iget-object v4, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-static {v4}, Landroid/service/notification/NotificationListenerService;->-get3(Landroid/service/notification/NotificationListenerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 896
    :try_start_2
    iget-object v4, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-static {v4, p2}, Landroid/service/notification/NotificationListenerService;->-wrap0(Landroid/service/notification/NotificationListenerService;Landroid/service/notification/NotificationRankingUpdate;)V

    .line 897
    if-eqz v3, :cond_0

    .line 898
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 899
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 900
    iget-object v4, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-static {v4}, Landroid/service/notification/NotificationListenerService;->-get4(Landroid/service/notification/NotificationListenerService;)Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 901
    iget-object v4, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-static {v4}, Landroid/service/notification/NotificationListenerService;->-get2(Landroid/service/notification/NotificationListenerService;)Landroid/os/Handler;

    move-result-object v4

    const/4 v6, 0x1

    invoke-virtual {v4, v6, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :goto_1
    monitor-exit v5

    .line 874
    return-void

    .line 878
    :catch_0
    move-exception v1

    .line 879
    .local v1, "e":Landroid/os/RemoteException;
    iget-object v4, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-static {v4}, Landroid/service/notification/NotificationListenerService;->-get0(Landroid/service/notification/NotificationListenerService;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "onNotificationPosted: Error receiving StatusBarNotification"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 880
    return-void

    .line 887
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v3    # "sbn":Landroid/service/notification/StatusBarNotification;
    :catch_1
    move-exception v2

    .line 889
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    iget-object v4, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-static {v4}, Landroid/service/notification/NotificationListenerService;->-get0(Landroid/service/notification/NotificationListenerService;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onNotificationPosted: can\'t rebuild notification from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 890
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 889
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    const/4 v3, 0x0

    .local v3, "sbn":Landroid/service/notification/StatusBarNotification;
    goto :goto_0

    .line 905
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    .end local v3    # "sbn":Landroid/service/notification/StatusBarNotification;
    :cond_0
    :try_start_3
    iget-object v4, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-static {v4}, Landroid/service/notification/NotificationListenerService;->-get2(Landroid/service/notification/NotificationListenerService;)Landroid/os/Handler;

    move-result-object v4

    .line 906
    iget-object v6, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-static {v6}, Landroid/service/notification/NotificationListenerService;->-get4(Landroid/service/notification/NotificationListenerService;)Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v6

    .line 905
    const/4 v7, 0x4

    invoke-virtual {v4, v7, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 895
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
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
    .line 948
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-static {v0}, Landroid/service/notification/NotificationListenerService;->-get3(Landroid/service/notification/NotificationListenerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 949
    :try_start_0
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-static {v0, p1}, Landroid/service/notification/NotificationListenerService;->-wrap0(Landroid/service/notification/NotificationListenerService;Landroid/service/notification/NotificationRankingUpdate;)V

    .line 950
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-static {v0}, Landroid/service/notification/NotificationListenerService;->-get2(Landroid/service/notification/NotificationListenerService;)Landroid/os/Handler;

    move-result-object v0

    .line 951
    iget-object v2, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-static {v2}, Landroid/service/notification/NotificationListenerService;->-get4(Landroid/service/notification/NotificationListenerService;)Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v2

    .line 950
    const/4 v3, 0x4

    invoke-virtual {v0, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 946
    return-void

    .line 948
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onNotificationRemoved(Landroid/service/notification/IStatusBarNotificationHolder;Landroid/service/notification/NotificationRankingUpdate;)V
    .locals 6
    .param p1, "sbnHolder"    # Landroid/service/notification/IStatusBarNotificationHolder;
    .param p2, "update"    # Landroid/service/notification/NotificationRankingUpdate;

    .prologue
    .line 917
    :try_start_0
    invoke-interface {p1}, Landroid/service/notification/IStatusBarNotificationHolder;->get()Landroid/service/notification/StatusBarNotification;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 924
    .local v2, "sbn":Landroid/service/notification/StatusBarNotification;
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-static {v3}, Landroid/service/notification/NotificationListenerService;->-get3(Landroid/service/notification/NotificationListenerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 925
    :try_start_1
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-static {v3, p2}, Landroid/service/notification/NotificationListenerService;->-wrap0(Landroid/service/notification/NotificationListenerService;Landroid/service/notification/NotificationRankingUpdate;)V

    .line 926
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 927
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 928
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-static {v3}, Landroid/service/notification/NotificationListenerService;->-get4(Landroid/service/notification/NotificationListenerService;)Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 929
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-static {v3}, Landroid/service/notification/NotificationListenerService;->-get2(Landroid/service/notification/NotificationListenerService;)Landroid/os/Handler;

    move-result-object v3

    const/4 v5, 0x2

    invoke-virtual {v3, v5, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    .line 914
    return-void

    .line 918
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v2    # "sbn":Landroid/service/notification/StatusBarNotification;
    :catch_0
    move-exception v1

    .line 919
    .local v1, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-static {v3}, Landroid/service/notification/NotificationListenerService;->-get0(Landroid/service/notification/NotificationListenerService;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "onNotificationRemoved: Error receiving StatusBarNotification"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 920
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-static {v3}, Landroid/service/notification/NotificationListenerService;->-get2(Landroid/service/notification/NotificationListenerService;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 921
    return-void

    .line 924
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v2    # "sbn":Landroid/service/notification/StatusBarNotification;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public onNotificationRemovedReason(Ljava/lang/String;JI)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "time"    # J
    .param p4, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 993
    return-void
.end method

.method public onNotificationVisibilityChanged(Ljava/lang/String;JZ)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "time"    # J
    .param p4, "visible"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 976
    return-void
.end method
