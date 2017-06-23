.class Lcom/android/server/content/SyncManager$SyncHandler;
.super Landroid/os/Handler;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SyncHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/content/SyncManager$SyncHandler$SyncNotificationInfo;
    }
.end annotation


# static fields
.field private static final MESSAGE_CANCEL:I = 0x6

.field private static final MESSAGE_CHECK_ALARMS:I = 0x3

.field private static final MESSAGE_MONITOR_SYNC:I = 0x8

.field private static final MESSAGE_SERVICE_CONNECTED:I = 0x4

.field private static final MESSAGE_SERVICE_DISCONNECTED:I = 0x5

.field private static final MESSAGE_SYNC_ALARM:I = 0x2

.field private static final MESSAGE_SYNC_EXPIRED:I = 0x7

.field private static final MESSAGE_SYNC_FINISHED:I = 0x1


# instance fields
.field private mAlarmScheduleTime:Ljava/lang/Long;

.field public final mSyncNotificationInfo:Lcom/android/server/content/SyncManager$SyncHandler$SyncNotificationInfo;

.field public final mSyncTimeTracker:Lcom/android/server/content/SyncManager$SyncTimeTracker;

.field private mUnreadyQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private final mWakeLocks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/PowerManager$WakeLock;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/content/SyncManager;


# direct methods
.method public constructor <init>(Lcom/android/server/content/SyncManager;Landroid/os/Looper;)V
    .locals 3
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v2, 0x0

    .line 2197
    iput-object p1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 2198
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2103
    new-instance v0, Lcom/android/server/content/SyncManager$SyncHandler$SyncNotificationInfo;

    invoke-direct {v0, p0}, Lcom/android/server/content/SyncManager$SyncHandler$SyncNotificationInfo;-><init>(Lcom/android/server/content/SyncManager$SyncHandler;)V

    iput-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mSyncNotificationInfo:Lcom/android/server/content/SyncManager$SyncHandler$SyncNotificationInfo;

    .line 2104
    iput-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mAlarmScheduleTime:Ljava/lang/Long;

    .line 2105
    new-instance v0, Lcom/android/server/content/SyncManager$SyncTimeTracker;

    iget-object v1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-direct {v0, v1, v2}, Lcom/android/server/content/SyncManager$SyncTimeTracker;-><init>(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$1;)V

    iput-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mSyncTimeTracker:Lcom/android/server/content/SyncManager$SyncTimeTracker;

    .line 2106
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mWakeLocks:Ljava/util/HashMap;

    .line 2108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mUnreadyQueue:Ljava/util/List;

    .line 2199
    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/content/SyncManager$SyncHandler;Lcom/android/server/content/SyncOperation;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/content/SyncManager$SyncHandler;
    .param p1, "x1"    # Lcom/android/server/content/SyncOperation;

    .prologue
    .line 2084
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->getSyncWakeLock(Lcom/android/server/content/SyncOperation;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/content/SyncManager$SyncHandler;)Ljava/lang/Long;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/content/SyncManager$SyncHandler;

    .prologue
    .line 2084
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mAlarmScheduleTime:Ljava/lang/Long;

    return-object v0
.end method

.method private cancelActiveSyncH(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 3014
    new-instance v1, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v4, v4, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3016
    .local v1, "activeSyncs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncManager$ActiveSyncContext;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 3017
    .local v0, "activeSyncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    if-eqz v0, :cond_0

    .line 3018
    iget-object v4, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget-object v3, v4, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 3020
    .local v3, "opInfo":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    invoke-virtual {v3, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3023
    if-eqz p2, :cond_1

    iget-object v4, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget-object v4, v4, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    const/4 v5, 0x0

    invoke-static {v4, p2, v5}, Lcom/android/server/content/SyncManager;->syncExtrasEquals(Landroid/os/Bundle;Landroid/os/Bundle;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3029
    :cond_1
    const/4 v4, 0x0

    invoke-direct {p0, v4, v0}, Lcom/android/server/content/SyncManager$SyncHandler;->runSyncFinishedOrCanceledH(Landroid/content/SyncResult;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    goto :goto_0

    .line 3032
    .end local v0    # "activeSyncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    .end local v3    # "opInfo":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    :cond_2
    return-void
.end method

.method private closeActiveSyncContext(Lcom/android/server/content/SyncManager$ActiveSyncContext;)V
    .locals 3
    .param p1, "activeSyncContext"    # Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .prologue
    .line 3138
    invoke-virtual {p1}, Lcom/android/server/content/SyncManager$ActiveSyncContext;->close()V

    .line 3139
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3140
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;
    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$900(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncInfo:Landroid/content/SyncInfo;

    iget-object v2, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget-object v2, v2, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/content/SyncStorageEngine;->removeActiveSync(Landroid/content/SyncInfo;I)V

    .line 3143
    const-string v0, "SyncManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3144
    const-string v0, "SyncManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removing all MESSAGE_MONITOR_SYNC & MESSAGE_SYNC_EXPIRED for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/content/SyncManager$ActiveSyncContext;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3147
    :cond_0
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;
    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$500(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncManager$SyncHandler;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->removeMessages(ILjava/lang/Object;)V

    .line 3148
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;
    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$500(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncManager$SyncHandler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->removeMessages(ILjava/lang/Object;)V

    .line 3149
    return-void
.end method

.method private dispatchSyncOperation(Lcom/android/server/content/SyncOperation;)Z
    .locals 13
    .param p1, "op"    # Lcom/android/server/content/SyncOperation;

    .prologue
    .line 2911
    const-string v2, "SyncManager"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2912
    const-string v2, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchSyncOperation: we are going to sync "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2913
    const-string v2, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "num active syncs: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v4, v4, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2914
    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v2, v2, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 2915
    .local v11, "syncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    const-string v2, "SyncManager"

    invoke-virtual {v11}, Lcom/android/server/content/SyncManager$ActiveSyncContext;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2921
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v11    # "syncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    :cond_0
    iget-object v8, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 2922
    .local v8, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    iget-boolean v2, v8, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_provider:Z

    if-eqz v2, :cond_4

    .line 2923
    iget-object v2, v8, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    iget-object v3, v8, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/content/SyncAdapterType;->newKey(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncAdapterType;

    move-result-object v10

    .line 2926
    .local v10, "syncAdapterType":Landroid/content/SyncAdapterType;
    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v2, v2, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    iget v3, v8, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v2, v10, v3}, Landroid/content/SyncAdaptersCache;->getServiceInfo(Ljava/lang/Object;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object v9

    .line 2927
    .local v9, "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    if-nez v9, :cond_1

    .line 2928
    const-string v2, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can\'t find a sync adapter for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", removing settings for it"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2930
    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;
    invoke-static {v2}, Lcom/android/server/content/SyncManager;->access$900(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/android/server/content/SyncStorageEngine;->removeAuthority(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 2931
    const/4 v2, 0x0

    .line 2975
    .end local v9    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .end local v10    # "syncAdapterType":Landroid/content/SyncAdapterType;
    :goto_1
    return v2

    .line 2933
    .restart local v9    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .restart local v10    # "syncAdapterType":Landroid/content/SyncAdapterType;
    :cond_1
    iget v6, v9, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    .line 2934
    .local v6, "targetUid":I
    iget-object v12, v9, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    .line 2951
    .end local v9    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .end local v10    # "syncAdapterType":Landroid/content/SyncAdapterType;
    .local v12, "targetComponent":Landroid/content/ComponentName;
    :goto_2
    new-instance v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-virtual {p0, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->insertStartSyncEvent(Lcom/android/server/content/SyncOperation;)J

    move-result-wide v4

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/content/SyncManager$ActiveSyncContext;-><init>(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;JI)V

    .line 2953
    .local v1, "activeSyncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    const-string v2, "SyncManager"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2954
    const-string v2, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchSyncOperation: starting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2957
    :cond_2
    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;
    invoke-static {v2}, Lcom/android/server/content/SyncManager;->access$900(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/content/SyncStorageEngine;->addActiveSync(Lcom/android/server/content/SyncManager$ActiveSyncContext;)Landroid/content/SyncInfo;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncInfo:Landroid/content/SyncInfo;

    .line 2958
    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v2, v2, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2960
    iget-object v2, v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    invoke-virtual {v2}, Lcom/android/server/content/SyncOperation;->isExpedited()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    invoke-virtual {v2}, Lcom/android/server/content/SyncOperation;->isManual()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    invoke-virtual {v2}, Lcom/android/server/content/SyncOperation;->isIgnoreSettings()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2963
    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # invokes: Lcom/android/server/content/SyncManager;->postSyncExpiryMessage(Lcom/android/server/content/SyncManager$ActiveSyncContext;)V
    invoke-static {v2, v1}, Lcom/android/server/content/SyncManager;->access$4100(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    .line 2967
    :cond_3
    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # invokes: Lcom/android/server/content/SyncManager;->postMonitorSyncProgressMessage(Lcom/android/server/content/SyncManager$ActiveSyncContext;)V
    invoke-static {v2, v1}, Lcom/android/server/content/SyncManager;->access$2800(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    .line 2969
    iget v2, v8, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v1, v12, v2}, Lcom/android/server/content/SyncManager$ActiveSyncContext;->bindToSyncAdapter(Landroid/content/ComponentName;I)Z

    move-result v2

    if-nez v2, :cond_5

    .line 2970
    const-string v2, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bind attempt failed - target: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2971
    invoke-direct {p0, v1}, Lcom/android/server/content/SyncManager$SyncHandler;->closeActiveSyncContext(Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    .line 2972
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 2939
    .end local v1    # "activeSyncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    .end local v6    # "targetUid":I
    .end local v12    # "targetComponent":Landroid/content/ComponentName;
    :cond_4
    :try_start_0
    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/content/SyncManager;->access$1900(Lcom/android/server/content/SyncManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, v8, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2943
    .restart local v6    # "targetUid":I
    iget-object v12, v8, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v12    # "targetComponent":Landroid/content/ComponentName;
    goto/16 :goto_2

    .line 2944
    .end local v6    # "targetUid":I
    .end local v12    # "targetComponent":Landroid/content/ComponentName;
    :catch_0
    move-exception v0

    .line 2945
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t find a service for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v8, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", removing settings for it"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2947
    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;
    invoke-static {v2}, Lcom/android/server/content/SyncManager;->access$900(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/android/server/content/SyncStorageEngine;->removeAuthority(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 2948
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 2975
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "activeSyncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    .restart local v6    # "targetUid":I
    .restart local v12    # "targetComponent":Landroid/content/ComponentName;
    :cond_5
    const/4 v2, 0x1

    goto/16 :goto_1
.end method

.method private getSyncWakeLock(Lcom/android/server/content/SyncOperation;)Landroid/os/PowerManager$WakeLock;
    .locals 5
    .param p1, "operation"    # Lcom/android/server/content/SyncOperation;

    .prologue
    .line 2142
    invoke-virtual {p1}, Lcom/android/server/content/SyncOperation;->wakeLockName()Ljava/lang/String;

    move-result-object v2

    .line 2143
    .local v2, "wakeLockKey":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mWakeLocks:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager$WakeLock;

    .line 2144
    .local v1, "wakeLock":Landroid/os/PowerManager$WakeLock;
    if-nez v1, :cond_0

    .line 2145
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "*sync*/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2146
    .local v0, "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v3}, Lcom/android/server/content/SyncManager;->access$200(Lcom/android/server/content/SyncManager;)Landroid/os/PowerManager;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    .line 2147
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 2148
    iget-object v3, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mWakeLocks:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2150
    .end local v0    # "name":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method private installHandleTooManyDeletesNotification(Landroid/accounts/Account;Ljava/lang/String;JI)V
    .locals 17
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "numDeletes"    # J
    .param p5, "userId"    # I

    .prologue
    .line 3256
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mNotificationMgr:Landroid/app/NotificationManager;
    invoke-static {v2}, Lcom/android/server/content/SyncManager;->access$4400(Lcom/android/server/content/SyncManager;)Landroid/app/NotificationManager;

    move-result-object v2

    if-nez v2, :cond_1

    .line 3300
    :cond_0
    :goto_0
    return-void

    .line 3258
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/content/SyncManager;->access$1900(Lcom/android/server/content/SyncManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v12

    .line 3260
    .local v12, "providerInfo":Landroid/content/pm/ProviderInfo;
    if-eqz v12, :cond_0

    .line 3263
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/content/SyncManager;->access$1900(Lcom/android/server/content/SyncManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/content/pm/ProviderInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 3265
    .local v8, "authorityName":Ljava/lang/CharSequence;
    new-instance v4, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/content/SyncManager;->access$1900(Lcom/android/server/content/SyncManager;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Landroid/content/SyncActivityTooManyDeletes;

    invoke-direct {v4, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3266
    .local v4, "clickIntent":Landroid/content/Intent;
    const-string v2, "account"

    move-object/from16 v0, p1

    invoke-virtual {v4, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3267
    const-string v2, "authority"

    move-object/from16 v0, p2

    invoke-virtual {v4, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3268
    const-string v2, "provider"

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3269
    const-string v2, "numDeletes"

    move-wide/from16 v0, p3

    invoke-virtual {v4, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3271
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/content/SyncManager$SyncHandler;->isActivityAvailable(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3272
    const-string v2, "SyncManager"

    const-string v3, "No activity found to handle too many deletes."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3276
    :cond_2
    new-instance v7, Landroid/os/UserHandle;

    move/from16 v0, p5

    invoke-direct {v7, v0}, Landroid/os/UserHandle;-><init>(I)V

    .line 3277
    .local v7, "user":Landroid/os/UserHandle;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/content/SyncManager;->access$1900(Lcom/android/server/content/SyncManager;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/high16 v5, 0x10000000

    const/4 v6, 0x0

    invoke-static/range {v2 .. v7}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v11

    .line 3281
    .local v11, "pendingIntent":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/content/SyncManager;->access$1900(Lcom/android/server/content/SyncManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040121

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    .line 3284
    .local v13, "tooManyDeletesDescFormat":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # invokes: Lcom/android/server/content/SyncManager;->getContextForUser(Landroid/os/UserHandle;)Landroid/content/Context;
    invoke-static {v2, v7}, Lcom/android/server/content/SyncManager;->access$4800(Lcom/android/server/content/SyncManager;Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v9

    .line 3285
    .local v9, "contextForUser":Landroid/content/Context;
    new-instance v2, Landroid/app/Notification$Builder;

    invoke-direct {v2, v9}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x108065c

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/content/SyncManager;->access$1900(Lcom/android/server/content/SyncManager;)Landroid/content/Context;

    move-result-object v3

    const v5, 0x104011f

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v2, v14, v15}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v2

    const v3, 0x1060064

    invoke-virtual {v9, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v2

    const v3, 0x1040120

    invoke-virtual {v9, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v8, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v10

    .line 3297
    .local v10, "notification":Landroid/app/Notification;
    iget v2, v10, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v10, Landroid/app/Notification;->flags:I

    .line 3298
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mNotificationMgr:Landroid/app/NotificationManager;
    invoke-static {v2}, Lcom/android/server/content/SyncManager;->access$4400(Lcom/android/server/content/SyncManager;)Landroid/app/NotificationManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/accounts/Account;->hashCode()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v6

    xor-int/2addr v5, v6

    invoke-virtual {v2, v3, v5, v10, v7}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto/16 :goto_0
.end method

.method private isActivityAvailable(Landroid/content/Intent;)Z
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 3309
    iget-object v6, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/content/SyncManager;->access$1900(Lcom/android/server/content/SyncManager;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 3310
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v3, p1, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 3311
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 3312
    .local v2, "listSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 3313
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 3314
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_1

    .line 3316
    const/4 v5, 0x1

    .line 3320
    .end local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_0
    return v5

    .line 3312
    .restart local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private isDispatchable(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z
    .locals 7
    .param p1, "target"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .prologue
    const/4 v2, 0x0

    .line 2356
    const-string v3, "SyncManager"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    .line 2357
    .local v1, "isLoggable":Z
    iget-boolean v3, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_provider:Z

    if-eqz v3, :cond_4

    .line 2359
    iget-object v3, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mRunningAccounts:[Landroid/accounts/AccountAndUser;
    invoke-static {v3}, Lcom/android/server/content/SyncManager;->access$2900(Lcom/android/server/content/SyncManager;)[Landroid/accounts/AccountAndUser;

    move-result-object v0

    .line 2360
    .local v0, "accounts":[Landroid/accounts/AccountAndUser;
    iget-object v3, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v4, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget v5, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    # invokes: Lcom/android/server/content/SyncManager;->containsAccountAndUser([Landroid/accounts/AccountAndUser;Landroid/accounts/Account;I)Z
    invoke-static {v3, v0, v4, v5}, Lcom/android/server/content/SyncManager;->access$3000(Lcom/android/server/content/SyncManager;[Landroid/accounts/AccountAndUser;Landroid/accounts/Account;I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2389
    .end local v0    # "accounts":[Landroid/accounts/AccountAndUser;
    :cond_0
    :goto_0
    return v2

    .line 2364
    .restart local v0    # "accounts":[Landroid/accounts/AccountAndUser;
    :cond_1
    iget-object v3, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;
    invoke-static {v3}, Lcom/android/server/content/SyncManager;->access$900(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    move-result-object v3

    iget v4, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v3, v4}, Lcom/android/server/content/SyncStorageEngine;->getMasterSyncAutomatically(I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;
    invoke-static {v3}, Lcom/android/server/content/SyncManager;->access$900(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget v5, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    iget-object v6, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/content/SyncStorageEngine;->getSyncAutomatically(Landroid/accounts/Account;ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2369
    :cond_2
    if-eqz v1, :cond_0

    .line 2370
    const-string v3, "SyncManager"

    const-string v4, "    Not scheduling periodic operation: sync turned off."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2374
    :cond_3
    iget-object v3, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v4, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget v5, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    iget-object v6, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/content/SyncManager;->getIsSyncable(Landroid/accounts/Account;ILjava/lang/String;)I

    move-result v3

    if-nez v3, :cond_5

    .line 2376
    if-eqz v1, :cond_0

    .line 2377
    const-string v3, "SyncManager"

    const-string v4, "    Not scheduling periodic operation: isSyncable == 0."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2381
    .end local v0    # "accounts":[Landroid/accounts/AccountAndUser;
    :cond_4
    iget-boolean v3, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_service:Z

    if-eqz v3, :cond_5

    .line 2382
    iget-object v3, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;
    invoke-static {v3}, Lcom/android/server/content/SyncManager;->access$900(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    iget v5, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v3, v4, v5}, Lcom/android/server/content/SyncStorageEngine;->getIsTargetServiceActive(Landroid/content/ComponentName;I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2383
    if-eqz v1, :cond_0

    .line 2384
    const-string v3, "SyncManager"

    const-string v4, "   Not scheduling periodic operation: isEnabled == 0."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2389
    :cond_5
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isOperationValidLocked(Lcom/android/server/content/SyncOperation;)Z
    .locals 16
    .param p1, "op"    # Lcom/android/server/content/SyncOperation;

    .prologue
    .line 2809
    const-string v12, "SyncManager"

    const/4 v13, 0x2

    invoke-static {v12, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    .line 2812
    .local v4, "isLoggable":Z
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 2813
    .local v9, "target":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;
    invoke-static {v12}, Lcom/android/server/content/SyncManager;->access$900(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    move-result-object v12

    iget v13, v9, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v12, v13}, Lcom/android/server/content/SyncStorageEngine;->getMasterSyncAutomatically(I)Z

    move-result v8

    .line 2814
    .local v8, "syncEnabled":Z
    iget-boolean v12, v9, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_provider:Z

    if-eqz v12, :cond_9

    .line 2816
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mRunningAccounts:[Landroid/accounts/AccountAndUser;
    invoke-static {v12}, Lcom/android/server/content/SyncManager;->access$2900(Lcom/android/server/content/SyncManager;)[Landroid/accounts/AccountAndUser;

    move-result-object v1

    .line 2817
    .local v1, "accounts":[Landroid/accounts/AccountAndUser;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v13, v9, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget v14, v9, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    # invokes: Lcom/android/server/content/SyncManager;->containsAccountAndUser([Landroid/accounts/AccountAndUser;Landroid/accounts/Account;I)Z
    invoke-static {v12, v1, v13, v14}, Lcom/android/server/content/SyncManager;->access$3000(Lcom/android/server/content/SyncManager;[Landroid/accounts/AccountAndUser;Landroid/accounts/Account;I)Z

    move-result v12

    if-nez v12, :cond_1

    .line 2818
    if-eqz v4, :cond_0

    .line 2819
    const-string v12, "SyncManager"

    const-string v13, "    Dropping sync operation: account doesn\'t exist."

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2821
    :cond_0
    const/4 v12, 0x0

    .line 2907
    .end local v1    # "accounts":[Landroid/accounts/AccountAndUser;
    :goto_0
    return v12

    .line 2824
    .restart local v1    # "accounts":[Landroid/accounts/AccountAndUser;
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v13, v9, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget v14, v9, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    iget-object v15, v9, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v12, v13, v14, v15}, Lcom/android/server/content/SyncManager;->getIsSyncable(Landroid/accounts/Account;ILjava/lang/String;)I

    move-result v6

    .line 2825
    .local v6, "state":I
    if-nez v6, :cond_3

    .line 2826
    if-eqz v4, :cond_2

    .line 2827
    const-string v12, "SyncManager"

    const-string v13, "    Dropping sync operation: isSyncable == 0."

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2829
    :cond_2
    const/4 v12, 0x0

    goto :goto_0

    .line 2831
    :cond_3
    if-eqz v8, :cond_6

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;
    invoke-static {v12}, Lcom/android/server/content/SyncManager;->access$900(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    move-result-object v12

    iget-object v13, v9, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget v14, v9, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    iget-object v15, v9, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v12, v13, v14, v15}, Lcom/android/server/content/SyncStorageEngine;->getSyncAutomatically(Landroid/accounts/Account;ILjava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    const/4 v8, 0x1

    .line 2835
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v12, v12, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    iget-object v13, v9, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    iget-object v14, v9, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v14, v14, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {v13, v14}, Landroid/content/SyncAdapterType;->newKey(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncAdapterType;

    move-result-object v13

    iget v14, v9, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v12, v13, v14}, Landroid/content/SyncAdaptersCache;->getServiceInfo(Ljava/lang/Object;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object v7

    .line 2838
    .local v7, "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    if-eqz v7, :cond_7

    .line 2839
    iget v10, v7, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    .line 2878
    .end local v1    # "accounts":[Landroid/accounts/AccountAndUser;
    .end local v7    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .local v10, "targetUid":I
    :goto_2
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string v13, "ignore_settings"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    if-nez v12, :cond_4

    if-gez v6, :cond_f

    :cond_4
    const/4 v3, 0x1

    .line 2883
    .local v3, "ignoreSystemConfiguration":Z
    :goto_3
    if-nez v8, :cond_10

    if-nez v3, :cond_10

    .line 2884
    if-eqz v4, :cond_5

    .line 2885
    const-string v12, "SyncManager"

    const-string v13, "    Dropping sync operation: disallowed by settings/network."

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2887
    :cond_5
    const/4 v12, 0x0

    goto :goto_0

    .line 2831
    .end local v3    # "ignoreSystemConfiguration":Z
    .end local v10    # "targetUid":I
    .restart local v1    # "accounts":[Landroid/accounts/AccountAndUser;
    :cond_6
    const/4 v8, 0x0

    goto :goto_1

    .line 2841
    .restart local v7    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    :cond_7
    if-eqz v4, :cond_8

    .line 2842
    const-string v12, "SyncManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "    Dropping sync operation: No sync adapter registeredfor: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2845
    :cond_8
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 2847
    .end local v1    # "accounts":[Landroid/accounts/AccountAndUser;
    .end local v6    # "state":I
    .end local v7    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    :cond_9
    iget-boolean v12, v9, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_service:Z

    if-eqz v12, :cond_e

    .line 2848
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;
    invoke-static {v12}, Lcom/android/server/content/SyncManager;->access$900(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    move-result-object v12

    iget-object v13, v9, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    iget v14, v9, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v12, v13, v14}, Lcom/android/server/content/SyncStorageEngine;->getIsTargetServiceActive(Landroid/content/ComponentName;I)Z

    move-result v12

    if-eqz v12, :cond_b

    const/4 v6, 0x1

    .line 2850
    .restart local v6    # "state":I
    :goto_4
    if-nez v6, :cond_c

    .line 2852
    if-eqz v4, :cond_a

    .line 2853
    const-string v12, "SyncManager"

    const-string v13, "    Dropping sync operation: isActive == 0."

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2855
    :cond_a
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 2848
    .end local v6    # "state":I
    :cond_b
    const/4 v6, 0x0

    goto :goto_4

    .line 2858
    .restart local v6    # "state":I
    :cond_c
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/android/server/content/SyncManager;->access$1900(Lcom/android/server/content/SyncManager;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    iget-object v13, v9, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v12

    iget-object v12, v12, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v12, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v10    # "targetUid":I
    goto :goto_2

    .line 2862
    .end local v10    # "targetUid":I
    :catch_0
    move-exception v2

    .line 2863
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    if-eqz v4, :cond_d

    .line 2864
    const-string v12, "SyncManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "    Dropping sync operation: No service registered for: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v9, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2867
    :cond_d
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 2870
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v6    # "state":I
    :cond_e
    const-string v12, "SyncManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unknown target for Sync Op: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2871
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 2878
    .restart local v6    # "state":I
    .restart local v10    # "targetUid":I
    :cond_f
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 2890
    .restart local v3    # "ignoreSystemConfiguration":Z
    :cond_10
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # invokes: Lcom/android/server/content/SyncManager;->getConnectivityManager()Landroid/net/ConnectivityManager;
    invoke-static {v12}, Lcom/android/server/content/SyncManager;->access$4000(Lcom/android/server/content/SyncManager;)Landroid/net/ConnectivityManager;

    move-result-object v12

    invoke-virtual {v12, v10}, Landroid/net/ConnectivityManager;->getActiveNetworkInfoForUid(I)Landroid/net/NetworkInfo;

    move-result-object v5

    .line 2892
    .local v5, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v5, :cond_12

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v12

    if-eqz v12, :cond_12

    const/4 v11, 0x1

    .line 2893
    .local v11, "uidNetworkConnected":Z
    :goto_5
    if-nez v11, :cond_13

    if-nez v3, :cond_13

    .line 2894
    if-eqz v4, :cond_11

    .line 2895
    const-string v12, "SyncManager"

    const-string v13, "    Dropping sync operation: disallowed by settings/network."

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2897
    :cond_11
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 2892
    .end local v11    # "uidNetworkConnected":Z
    :cond_12
    const/4 v11, 0x0

    goto :goto_5

    .line 2900
    .restart local v11    # "uidNetworkConnected":Z
    :cond_13
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/content/SyncOperation;->isNotAllowedOnMetered()Z

    move-result v12

    if-eqz v12, :cond_15

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # invokes: Lcom/android/server/content/SyncManager;->getConnectivityManager()Landroid/net/ConnectivityManager;
    invoke-static {v12}, Lcom/android/server/content/SyncManager;->access$4000(Lcom/android/server/content/SyncManager;)Landroid/net/ConnectivityManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result v12

    if-eqz v12, :cond_15

    if-nez v3, :cond_15

    .line 2902
    if-eqz v4, :cond_14

    .line 2903
    const-string v12, "SyncManager"

    const-string v13, "    Dropping sync operation: not allowed on metered network."

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2905
    :cond_14
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 2907
    :cond_15
    const/4 v12, 0x1

    goto/16 :goto_0
.end method

.method private isSyncNotUsingNetworkH(Lcom/android/server/content/SyncManager$ActiveSyncContext;)Z
    .locals 22
    .param p1, "activeSyncContext"    # Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .prologue
    .line 2780
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v0, p1

    iget v15, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapterUid:I

    # invokes: Lcom/android/server/content/SyncManager;->getTotalBytesTransferredByUid(I)J
    invoke-static {v14, v15}, Lcom/android/server/content/SyncManager;->access$3900(Lcom/android/server/content/SyncManager;I)J

    move-result-wide v4

    .line 2782
    .local v4, "bytesTransferredCurrent":J
    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mBytesTransferredAtLastPoll:J

    sub-long v6, v4, v14

    .line 2785
    .local v6, "deltaBytesTransferred":J
    const-string v14, "SyncManager"

    const/4 v15, 0x3

    invoke-static {v14, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 2787
    move-wide v12, v6

    .line 2788
    .local v12, "remainder":J
    const-wide/32 v14, 0x100000

    div-long v10, v12, v14

    .line 2789
    .local v10, "mb":J
    const-wide/32 v14, 0x100000

    rem-long/2addr v12, v14

    .line 2790
    const-wide/16 v14, 0x400

    div-long v8, v12, v14

    .line 2791
    .local v8, "kb":J
    const-wide/16 v14, 0x400

    rem-long/2addr v12, v14

    .line 2792
    move-wide v2, v12

    .line 2793
    .local v2, "b":J
    const-string v14, "SyncManager"

    const-string v15, "Time since last update: %ds. Delta transferred: %dMBs,%dKBs,%dBs"

    const/16 v16, 0x4

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mLastPolledTimeElapsed:J

    move-wide/from16 v20, v0

    sub-long v18, v18, v20

    const-wide/16 v20, 0x3e8

    div-long v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x2

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x3

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2800
    .end local v2    # "b":J
    .end local v8    # "kb":J
    .end local v10    # "mb":J
    .end local v12    # "remainder":J
    :cond_0
    const-wide/16 v14, 0xa

    cmp-long v14, v6, v14

    if-gtz v14, :cond_1

    const/4 v14, 0x1

    :goto_0
    return v14

    :cond_1
    const/4 v14, 0x0

    goto :goto_0
.end method

.method private manageSyncAlarmLocked(JJ)V
    .locals 25
    .param p1, "nextPeriodicEventElapsedTime"    # J
    .param p3, "nextPendingEventElapsedTime"    # J

    .prologue
    .line 3184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/content/SyncManager;->mDataConnectionIsConnected:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/content/SyncManager;->access$600(Lcom/android/server/content/SyncManager;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 3252
    :cond_0
    :goto_0
    return-void

    .line 3185
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/content/SyncManager;->mStorageIsLow:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/content/SyncManager;->access$000(Lcom/android/server/content/SyncManager;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 3186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/content/SyncManager;->mDeviceIsIdle:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/content/SyncManager;->access$300(Lcom/android/server/content/SyncManager;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 3189
    const-wide v10, 0x7fffffffffffffffL

    .line 3190
    .local v10, "earliestTimeoutTime":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 3191
    .local v5, "currentSyncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    iget-wide v0, v5, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mTimeoutStartTime:J

    move-wide/from16 v18, v0

    # getter for: Lcom/android/server/content/SyncManager;->MAX_TIME_PER_SYNC:J
    invoke-static {}, Lcom/android/server/content/SyncManager;->access$3600()J

    move-result-wide v20

    add-long v8, v18, v20

    .line 3193
    .local v8, "currentSyncTimeoutTime":J
    const-string v17, "SyncManager"

    const/16 v18, 0x2

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 3194
    const-string v17, "SyncManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "manageSyncAlarm: active sync, mTimeoutStartTime + MAX is "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3197
    :cond_3
    cmp-long v17, v10, v8

    if-lez v17, :cond_2

    .line 3198
    move-wide v10, v8

    goto :goto_1

    .line 3202
    .end local v5    # "currentSyncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    .end local v8    # "currentSyncTimeoutTime":J
    :cond_4
    const-string v17, "SyncManager"

    const/16 v18, 0x2

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 3203
    const-string v17, "SyncManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "manageSyncAlarm: earliestTimeoutTime is "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3204
    const-string v17, "SyncManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "manageSyncAlarm: nextPeriodicEventElapsedTime is "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3206
    const-string v17, "SyncManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "manageSyncAlarm: nextPendingEventElapsedTime is "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3210
    :cond_5
    move-wide/from16 v0, p1

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 3211
    .local v6, "alarmTime":J
    move-wide/from16 v0, p3

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 3214
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    .line 3215
    .local v14, "now":J
    const-wide/16 v18, 0x7530

    add-long v18, v18, v14

    cmp-long v17, v6, v18

    if-gez v17, :cond_7

    .line 3216
    const-string v17, "SyncManager"

    const/16 v18, 0x2

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 3217
    const-string v17, "SyncManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "manageSyncAlarm: the alarmTime is too small, "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", setting to "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-wide/16 v20, 0x7530

    add-long v20, v20, v14

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3220
    :cond_6
    const-wide/16 v18, 0x7530

    add-long v6, v14, v18

    .line 3224
    :cond_7
    const/16 v16, 0x0

    .line 3225
    .local v16, "shouldSet":Z
    const/4 v13, 0x0

    .line 3226
    .local v13, "shouldCancel":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->mAlarmScheduleTime:Ljava/lang/Long;

    move-object/from16 v17, v0

    if-eqz v17, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->mAlarmScheduleTime:Ljava/lang/Long;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    cmp-long v17, v14, v18

    if-gez v17, :cond_b

    const/4 v4, 0x1

    .line 3228
    .local v4, "alarmIsActive":Z
    :goto_2
    const-wide v18, 0x7fffffffffffffffL

    cmp-long v17, v6, v18

    if-eqz v17, :cond_c

    .line 3230
    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->mAlarmScheduleTime:Ljava/lang/Long;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    cmp-long v17, v6, v18

    if-eqz v17, :cond_9

    .line 3231
    :cond_8
    const/16 v16, 0x1

    .line 3238
    :cond_9
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v17, v0

    # invokes: Lcom/android/server/content/SyncManager;->ensureAlarmService()V
    invoke-static/range {v17 .. v17}, Lcom/android/server/content/SyncManager;->access$4500(Lcom/android/server/content/SyncManager;)V

    .line 3239
    if-eqz v16, :cond_d

    .line 3240
    const-string v17, "SyncManager"

    const/16 v18, 0x2

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 3241
    const-string v17, "SyncManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "requesting that the alarm manager wake us up at elapsed time "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", now is "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sub-long v20, v6, v14

    const-wide/16 v22, 0x3e8

    div-long v20, v20, v22

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " secs from now"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3245
    :cond_a
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/content/SyncManager$SyncHandler;->mAlarmScheduleTime:Ljava/lang/Long;

    .line 3246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/content/SyncManager;->mAlarmService:Landroid/app/AlarmManager;
    invoke-static/range {v17 .. v17}, Lcom/android/server/content/SyncManager;->access$4700(Lcom/android/server/content/SyncManager;)Landroid/app/AlarmManager;

    move-result-object v17

    const/16 v18, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/content/SyncManager;->mSyncAlarmIntent:Landroid/app/PendingIntent;
    invoke-static/range {v19 .. v19}, Lcom/android/server/content/SyncManager;->access$4600(Lcom/android/server/content/SyncManager;)Landroid/app/PendingIntent;

    move-result-object v19

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v6, v7, v2}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 3226
    .end local v4    # "alarmIsActive":Z
    :cond_b
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 3234
    .restart local v4    # "alarmIsActive":Z
    :cond_c
    move v13, v4

    goto/16 :goto_3

    .line 3248
    :cond_d
    if-eqz v13, :cond_0

    .line 3249
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/content/SyncManager$SyncHandler;->mAlarmScheduleTime:Ljava/lang/Long;

    .line 3250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/content/SyncManager;->mAlarmService:Landroid/app/AlarmManager;
    invoke-static/range {v17 .. v17}, Lcom/android/server/content/SyncManager;->access$4700(Lcom/android/server/content/SyncManager;)Landroid/app/AlarmManager;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/content/SyncManager;->mSyncAlarmIntent:Landroid/app/PendingIntent;
    invoke-static/range {v18 .. v18}, Lcom/android/server/content/SyncManager;->access$4600(Lcom/android/server/content/SyncManager;)Landroid/app/PendingIntent;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto/16 :goto_0
.end method

.method private maybeEmptyUnreadyQueueLocked()V
    .locals 6

    .prologue
    .line 2131
    iget-object v1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mProvisioned:Z
    invoke-static {v1}, Lcom/android/server/content/SyncManager;->access$1300(Lcom/android/server/content/SyncManager;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mBootCompleted:Z
    invoke-static {v1}, Lcom/android/server/content/SyncManager;->access$400(Lcom/android/server/content/SyncManager;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2133
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mUnreadyQueue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2134
    iget-object v1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mUnreadyQueue:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    const-wide/16 v2, 0xbb8

    int-to-long v4, v0

    mul-long/2addr v2, v4

    const-wide/32 v4, 0x1d4c0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/content/SyncManager$SyncHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2133
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2137
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mUnreadyQueue:Ljava/util/List;

    .line 2139
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private maybeStartNextSyncH()J
    .locals 40

    .prologue
    .line 2537
    const-string v33, "SyncManager"

    const/16 v34, 0x2

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v15

    .line 2538
    .local v15, "isLoggable":Z
    if-eqz v15, :cond_0

    const-string v33, "SyncManager"

    const-string v34, "maybeStartNextSync"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2541
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v33, v0

    # getter for: Lcom/android/server/content/SyncManager;->mDataConnectionIsConnected:Z
    invoke-static/range {v33 .. v33}, Lcom/android/server/content/SyncManager;->access$600(Lcom/android/server/content/SyncManager;)Z

    move-result v33

    if-nez v33, :cond_3

    .line 2542
    if-eqz v15, :cond_1

    .line 2543
    const-string v33, "SyncManager"

    const-string v34, "maybeStartNextSync: no data connection, skipping"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2545
    :cond_1
    const-wide v18, 0x7fffffffffffffffL

    .line 2776
    :cond_2
    :goto_0
    return-wide v18

    .line 2548
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v33, v0

    # getter for: Lcom/android/server/content/SyncManager;->mStorageIsLow:Z
    invoke-static/range {v33 .. v33}, Lcom/android/server/content/SyncManager;->access$000(Lcom/android/server/content/SyncManager;)Z

    move-result v33

    if-eqz v33, :cond_5

    .line 2549
    if-eqz v15, :cond_4

    .line 2550
    const-string v33, "SyncManager"

    const-string v34, "maybeStartNextSync: memory low, skipping"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2552
    :cond_4
    const-wide v18, 0x7fffffffffffffffL

    goto :goto_0

    .line 2555
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v33, v0

    # getter for: Lcom/android/server/content/SyncManager;->mDeviceIsIdle:Z
    invoke-static/range {v33 .. v33}, Lcom/android/server/content/SyncManager;->access$300(Lcom/android/server/content/SyncManager;)Z

    move-result v33

    if-eqz v33, :cond_7

    .line 2556
    if-eqz v15, :cond_6

    .line 2557
    const-string v33, "SyncManager"

    const-string v34, "maybeStartNextSync: device idle, skipping"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2559
    :cond_6
    const-wide v18, 0x7fffffffffffffffL

    goto :goto_0

    .line 2564
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v33, v0

    # getter for: Lcom/android/server/content/SyncManager;->mRunningAccounts:[Landroid/accounts/AccountAndUser;
    invoke-static/range {v33 .. v33}, Lcom/android/server/content/SyncManager;->access$2900(Lcom/android/server/content/SyncManager;)[Landroid/accounts/AccountAndUser;

    move-result-object v33

    # getter for: Lcom/android/server/content/SyncManager;->INITIAL_ACCOUNTS_ARRAY:[Landroid/accounts/AccountAndUser;
    invoke-static {}, Lcom/android/server/content/SyncManager;->access$3200()[Landroid/accounts/AccountAndUser;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    if-ne v0, v1, :cond_9

    .line 2565
    if-eqz v15, :cond_8

    .line 2566
    const-string v33, "SyncManager"

    const-string v34, "maybeStartNextSync: accounts not known, skipping"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2568
    :cond_8
    const-wide v18, 0x7fffffffffffffffL

    goto :goto_0

    .line 2574
    :cond_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    .line 2577
    .local v20, "now":J
    const-wide v18, 0x7fffffffffffffffL

    .line 2580
    .local v18, "nextReadyToRunTime":J
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 2581
    .local v26, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncOperation;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v33, v0

    # getter for: Lcom/android/server/content/SyncManager;->mSyncQueue:Lcom/android/server/content/SyncQueue;
    invoke-static/range {v33 .. v33}, Lcom/android/server/content/SyncManager;->access$800(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncQueue;

    move-result-object v34

    monitor-enter v34

    .line 2582
    if-eqz v15, :cond_a

    .line 2583
    :try_start_0
    const-string v33, "SyncManager"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "build the operation array, syncQueue size is "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v36, v0

    # getter for: Lcom/android/server/content/SyncManager;->mSyncQueue:Lcom/android/server/content/SyncQueue;
    invoke-static/range {v36 .. v36}, Lcom/android/server/content/SyncManager;->access$800(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncQueue;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lcom/android/server/content/SyncQueue;->getOperations()Ljava/util/Collection;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Ljava/util/Collection;->size()I

    move-result v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2586
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v33, v0

    # getter for: Lcom/android/server/content/SyncManager;->mSyncQueue:Lcom/android/server/content/SyncQueue;
    invoke-static/range {v33 .. v33}, Lcom/android/server/content/SyncManager;->access$800(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncQueue;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Lcom/android/server/content/SyncQueue;->getOperations()Ljava/util/Collection;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .line 2589
    .local v25, "operationIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/content/SyncOperation;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v33, v0

    # getter for: Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;
    invoke-static/range {v33 .. v33}, Lcom/android/server/content/SyncManager;->access$1900(Lcom/android/server/content/SyncManager;)Landroid/content/Context;

    move-result-object v33

    const-string v35, "activity"

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager;

    .line 2591
    .local v7, "activityManager":Landroid/app/ActivityManager;
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v28

    .line 2592
    .local v28, "removedUsers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_b
    :goto_1
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_13

    .line 2593
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/server/content/SyncOperation;

    .line 2596
    .local v24, "op":Lcom/android/server/content/SyncOperation;
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    move/from16 v33, v0

    move/from16 v0, v33

    invoke-virtual {v7, v0}, Landroid/app/ActivityManager;->isUserRunning(I)Z

    move-result v33

    if-nez v33, :cond_d

    .line 2597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v33, v0

    # getter for: Lcom/android/server/content/SyncManager;->mUserManager:Landroid/os/UserManager;
    invoke-static/range {v33 .. v33}, Lcom/android/server/content/SyncManager;->access$3300(Lcom/android/server/content/SyncManager;)Landroid/os/UserManager;

    move-result-object v33

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    move/from16 v35, v0

    move-object/from16 v0, v33

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v32

    .line 2598
    .local v32, "userInfo":Landroid/content/pm/UserInfo;
    if-nez v32, :cond_c

    .line 2599
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    move/from16 v33, v0

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    move-object/from16 v0, v28

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2601
    :cond_c
    if-eqz v15, :cond_b

    .line 2602
    const-string v33, "SyncManager"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "    Dropping all sync operations for + "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    move/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ": user not running."

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2660
    .end local v7    # "activityManager":Landroid/app/ActivityManager;
    .end local v24    # "op":Lcom/android/server/content/SyncOperation;
    .end local v25    # "operationIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/content/SyncOperation;>;"
    .end local v28    # "removedUsers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v32    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v33

    monitor-exit v34
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v33

    .line 2607
    .restart local v7    # "activityManager":Landroid/app/ActivityManager;
    .restart local v24    # "op":Lcom/android/server/content/SyncOperation;
    .restart local v25    # "operationIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/content/SyncOperation;>;"
    .restart local v28    # "removedUsers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_d
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v33, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    move-object/from16 v35, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncManager;->getPackageName(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v27

    .line 2608
    .local v27, "packageName":Ljava/lang/String;
    const/4 v8, 0x0

    .line 2609
    .local v8, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v27, :cond_e

    .line 2611
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v33, v0

    # getter for: Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;
    invoke-static/range {v33 .. v33}, Lcom/android/server/content/SyncManager;->access$1900(Lcom/android/server/content/SyncManager;)Landroid/content/Context;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v33

    const/16 v35, 0x2200

    move-object/from16 v0, v33

    move-object/from16 v1, v27

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v8

    .line 2621
    :cond_e
    if-eqz v8, :cond_f

    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v33, v0

    # getter for: Lcom/android/server/content/SyncManager;->mAppIdleMonitor:Lcom/android/server/content/AppIdleMonitor;
    invoke-static/range {v33 .. v33}, Lcom/android/server/content/SyncManager;->access$3400(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/AppIdleMonitor;

    move-result-object v33

    iget v0, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v35, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    move/from16 v36, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v27

    move/from16 v2, v35

    move/from16 v3, v36

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/content/AppIdleMonitor;->isAppIdle(Ljava/lang/String;II)Z

    move-result v33

    if-eqz v33, :cond_f

    .line 2623
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v24

    # invokes: Lcom/android/server/content/SyncManager;->increaseBackoffSetting(Lcom/android/server/content/SyncOperation;)V
    invoke-static {v0, v1}, Lcom/android/server/content/SyncManager;->access$3500(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;)V

    .line 2624
    const/16 v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/server/content/SyncOperation;->appIdle:Z

    .line 2625
    if-eqz v15, :cond_b

    .line 2626
    const-string v33, "SyncManager"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Sync backing off idle app "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2614
    :catch_0
    move-exception v12

    .line 2615
    .local v12, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->remove()V

    .line 2616
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v33, v0

    # getter for: Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;
    invoke-static/range {v33 .. v33}, Lcom/android/server/content/SyncManager;->access$900(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    move-result-object v33

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/content/SyncOperation;->pendingOperation:Lcom/android/server/content/SyncStorageEngine$PendingOperation;

    move-object/from16 v35, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncStorageEngine;->deleteFromPending(Lcom/android/server/content/SyncStorageEngine$PendingOperation;)Z

    goto/16 :goto_1

    .line 2630
    .end local v12    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_f
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/server/content/SyncOperation;->appIdle:Z

    .line 2632
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/content/SyncManager$SyncHandler;->isOperationValidLocked(Lcom/android/server/content/SyncOperation;)Z

    move-result v33

    if-nez v33, :cond_10

    .line 2633
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->remove()V

    .line 2634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v33, v0

    # getter for: Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;
    invoke-static/range {v33 .. v33}, Lcom/android/server/content/SyncManager;->access$900(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    move-result-object v33

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/content/SyncOperation;->pendingOperation:Lcom/android/server/content/SyncStorageEngine$PendingOperation;

    move-object/from16 v35, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncStorageEngine;->deleteFromPending(Lcom/android/server/content/SyncStorageEngine$PendingOperation;)Z

    goto/16 :goto_1

    .line 2639
    :cond_10
    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/android/server/content/SyncOperation;->effectiveRunTime:J

    move-wide/from16 v36, v0

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/android/server/content/SyncOperation;->flexTime:J

    move-wide/from16 v38, v0

    sub-long v36, v36, v38

    cmp-long v33, v36, v20

    if-lez v33, :cond_12

    .line 2640
    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/android/server/content/SyncOperation;->effectiveRunTime:J

    move-wide/from16 v36, v0

    cmp-long v33, v18, v36

    if-lez v33, :cond_11

    .line 2641
    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/android/server/content/SyncOperation;->effectiveRunTime:J

    move-wide/from16 v18, v0

    .line 2643
    :cond_11
    if-eqz v15, :cond_b

    .line 2644
    const-string v33, "SyncManager"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "    Not running sync operation: Sync too far in future.effective: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/android/server/content/SyncOperation;->effectiveRunTime:J

    move-wide/from16 v36, v0

    invoke-virtual/range {v35 .. v37}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " flex: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/android/server/content/SyncOperation;->flexTime:J

    move-wide/from16 v36, v0

    invoke-virtual/range {v35 .. v37}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " now: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2651
    :cond_12
    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 2654
    .end local v8    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v24    # "op":Lcom/android/server/content/SyncOperation;
    .end local v27    # "packageName":Ljava/lang/String;
    :cond_13
    invoke-interface/range {v28 .. v28}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :cond_14
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_15

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/Integer;

    .line 2656
    .local v31, "user":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v33, v0

    # getter for: Lcom/android/server/content/SyncManager;->mUserManager:Landroid/os/UserManager;
    invoke-static/range {v33 .. v33}, Lcom/android/server/content/SyncManager;->access$3300(Lcom/android/server/content/SyncManager;)Landroid/os/UserManager;

    move-result-object v33

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Integer;->intValue()I

    move-result v35

    move-object/from16 v0, v33

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v33

    if-nez v33, :cond_14

    .line 2657
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v33, v0

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Integer;->intValue()I

    move-result v35

    move-object/from16 v0, v33

    move/from16 v1, v35

    # invokes: Lcom/android/server/content/SyncManager;->onUserRemoved(I)V
    invoke-static {v0, v1}, Lcom/android/server/content/SyncManager;->access$1000(Lcom/android/server/content/SyncManager;I)V

    goto :goto_2

    .line 2660
    .end local v31    # "user":Ljava/lang/Integer;
    :cond_15
    monitor-exit v34
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2667
    if-eqz v15, :cond_16

    const-string v33, "SyncManager"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "sort the candidate operations, size "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2668
    :cond_16
    invoke-static/range {v26 .. v26}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 2669
    if-eqz v15, :cond_17

    const-string v33, "SyncManager"

    const-string v34, "dispatch all ready sync operations"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2670
    :cond_17
    const/4 v13, 0x0

    .local v13, "i":I
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v4

    .local v4, "N":I
    :goto_3
    if-ge v13, v4, :cond_2

    .line 2671
    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/content/SyncOperation;

    .line 2672
    .local v9, "candidate":Lcom/android/server/content/SyncOperation;
    invoke-virtual {v9}, Lcom/android/server/content/SyncOperation;->isInitialization()Z

    move-result v10

    .line 2674
    .local v10, "candidateIsInitialization":Z
    const/16 v17, 0x0

    .line 2675
    .local v17, "numInit":I
    const/16 v22, 0x0

    .line 2676
    .local v22, "numRegular":I
    const/4 v11, 0x0

    .line 2677
    .local v11, "conflict":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    const/16 v16, 0x0

    .line 2678
    .local v16, "longRunning":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    const/16 v30, 0x0

    .line 2679
    .local v30, "toReschedule":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    const/16 v23, 0x0

    .line 2681
    .local v23, "oldestNonExpeditedRegular":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_18
    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_1d

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 2682
    .local v6, "activeSyncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    iget-object v5, v6, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    .line 2683
    .local v5, "activeOp":Lcom/android/server/content/SyncOperation;
    invoke-virtual {v5}, Lcom/android/server/content/SyncOperation;->isInitialization()Z

    move-result v33

    if-eqz v33, :cond_1a

    .line 2684
    add-int/lit8 v17, v17, 0x1

    .line 2695
    :cond_19
    :goto_5
    invoke-virtual {v5, v9}, Lcom/android/server/content/SyncOperation;->isConflict(Lcom/android/server/content/SyncOperation;)Z

    move-result v33

    if-eqz v33, :cond_1c

    .line 2696
    move-object v11, v6

    goto :goto_4

    .line 2686
    :cond_1a
    add-int/lit8 v22, v22, 0x1

    .line 2687
    invoke-virtual {v5}, Lcom/android/server/content/SyncOperation;->isExpedited()Z

    move-result v33

    if-nez v33, :cond_19

    .line 2688
    if-eqz v23, :cond_1b

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mStartTime:J

    move-wide/from16 v34, v0

    iget-wide v0, v6, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mStartTime:J

    move-wide/from16 v36, v0

    cmp-long v33, v34, v36

    if-lez v33, :cond_19

    .line 2691
    :cond_1b
    move-object/from16 v23, v6

    goto :goto_5

    .line 2699
    :cond_1c
    invoke-virtual {v5}, Lcom/android/server/content/SyncOperation;->isInitialization()Z

    move-result v33

    move/from16 v0, v33

    if-ne v10, v0, :cond_18

    iget-wide v0, v6, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mStartTime:J

    move-wide/from16 v34, v0

    # getter for: Lcom/android/server/content/SyncManager;->MAX_TIME_PER_SYNC:J
    invoke-static {}, Lcom/android/server/content/SyncManager;->access$3600()J

    move-result-wide v36

    add-long v34, v34, v36

    cmp-long v33, v34, v20

    if-gez v33, :cond_18

    .line 2701
    move-object/from16 v16, v6

    goto :goto_4

    .line 2707
    .end local v5    # "activeOp":Lcom/android/server/content/SyncOperation;
    .end local v6    # "activeSyncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    :cond_1d
    if-eqz v15, :cond_1e

    .line 2708
    const-string v33, "SyncManager"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "candidate "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    add-int/lit8 v35, v13, 0x1

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " of "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ": "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2709
    const-string v33, "SyncManager"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "  numActiveInit="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ", numActiveRegular="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2710
    const-string v33, "SyncManager"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "  longRunning: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2711
    const-string v33, "SyncManager"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "  conflict: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2712
    const-string v33, "SyncManager"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "  oldestNonExpeditedRegular: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2715
    :cond_1e
    if-eqz v10, :cond_23

    # getter for: Lcom/android/server/content/SyncManager;->MAX_SIMULTANEOUS_INITIALIZATION_SYNCS:I
    invoke-static {}, Lcom/android/server/content/SyncManager;->access$3700()I

    move-result v33

    move/from16 v0, v17

    move/from16 v1, v33

    if-ge v0, v1, :cond_22

    const/16 v29, 0x1

    .line 2719
    .local v29, "roomAvailable":Z
    :goto_6
    if-eqz v11, :cond_26

    .line 2720
    if-eqz v10, :cond_25

    iget-object v0, v11, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/server/content/SyncOperation;->isInitialization()Z

    move-result v33

    if-nez v33, :cond_25

    # getter for: Lcom/android/server/content/SyncManager;->MAX_SIMULTANEOUS_INITIALIZATION_SYNCS:I
    invoke-static {}, Lcom/android/server/content/SyncManager;->access$3700()I

    move-result v33

    move/from16 v0, v17

    move/from16 v1, v33

    if-ge v0, v1, :cond_25

    .line 2722
    move-object/from16 v30, v11

    .line 2723
    const-string v33, "SyncManager"

    const/16 v34, 0x2

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v33

    if-eqz v33, :cond_1f

    .line 2724
    const-string v33, "SyncManager"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "canceling and rescheduling sync since an initialization takes higher priority, "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2766
    :cond_1f
    :goto_7
    if-eqz v30, :cond_20

    .line 2767
    const/16 v33, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/server/content/SyncManager$SyncHandler;->runSyncFinishedOrCanceledH(Landroid/content/SyncResult;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    .line 2768
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v33, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Lcom/android/server/content/SyncManager;->scheduleSyncOperation(Lcom/android/server/content/SyncOperation;)V

    .line 2770
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v33, v0

    # getter for: Lcom/android/server/content/SyncManager;->mSyncQueue:Lcom/android/server/content/SyncQueue;
    invoke-static/range {v33 .. v33}, Lcom/android/server/content/SyncManager;->access$800(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncQueue;

    move-result-object v34

    monitor-enter v34

    .line 2771
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v33, v0

    # getter for: Lcom/android/server/content/SyncManager;->mSyncQueue:Lcom/android/server/content/SyncQueue;
    invoke-static/range {v33 .. v33}, Lcom/android/server/content/SyncManager;->access$800(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncQueue;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v9}, Lcom/android/server/content/SyncQueue;->remove(Lcom/android/server/content/SyncOperation;)V

    .line 2772
    monitor-exit v34
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2773
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/server/content/SyncManager$SyncHandler;->dispatchSyncOperation(Lcom/android/server/content/SyncOperation;)Z

    .line 2670
    :cond_21
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_3

    .line 2715
    .end local v29    # "roomAvailable":Z
    :cond_22
    const/16 v29, 0x0

    goto :goto_6

    :cond_23
    # getter for: Lcom/android/server/content/SyncManager;->MAX_SIMULTANEOUS_REGULAR_SYNCS:I
    invoke-static {}, Lcom/android/server/content/SyncManager;->access$3800()I

    move-result v33

    move/from16 v0, v22

    move/from16 v1, v33

    if-ge v0, v1, :cond_24

    const/16 v29, 0x1

    goto/16 :goto_6

    :cond_24
    const/16 v29, 0x0

    goto/16 :goto_6

    .line 2727
    .restart local v29    # "roomAvailable":Z
    :cond_25
    invoke-virtual {v9}, Lcom/android/server/content/SyncOperation;->isExpedited()Z

    move-result v33

    if-eqz v33, :cond_21

    iget-object v0, v11, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/server/content/SyncOperation;->isExpedited()Z

    move-result v33

    if-nez v33, :cond_21

    iget-object v0, v11, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/server/content/SyncOperation;->isInitialization()Z

    move-result v33

    move/from16 v0, v33

    if-ne v10, v0, :cond_21

    .line 2730
    move-object/from16 v30, v11

    .line 2731
    const-string v33, "SyncManager"

    const/16 v34, 0x2

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v33

    if-eqz v33, :cond_1f

    .line 2732
    const-string v33, "SyncManager"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "canceling and rescheduling sync since an expedited takes higher priority, "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 2738
    :cond_26
    if-nez v29, :cond_1f

    .line 2740
    invoke-virtual {v9}, Lcom/android/server/content/SyncOperation;->isExpedited()Z

    move-result v33

    if-eqz v33, :cond_27

    if-eqz v23, :cond_27

    if-nez v10, :cond_27

    .line 2745
    move-object/from16 v30, v23

    .line 2746
    const-string v33, "SyncManager"

    const/16 v34, 0x2

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v33

    if-eqz v33, :cond_1f

    .line 2747
    const-string v33, "SyncManager"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "canceling and rescheduling sync since an expedited is ready to run, "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 2750
    :cond_27
    if-eqz v16, :cond_21

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/server/content/SyncOperation;->isInitialization()Z

    move-result v33

    move/from16 v0, v33

    if-ne v10, v0, :cond_21

    .line 2755
    move-object/from16 v30, v16

    .line 2756
    const-string v33, "SyncManager"

    const/16 v34, 0x2

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v33

    if-eqz v33, :cond_1f

    .line 2757
    const-string v33, "SyncManager"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "canceling and rescheduling sync since it ran roo long, "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 2772
    :catchall_1
    move-exception v33

    :try_start_5
    monitor-exit v34
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v33
.end method

.method private runBoundToAdapter(Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/os/IBinder;)V
    .locals 8
    .param p1, "activeSyncContext"    # Lcom/android/server/content/SyncManager$ActiveSyncContext;
    .param p2, "syncAdapter"    # Landroid/os/IBinder;

    .prologue
    .line 2980
    iget-object v2, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    .line 2982
    .local v2, "syncOperation":Lcom/android/server/content/SyncOperation;
    const/4 v3, 0x1

    :try_start_0
    iput-boolean v3, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mIsLinkedToDeath:Z

    .line 2983
    const/4 v3, 0x0

    invoke-interface {p2, p1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 2985
    iget-object v3, v2, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-boolean v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_provider:Z

    if-eqz v3, :cond_1

    .line 2986
    invoke-static {p2}, Landroid/content/ISyncAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/ISyncAdapter;

    move-result-object v3

    iput-object v3, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    .line 2987
    iget-object v3, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    iget-object v4, v2, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v4, v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v5, v5, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v6, v2, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    invoke-interface {v3, p1, v4, v5, v6}, Landroid/content/ISyncAdapter;->startSync(Landroid/content/ISyncContext;Ljava/lang/String;Landroid/accounts/Account;Landroid/os/Bundle;)V

    .line 3006
    :cond_0
    :goto_0
    return-void

    .line 2990
    :cond_1
    iget-object v3, v2, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-boolean v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_service:Z

    if-eqz v3, :cond_0

    .line 2991
    invoke-static {p2}, Landroid/content/ISyncServiceAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/ISyncServiceAdapter;

    move-result-object v3

    iput-object v3, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncServiceAdapter:Landroid/content/ISyncServiceAdapter;

    .line 2993
    iget-object v3, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncServiceAdapter:Landroid/content/ISyncServiceAdapter;

    iget-object v4, v2, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    invoke-interface {v3, p1, v4}, Landroid/content/ISyncServiceAdapter;->startSync(Landroid/content/ISyncContext;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2996
    :catch_0
    move-exception v1

    .line 2997
    .local v1, "remoteExc":Landroid/os/RemoteException;
    const-string v3, "SyncManager"

    const-string v4, "maybeStartNextSync: caught a RemoteException, rescheduling"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2998
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->closeActiveSyncContext(Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    .line 2999
    iget-object v3, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # invokes: Lcom/android/server/content/SyncManager;->increaseBackoffSetting(Lcom/android/server/content/SyncOperation;)V
    invoke-static {v3, v2}, Lcom/android/server/content/SyncManager;->access$3500(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;)V

    .line 3000
    iget-object v3, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    new-instance v4, Lcom/android/server/content/SyncOperation;

    const-wide/16 v6, 0x0

    invoke-direct {v4, v2, v6, v7}, Lcom/android/server/content/SyncOperation;-><init>(Lcom/android/server/content/SyncOperation;J)V

    invoke-virtual {v3, v4}, Lcom/android/server/content/SyncManager;->scheduleSyncOperation(Lcom/android/server/content/SyncOperation;)V

    goto :goto_0

    .line 3002
    .end local v1    # "remoteExc":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 3003
    .local v0, "exc":Ljava/lang/RuntimeException;
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->closeActiveSyncContext(Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    .line 3004
    const-string v3, "SyncManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Caught RuntimeException while starting the sync "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private runSyncFinishedOrCanceledH(Landroid/content/SyncResult;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V
    .locals 30
    .param p1, "syncResult"    # Landroid/content/SyncResult;
    .param p2, "activeSyncContext"    # Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .prologue
    .line 3036
    const-string v3, "SyncManager"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v29

    .line 3038
    .local v29, "isLoggable":Z
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    .line 3039
    .local v6, "syncOperation":Lcom/android/server/content/SyncOperation;
    iget-object v2, v6, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 3041
    .local v2, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    move-object/from16 v0, p2

    iget-boolean v3, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mIsLinkedToDeath:Z

    if-eqz v3, :cond_0

    .line 3042
    iget-boolean v3, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_provider:Z

    if-eqz v3, :cond_3

    .line 3043
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    invoke-interface {v3}, Landroid/content/ISyncAdapter;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-interface {v3, v0, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 3048
    :goto_0
    const/4 v3, 0x0

    move-object/from16 v0, p2

    iput-boolean v3, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mIsLinkedToDeath:Z

    .line 3050
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/content/SyncManager$SyncHandler;->closeActiveSyncContext(Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    .line 3051
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mStartTime:J

    sub-long v10, v4, v12

    .line 3055
    .local v10, "elapsedTime":J
    if-eqz p1, :cond_5

    .line 3056
    if-eqz v29, :cond_1

    .line 3057
    const-string v3, "SyncManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "runSyncFinishedOrCanceled [finished]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", result "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3061
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncResult;->hasError()Z

    move-result v3

    if-nez v3, :cond_4

    .line 3062
    const-string v7, "success"

    .line 3064
    .local v7, "historyMessage":Ljava/lang/String;
    const/4 v9, 0x0

    .line 3065
    .local v9, "downstreamActivity":I
    const/4 v8, 0x0

    .line 3066
    .local v8, "upstreamActivity":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # invokes: Lcom/android/server/content/SyncManager;->clearBackoffSetting(Lcom/android/server/content/SyncOperation;)V
    invoke-static {v3, v6}, Lcom/android/server/content/SyncManager;->access$4200(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;)V

    .line 3079
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v0, p1

    iget-wide v4, v0, Landroid/content/SyncResult;->delayUntil:J

    # invokes: Lcom/android/server/content/SyncManager;->setDelayUntilTime(Lcom/android/server/content/SyncOperation;J)V
    invoke-static {v3, v6, v4, v5}, Lcom/android/server/content/SyncManager;->access$4300(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;J)V

    .line 3102
    :goto_2
    move-object/from16 v0, p2

    iget-wide v4, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mHistoryRowId:J

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v11}, Lcom/android/server/content/SyncManager$SyncHandler;->stopSyncEvent(JLcom/android/server/content/SyncOperation;Ljava/lang/String;IIJ)V

    .line 3105
    iget-boolean v3, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_provider:Z

    if-eqz v3, :cond_a

    .line 3106
    if-eqz p1, :cond_9

    move-object/from16 v0, p1

    iget-boolean v3, v0, Landroid/content/SyncResult;->tooManyDeletions:Z

    if-eqz v3, :cond_9

    .line 3107
    iget-object v14, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v15, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v3, Landroid/content/SyncStats;->numDeletes:J

    move-wide/from16 v16, v0

    iget v0, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    move/from16 v18, v0

    move-object/from16 v13, p0

    invoke-direct/range {v13 .. v18}, Lcom/android/server/content/SyncManager$SyncHandler;->installHandleTooManyDeletesNotification(Landroid/accounts/Account;Ljava/lang/String;JI)V

    .line 3115
    :goto_3
    if-eqz p1, :cond_2

    move-object/from16 v0, p1

    iget-boolean v3, v0, Landroid/content/SyncResult;->fullSyncRequested:Z

    if-eqz v3, :cond_2

    .line 3116
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    new-instance v13, Lcom/android/server/content/SyncOperation;

    iget-object v14, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget v15, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    iget v0, v6, Lcom/android/server/content/SyncOperation;->reason:I

    move/from16 v16, v0

    iget v0, v6, Lcom/android/server/content/SyncOperation;->syncSource:I

    move/from16 v17, v0

    iget-object v0, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Landroid/os/Bundle;

    invoke-direct/range {v19 .. v19}, Landroid/os/Bundle;-><init>()V

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    iget-wide v0, v6, Lcom/android/server/content/SyncOperation;->backoff:J

    move-wide/from16 v24, v0

    iget-wide v0, v6, Lcom/android/server/content/SyncOperation;->delayUntil:J

    move-wide/from16 v26, v0

    iget-boolean v0, v6, Lcom/android/server/content/SyncOperation;->allowParallelSyncs:Z

    move/from16 v28, v0

    invoke-direct/range {v13 .. v28}, Lcom/android/server/content/SyncOperation;-><init>(Landroid/accounts/Account;IIILjava/lang/String;Landroid/os/Bundle;JJJJZ)V

    invoke-virtual {v3, v13}, Lcom/android/server/content/SyncManager;->scheduleSyncOperation(Lcom/android/server/content/SyncOperation;)V

    .line 3135
    :cond_2
    :goto_4
    return-void

    .line 3045
    .end local v7    # "historyMessage":Ljava/lang/String;
    .end local v8    # "upstreamActivity":I
    .end local v9    # "downstreamActivity":I
    .end local v10    # "elapsedTime":J
    :cond_3
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncServiceAdapter:Landroid/content/ISyncServiceAdapter;

    invoke-interface {v3}, Landroid/content/ISyncServiceAdapter;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-interface {v3, v0, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    goto/16 :goto_0

    .line 3068
    .restart local v10    # "elapsedTime":J
    :cond_4
    const-string v3, "SyncManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed sync operation "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3070
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # invokes: Lcom/android/server/content/SyncManager;->increaseBackoffSetting(Lcom/android/server/content/SyncOperation;)V
    invoke-static {v3, v6}, Lcom/android/server/content/SyncManager;->access$3500(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;)V

    .line 3072
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v6}, Lcom/android/server/content/SyncManager;->maybeRescheduleSync(Landroid/content/SyncResult;Lcom/android/server/content/SyncOperation;)V

    .line 3073
    invoke-direct/range {p0 .. p1}, Lcom/android/server/content/SyncManager$SyncHandler;->syncResultToErrorNumber(Landroid/content/SyncResult;)I

    move-result v3

    invoke-static {v3}, Landroid/content/ContentResolver;->syncErrorToString(I)Ljava/lang/String;

    move-result-object v7

    .line 3076
    .restart local v7    # "historyMessage":Ljava/lang/String;
    const/4 v9, 0x0

    .line 3077
    .restart local v9    # "downstreamActivity":I
    const/4 v8, 0x0

    .restart local v8    # "upstreamActivity":I
    goto/16 :goto_1

    .line 3081
    .end local v7    # "historyMessage":Ljava/lang/String;
    .end local v8    # "upstreamActivity":I
    .end local v9    # "downstreamActivity":I
    :cond_5
    if-eqz v29, :cond_6

    .line 3082
    const-string v3, "SyncManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "runSyncFinishedOrCanceled [canceled]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3084
    :cond_6
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    if-eqz v3, :cond_8

    .line 3086
    :try_start_0
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/content/ISyncAdapter;->cancelSync(Landroid/content/ISyncContext;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3097
    :cond_7
    :goto_5
    const-string v7, "canceled"

    .line 3098
    .restart local v7    # "historyMessage":Ljava/lang/String;
    const/4 v9, 0x0

    .line 3099
    .restart local v9    # "downstreamActivity":I
    const/4 v8, 0x0

    .restart local v8    # "upstreamActivity":I
    goto/16 :goto_2

    .line 3090
    .end local v7    # "historyMessage":Ljava/lang/String;
    .end local v8    # "upstreamActivity":I
    .end local v9    # "downstreamActivity":I
    :cond_8
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncServiceAdapter:Landroid/content/ISyncServiceAdapter;

    if-eqz v3, :cond_7

    .line 3092
    :try_start_1
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncServiceAdapter:Landroid/content/ISyncServiceAdapter;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/content/ISyncServiceAdapter;->cancelSync(Landroid/content/ISyncContext;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    .line 3093
    :catch_0
    move-exception v3

    goto :goto_5

    .line 3111
    .restart local v7    # "historyMessage":Ljava/lang/String;
    .restart local v8    # "upstreamActivity":I
    .restart local v9    # "downstreamActivity":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mNotificationMgr:Landroid/app/NotificationManager;
    invoke-static {v3}, Lcom/android/server/content/SyncManager;->access$4400(Lcom/android/server/content/SyncManager;)Landroid/app/NotificationManager;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    invoke-virtual {v5}, Landroid/accounts/Account;->hashCode()I

    move-result v5

    iget-object v12, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v12

    xor-int/2addr v5, v12

    new-instance v12, Landroid/os/UserHandle;

    iget v13, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-direct {v12, v13}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v4, v5, v12}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    goto/16 :goto_3

    .line 3125
    :cond_a
    if-eqz p1, :cond_2

    move-object/from16 v0, p1

    iget-boolean v3, v0, Landroid/content/SyncResult;->fullSyncRequested:Z

    if-eqz v3, :cond_2

    .line 3126
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    new-instance v12, Lcom/android/server/content/SyncOperation;

    iget-object v13, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    iget v14, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    iget v15, v6, Lcom/android/server/content/SyncOperation;->reason:I

    iget v0, v6, Lcom/android/server/content/SyncOperation;->syncSource:I

    move/from16 v16, v0

    new-instance v17, Landroid/os/Bundle;

    invoke-direct/range {v17 .. v17}, Landroid/os/Bundle;-><init>()V

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    iget-wide v0, v6, Lcom/android/server/content/SyncOperation;->backoff:J

    move-wide/from16 v22, v0

    iget-wide v0, v6, Lcom/android/server/content/SyncOperation;->delayUntil:J

    move-wide/from16 v24, v0

    invoke-direct/range {v12 .. v25}, Lcom/android/server/content/SyncOperation;-><init>(Landroid/content/ComponentName;IIILandroid/os/Bundle;JJJJ)V

    invoke-virtual {v3, v12}, Lcom/android/server/content/SyncManager;->scheduleSyncOperation(Lcom/android/server/content/SyncOperation;)V

    goto/16 :goto_4

    .line 3087
    .end local v7    # "historyMessage":Ljava/lang/String;
    .end local v8    # "upstreamActivity":I
    .end local v9    # "downstreamActivity":I
    :catch_1
    move-exception v3

    goto :goto_5
.end method

.method private scheduleReadyPeriodicSyncs()J
    .locals 50

    .prologue
    .line 2398
    const-string v3, "SyncManager"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v28

    .line 2399
    .local v28, "isLoggable":Z
    if-eqz v28, :cond_0

    .line 2400
    const-string v3, "SyncManager"

    const-string v4, "scheduleReadyPeriodicSyncs"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2402
    :cond_0
    const-wide v22, 0x7fffffffffffffffL

    .line 2404
    .local v22, "earliestFuturePollTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v34

    .line 2405
    .local v34, "nowAbsolute":J
    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mSyncRandomOffsetMillis:I
    invoke-static {v3}, Lcom/android/server/content/SyncManager;->access$3100(Lcom/android/server/content/SyncManager;)I

    move-result v3

    int-to-long v6, v3

    sub-long v6, v34, v6

    cmp-long v3, v4, v6

    if-gez v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mSyncRandomOffsetMillis:I
    invoke-static {v3}, Lcom/android/server/content/SyncManager;->access$3100(Lcom/android/server/content/SyncManager;)I

    move-result v3

    int-to-long v4, v3

    sub-long v42, v34, v4

    .line 2408
    .local v42, "shiftedNowAbsolute":J
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;
    invoke-static {v3}, Lcom/android/server/content/SyncManager;->access$900(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/content/SyncStorageEngine;->getCopyOfAllAuthoritiesWithSyncStatus()Ljava/util/ArrayList;

    move-result-object v27

    .line 2410
    .local v27, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;Landroid/content/SyncStatusInfo;>;>;"
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .local v25, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/util/Pair;

    .line 2411
    .local v26, "info":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;Landroid/content/SyncStatusInfo;>;"
    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 2412
    .local v19, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/content/SyncStatusInfo;

    .line 2414
    .local v39, "status":Landroid/content/SyncStatusInfo;
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2415
    const-string v3, "SyncManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got an empty provider string. Skipping: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v5, v5, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2405
    .end local v19    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v25    # "i$":Ljava/util/Iterator;
    .end local v26    # "info":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;Landroid/content/SyncStatusInfo;>;"
    .end local v27    # "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;Landroid/content/SyncStatusInfo;>;>;"
    .end local v39    # "status":Landroid/content/SyncStatusInfo;
    .end local v42    # "shiftedNowAbsolute":J
    :cond_2
    const-wide/16 v42, 0x0

    goto :goto_0

    .line 2420
    .restart local v19    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .restart local v25    # "i$":Ljava/util/Iterator;
    .restart local v26    # "info":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;Landroid/content/SyncStatusInfo;>;"
    .restart local v27    # "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;Landroid/content/SyncStatusInfo;>;>;"
    .restart local v39    # "status":Landroid/content/SyncStatusInfo;
    .restart local v42    # "shiftedNowAbsolute":J
    :cond_3
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/content/SyncManager$SyncHandler;->isDispatchable(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2424
    const/16 v24, 0x0

    .local v24, "i":I
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "N":I
    :goto_2
    move/from16 v0, v24

    if-ge v0, v2, :cond_1

    .line 2425
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Landroid/content/PeriodicSync;

    .line 2426
    .local v44, "sync":Landroid/content/PeriodicSync;
    move-object/from16 v0, v44

    iget-object v9, v0, Landroid/content/PeriodicSync;->extras:Landroid/os/Bundle;

    .line 2427
    .local v9, "extras":Landroid/os/Bundle;
    move-object/from16 v0, v44

    iget-wide v4, v0, Landroid/content/PeriodicSync;->period:J

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    .line 2428
    .local v29, "periodInMillis":Ljava/lang/Long;
    move-object/from16 v0, v44

    iget-wide v4, v0, Landroid/content/PeriodicSync;->flexTime:J

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    .line 2430
    .local v21, "flexInMillis":Ljava/lang/Long;
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gtz v3, :cond_5

    .line 2424
    :cond_4
    :goto_3
    add-int/lit8 v24, v24, 0x1

    goto :goto_2

    .line 2434
    :cond_5
    move-object/from16 v0, v39

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/SyncStatusInfo;->getPeriodicSyncTime(I)J

    move-result-wide v30

    .line 2435
    .local v30, "lastPollTimeAbsolute":J
    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mSyncRandomOffsetMillis:I
    invoke-static {v3}, Lcom/android/server/content/SyncManager;->access$3100(Lcom/android/server/content/SyncManager;)I

    move-result v3

    int-to-long v6, v3

    sub-long v6, v30, v6

    cmp-long v3, v4, v6

    if-gez v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mSyncRandomOffsetMillis:I
    invoke-static {v3}, Lcom/android/server/content/SyncManager;->access$3100(Lcom/android/server/content/SyncManager;)I

    move-result v3

    int-to-long v4, v3

    sub-long v40, v30, v4

    .line 2438
    .local v40, "shiftedLastPollTimeAbsolute":J
    :goto_4
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    rem-long v6, v42, v6

    sub-long v36, v4, v6

    .line 2440
    .local v36, "remainingMillis":J
    sub-long v48, v34, v30

    .line 2445
    .local v48, "timeSinceLastRunMillis":J
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v3, v36, v4

    if-gtz v3, :cond_a

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    cmp-long v3, v48, v4

    if-lez v3, :cond_a

    const/16 v38, 0x1

    .line 2447
    .local v38, "runEarly":Z
    :goto_5
    if-eqz v28, :cond_6

    .line 2448
    const-string v3, "SyncManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sync: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " period: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " flex: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " remaining: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v36

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " time_since_last: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v48

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " last poll absol: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v30

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " last poll shifed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v40

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " shifted now: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v42

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " run_early: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v38

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2471
    :cond_6
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v3, v36, v4

    if-eqz v3, :cond_7

    cmp-long v3, v30, v34

    if-gtz v3, :cond_7

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v3, v48, v4

    if-gez v3, :cond_7

    if-eqz v38, :cond_8

    .line 2476
    :cond_7
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    move-object/from16 v46, v0

    .line 2477
    .local v46, "target":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;
    invoke-static {v3}, Lcom/android/server/content/SyncManager;->access$900(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    move-result-object v3

    move-object/from16 v0, v46

    invoke-virtual {v3, v0}, Lcom/android/server/content/SyncStorageEngine;->getBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/util/Pair;

    move-result-object v20

    .line 2479
    .local v20, "backoff":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;
    invoke-static {v3}, Lcom/android/server/content/SyncManager;->access$900(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    move-result-object v4

    move-object/from16 v0, v19

    iget v5, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/PeriodicSync;

    move-wide/from16 v0, v34

    invoke-virtual {v4, v5, v3, v0, v1}, Lcom/android/server/content/SyncStorageEngine;->setPeriodicSyncTime(ILandroid/content/PeriodicSync;J)V

    .line 2482
    move-object/from16 v0, v46

    iget-boolean v3, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_provider:Z

    if-eqz v3, :cond_c

    .line 2484
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v3, v3, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    move-object/from16 v0, v46

    iget-object v5, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v5, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/content/SyncAdapterType;->newKey(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncAdapterType;

    move-result-object v4

    move-object/from16 v0, v46

    iget v5, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v3, v4, v5}, Landroid/content/SyncAdaptersCache;->getServiceInfo(Ljava/lang/Object;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object v45

    .line 2488
    .local v45, "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    if-eqz v45, :cond_4

    .line 2491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v47, v0

    new-instance v3, Lcom/android/server/content/SyncOperation;

    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    move-object/from16 v0, v46

    iget v5, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    const/4 v6, -0x4

    const/4 v7, 0x4

    move-object/from16 v0, v46

    iget-object v8, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    if-eqz v20, :cond_b

    move-object/from16 v0, v20

    iget-object v14, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;
    invoke-static/range {v16 .. v16}, Lcom/android/server/content/SyncManager;->access$900(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncStorageEngine;->getDelayUntilTime(Lcom/android/server/content/SyncStorageEngine$EndPoint;)J

    move-result-wide v16

    move-object/from16 v0, v45

    iget-object v0, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/content/SyncAdapterType;

    invoke-virtual/range {v18 .. v18}, Landroid/content/SyncAdapterType;->allowParallelSyncs()Z

    move-result v18

    invoke-direct/range {v3 .. v18}, Lcom/android/server/content/SyncOperation;-><init>(Landroid/accounts/Account;IIILjava/lang/String;Landroid/os/Bundle;JJJJZ)V

    move-object/from16 v0, v47

    invoke-virtual {v0, v3}, Lcom/android/server/content/SyncManager;->scheduleSyncOperation(Lcom/android/server/content/SyncOperation;)V

    .line 2514
    .end local v20    # "backoff":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v45    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .end local v46    # "target":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    :cond_8
    :goto_7
    if-eqz v38, :cond_e

    .line 2516
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long v4, v4, v34

    add-long v32, v4, v36

    .line 2520
    .local v32, "nextPollTimeAbsolute":J
    :goto_8
    cmp-long v3, v32, v22

    if-gez v3, :cond_4

    .line 2521
    move-wide/from16 v22, v32

    goto/16 :goto_3

    .line 2435
    .end local v32    # "nextPollTimeAbsolute":J
    .end local v36    # "remainingMillis":J
    .end local v38    # "runEarly":Z
    .end local v40    # "shiftedLastPollTimeAbsolute":J
    .end local v48    # "timeSinceLastRunMillis":J
    :cond_9
    const-wide/16 v40, 0x0

    goto/16 :goto_4

    .line 2445
    .restart local v36    # "remainingMillis":J
    .restart local v40    # "shiftedLastPollTimeAbsolute":J
    .restart local v48    # "timeSinceLastRunMillis":J
    :cond_a
    const/16 v38, 0x0

    goto/16 :goto_5

    .line 2491
    .restart local v20    # "backoff":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v38    # "runEarly":Z
    .restart local v45    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .restart local v46    # "target":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    :cond_b
    const-wide/16 v14, 0x0

    goto :goto_6

    .line 2500
    .end local v45    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    :cond_c
    move-object/from16 v0, v46

    iget-boolean v3, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_service:Z

    if-eqz v3, :cond_8

    .line 2501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v18, v0

    new-instance v4, Lcom/android/server/content/SyncOperation;

    move-object/from16 v0, v46

    iget-object v5, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    move-object/from16 v0, v46

    iget v6, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    const/4 v7, -0x4

    const/4 v8, 0x4

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    if-eqz v20, :cond_d

    move-object/from16 v0, v20

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    :goto_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;
    invoke-static {v3}, Lcom/android/server/content/SyncManager;->access$900(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    move-result-object v3

    move-object/from16 v0, v46

    invoke-virtual {v3, v0}, Lcom/android/server/content/SyncStorageEngine;->getDelayUntilTime(Lcom/android/server/content/SyncStorageEngine$EndPoint;)J

    move-result-wide v16

    invoke-direct/range {v4 .. v17}, Lcom/android/server/content/SyncOperation;-><init>(Landroid/content/ComponentName;IIILandroid/os/Bundle;JJJJ)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/android/server/content/SyncManager;->scheduleSyncOperation(Lcom/android/server/content/SyncOperation;)V

    goto :goto_7

    :cond_d
    const-wide/16 v14, 0x0

    goto :goto_9

    .line 2518
    .end local v20    # "backoff":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v46    # "target":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    :cond_e
    add-long v32, v34, v36

    .restart local v32    # "nextPollTimeAbsolute":J
    goto :goto_8

    .line 2526
    .end local v2    # "N":I
    .end local v9    # "extras":Landroid/os/Bundle;
    .end local v19    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v21    # "flexInMillis":Ljava/lang/Long;
    .end local v24    # "i":I
    .end local v26    # "info":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;Landroid/content/SyncStatusInfo;>;"
    .end local v29    # "periodInMillis":Ljava/lang/Long;
    .end local v30    # "lastPollTimeAbsolute":J
    .end local v32    # "nextPollTimeAbsolute":J
    .end local v36    # "remainingMillis":J
    .end local v38    # "runEarly":Z
    .end local v39    # "status":Landroid/content/SyncStatusInfo;
    .end local v40    # "shiftedLastPollTimeAbsolute":J
    .end local v44    # "sync":Landroid/content/PeriodicSync;
    .end local v48    # "timeSinceLastRunMillis":J
    :cond_f
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v3, v22, v4

    if-nez v3, :cond_10

    .line 2527
    const-wide v4, 0x7fffffffffffffffL

    .line 2531
    :goto_a
    return-wide v4

    :cond_10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    cmp-long v3, v22, v34

    if-gez v3, :cond_11

    const-wide/16 v4, 0x0

    :goto_b
    add-long/2addr v4, v6

    goto :goto_a

    :cond_11
    sub-long v4, v22, v34

    goto :goto_b
.end method

.method private syncResultToErrorNumber(Landroid/content/SyncResult;)I
    .locals 4
    .param p1, "syncResult"    # Landroid/content/SyncResult;

    .prologue
    const-wide/16 v2, 0x0

    .line 3161
    iget-boolean v0, p1, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    if-eqz v0, :cond_0

    .line 3162
    const/4 v0, 0x1

    .line 3176
    :goto_0
    return v0

    .line 3163
    :cond_0
    iget-object v0, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numAuthExceptions:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 3164
    const/4 v0, 0x2

    goto :goto_0

    .line 3165
    :cond_1
    iget-object v0, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numIoExceptions:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 3166
    const/4 v0, 0x3

    goto :goto_0

    .line 3167
    :cond_2
    iget-object v0, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numParseExceptions:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 3168
    const/4 v0, 0x4

    goto :goto_0

    .line 3169
    :cond_3
    iget-object v0, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    .line 3170
    const/4 v0, 0x5

    goto :goto_0

    .line 3171
    :cond_4
    iget-boolean v0, p1, Landroid/content/SyncResult;->tooManyDeletions:Z

    if-eqz v0, :cond_5

    .line 3172
    const/4 v0, 0x6

    goto :goto_0

    .line 3173
    :cond_5
    iget-boolean v0, p1, Landroid/content/SyncResult;->tooManyRetries:Z

    if-eqz v0, :cond_6

    .line 3174
    const/4 v0, 0x7

    goto :goto_0

    .line 3175
    :cond_6
    iget-boolean v0, p1, Landroid/content/SyncResult;->databaseError:Z

    if-eqz v0, :cond_7

    .line 3176
    const/16 v0, 0x8

    goto :goto_0

    .line 3177
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "we are not in an error state, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private tryEnqueueMessageUntilReadyToRun(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2163
    monitor-enter p0

    .line 2164
    :try_start_0
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mBootCompleted:Z
    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$400(Lcom/android/server/content/SyncManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mProvisioned:Z
    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$1300(Lcom/android/server/content/SyncManager;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2166
    :cond_0
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mUnreadyQueue:Ljava/util/List;

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2167
    const/4 v0, 0x1

    monitor-exit p0

    .line 2169
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    monitor-exit p0

    goto :goto_0

    .line 2171
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 20
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2202
    invoke-direct/range {p0 .. p1}, Lcom/android/server/content/SyncManager$SyncHandler;->tryEnqueueMessageUntilReadyToRun(Landroid/os/Message;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 2353
    :goto_0
    return-void

    .line 2206
    :cond_0
    const-wide v4, 0x7fffffffffffffffL

    .line 2207
    .local v4, "earliestFuturePollTime":J
    const-wide v12, 0x7fffffffffffffffL

    .line 2211
    .local v12, "nextPendingSyncTime":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v16, v0

    # invokes: Lcom/android/server/content/SyncManager;->readDataConnectionState()Z
    invoke-static/range {v16 .. v16}, Lcom/android/server/content/SyncManager;->access$700(Lcom/android/server/content/SyncManager;)Z

    move-result v16

    # setter for: Lcom/android/server/content/SyncManager;->mDataConnectionIsConnected:Z
    invoke-static/range {v15 .. v16}, Lcom/android/server/content/SyncManager;->access$602(Lcom/android/server/content/SyncManager;Z)Z

    .line 2212
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mSyncManagerWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v15}, Lcom/android/server/content/SyncManager;->access$2600(Lcom/android/server/content/SyncManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object v15

    invoke-virtual {v15}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2217
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncManager$SyncHandler;->scheduleReadyPeriodicSyncs()J

    move-result-wide v4

    .line 2218
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->what:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v15, :pswitch_data_0

    .line 2349
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v12, v13}, Lcom/android/server/content/SyncManager$SyncHandler;->manageSyncAlarmLocked(JJ)V

    .line 2350
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/content/SyncManager$SyncHandler;->mSyncTimeTracker:Lcom/android/server/content/SyncManager$SyncTimeTracker;

    invoke-virtual {v15}, Lcom/android/server/content/SyncManager$SyncTimeTracker;->update()V

    .line 2351
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mSyncManagerWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v15}, Lcom/android/server/content/SyncManager;->access$2600(Lcom/android/server/content/SyncManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object v15

    invoke-virtual {v15}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 2220
    :pswitch_0
    :try_start_1
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 2221
    .local v3, "endpoint":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->peekData()Landroid/os/Bundle;

    move-result-object v7

    .line 2222
    .local v7, "extras":Landroid/os/Bundle;
    const-string v15, "SyncManager"

    const/16 v16, 0x3

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 2223
    const-string v15, "SyncManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "handleSyncHandlerMessage: MESSAGE_CANCEL: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " bundle: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2226
    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v7}, Lcom/android/server/content/SyncManager$SyncHandler;->cancelActiveSyncH(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;)V

    .line 2227
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncManager$SyncHandler;->maybeStartNextSyncH()J

    move-result-wide v12

    .line 2228
    goto :goto_1

    .line 2231
    .end local v3    # "endpoint":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .end local v7    # "extras":Landroid/os/Bundle;
    :pswitch_1
    const-string v15, "SyncManager"

    const/16 v16, 0x2

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 2232
    const-string v15, "SyncManager"

    const-string v16, "handleSyncHandlerMessage: MESSAGE_SYNC_FINISHED"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2234
    :cond_3
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Lcom/android/server/content/SyncManager$SyncHandlerMessagePayload;

    .line 2235
    .local v11, "payload":Lcom/android/server/content/SyncManager$SyncHandlerMessagePayload;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v0, v11, Lcom/android/server/content/SyncManager$SyncHandlerMessagePayload;->activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

    move-object/from16 v16, v0

    # invokes: Lcom/android/server/content/SyncManager;->isSyncStillActiveH(Lcom/android/server/content/SyncManager$ActiveSyncContext;)Z
    invoke-static/range {v15 .. v16}, Lcom/android/server/content/SyncManager;->access$2700(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;)Z

    move-result v15

    if-nez v15, :cond_4

    .line 2236
    const-string v15, "SyncManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "handleSyncHandlerMessage: dropping since the sync is no longer active: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v11, Lcom/android/server/content/SyncManager$SyncHandlerMessagePayload;->activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 2349
    .end local v11    # "payload":Lcom/android/server/content/SyncManager$SyncHandlerMessagePayload;
    :catchall_0
    move-exception v15

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v12, v13}, Lcom/android/server/content/SyncManager$SyncHandler;->manageSyncAlarmLocked(JJ)V

    .line 2350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->mSyncTimeTracker:Lcom/android/server/content/SyncManager$SyncTimeTracker;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/content/SyncManager$SyncTimeTracker;->update()V

    .line 2351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/content/SyncManager;->mSyncManagerWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static/range {v16 .. v16}, Lcom/android/server/content/SyncManager;->access$2600(Lcom/android/server/content/SyncManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v15

    .line 2241
    .restart local v11    # "payload":Lcom/android/server/content/SyncManager$SyncHandlerMessagePayload;
    :cond_4
    :try_start_2
    iget-object v15, v11, Lcom/android/server/content/SyncManager$SyncHandlerMessagePayload;->syncResult:Landroid/content/SyncResult;

    iget-object v0, v11, Lcom/android/server/content/SyncManager$SyncHandlerMessagePayload;->activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/android/server/content/SyncManager$SyncHandler;->runSyncFinishedOrCanceledH(Landroid/content/SyncResult;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    .line 2245
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncManager$SyncHandler;->maybeStartNextSyncH()J

    move-result-wide v12

    .line 2246
    goto/16 :goto_1

    .line 2249
    .end local v11    # "payload":Lcom/android/server/content/SyncManager$SyncHandlerMessagePayload;
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Lcom/android/server/content/SyncManager$ServiceConnectionData;

    .line 2250
    .local v10, "msgData":Lcom/android/server/content/SyncManager$ServiceConnectionData;
    const-string v15, "SyncManager"

    const/16 v16, 0x2

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 2251
    const-string v15, "SyncManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "handleSyncHandlerMessage: MESSAGE_SERVICE_CONNECTED: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v10, Lcom/android/server/content/SyncManager$ServiceConnectionData;->activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2255
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v0, v10, Lcom/android/server/content/SyncManager$ServiceConnectionData;->activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

    move-object/from16 v16, v0

    # invokes: Lcom/android/server/content/SyncManager;->isSyncStillActiveH(Lcom/android/server/content/SyncManager$ActiveSyncContext;)Z
    invoke-static/range {v15 .. v16}, Lcom/android/server/content/SyncManager;->access$2700(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 2256
    iget-object v15, v10, Lcom/android/server/content/SyncManager$ServiceConnectionData;->activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

    iget-object v0, v10, Lcom/android/server/content/SyncManager$ServiceConnectionData;->adapter:Landroid/os/IBinder;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/android/server/content/SyncManager$SyncHandler;->runBoundToAdapter(Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/os/IBinder;)V

    goto/16 :goto_1

    .line 2264
    .end local v10    # "msgData":Lcom/android/server/content/SyncManager$ServiceConnectionData;
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Lcom/android/server/content/SyncManager$ServiceConnectionData;

    iget-object v2, v15, Lcom/android/server/content/SyncManager$ServiceConnectionData;->activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 2266
    .local v2, "currentSyncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    const-string v15, "SyncManager"

    const/16 v16, 0x2

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 2267
    const-string v15, "SyncManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "handleSyncHandlerMessage: MESSAGE_SERVICE_DISCONNECTED: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2271
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # invokes: Lcom/android/server/content/SyncManager;->isSyncStillActiveH(Lcom/android/server/content/SyncManager$ActiveSyncContext;)Z
    invoke-static {v15, v2}, Lcom/android/server/content/SyncManager;->access$2700(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v15

    if-eqz v15, :cond_1

    .line 2275
    :try_start_3
    iget-object v15, v2, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    if-eqz v15, :cond_8

    .line 2276
    iget-object v15, v2, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    invoke-interface {v15, v2}, Landroid/content/ISyncAdapter;->cancelSync(Landroid/content/ISyncContext;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2287
    :cond_7
    :goto_2
    :try_start_4
    new-instance v14, Landroid/content/SyncResult;

    invoke-direct {v14}, Landroid/content/SyncResult;-><init>()V

    .line 2288
    .local v14, "syncResult":Landroid/content/SyncResult;
    iget-object v15, v14, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v15, Landroid/content/SyncStats;->numIoExceptions:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x1

    add-long v16, v16, v18

    move-wide/from16 v0, v16

    iput-wide v0, v15, Landroid/content/SyncStats;->numIoExceptions:J

    .line 2289
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v2}, Lcom/android/server/content/SyncManager$SyncHandler;->runSyncFinishedOrCanceledH(Landroid/content/SyncResult;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    .line 2292
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncManager$SyncHandler;->maybeStartNextSyncH()J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-wide v12

    .line 2293
    goto/16 :goto_1

    .line 2277
    .end local v14    # "syncResult":Landroid/content/SyncResult;
    :cond_8
    :try_start_5
    iget-object v15, v2, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncServiceAdapter:Landroid/content/ISyncServiceAdapter;

    if-eqz v15, :cond_7

    .line 2278
    iget-object v15, v2, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncServiceAdapter:Landroid/content/ISyncServiceAdapter;

    invoke-interface {v15, v2}, Landroid/content/ISyncServiceAdapter;->cancelSync(Landroid/content/ISyncContext;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 2281
    :catch_0
    move-exception v15

    goto :goto_2

    .line 2298
    .end local v2    # "currentSyncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    :pswitch_4
    :try_start_6
    const-string v15, "SyncManager"

    const/16 v16, 0x2

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    .line 2299
    .local v8, "isLoggable":Z
    if-eqz v8, :cond_9

    .line 2300
    const-string v15, "SyncManager"

    const-string v16, "handleSyncHandlerMessage: MESSAGE_SYNC_ALARM"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2302
    :cond_9
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/content/SyncManager$SyncHandler;->mAlarmScheduleTime:Ljava/lang/Long;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2304
    :try_start_7
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncManager$SyncHandler;->maybeStartNextSyncH()J
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result-wide v12

    .line 2306
    :try_start_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mHandleAlarmWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v15}, Lcom/android/server/content/SyncManager;->access$1500(Lcom/android/server/content/SyncManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object v15

    invoke-virtual {v15}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_1

    :catchall_1
    move-exception v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/content/SyncManager;->mHandleAlarmWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static/range {v16 .. v16}, Lcom/android/server/content/SyncManager;->access$1500(Lcom/android/server/content/SyncManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v15

    .line 2312
    .end local v8    # "isLoggable":Z
    :pswitch_5
    const-string v15, "SyncManager"

    const/16 v16, 0x2

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 2313
    const-string v15, "SyncManager"

    const-string v16, "handleSyncHandlerMessage: MESSAGE_CHECK_ALARMS"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2315
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncManager$SyncHandler;->maybeStartNextSyncH()J

    move-result-wide v12

    .line 2316
    goto/16 :goto_1

    .line 2318
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 2319
    .local v6, "expiredContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    const-string v15, "SyncManager"

    const/16 v16, 0x3

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 2320
    const-string v15, "SyncManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "handleSyncHandlerMessage: MESSAGE_SYNC_EXPIRED: cancelling "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2323
    :cond_b
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v6}, Lcom/android/server/content/SyncManager$SyncHandler;->runSyncFinishedOrCanceledH(Landroid/content/SyncResult;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    .line 2326
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncManager$SyncHandler;->maybeStartNextSyncH()J

    move-result-wide v12

    .line 2327
    goto/16 :goto_1

    .line 2329
    .end local v6    # "expiredContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    :pswitch_7
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 2330
    .local v9, "monitoredSyncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    const-string v15, "SyncManager"

    const/16 v16, 0x3

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v15

    if-eqz v15, :cond_c

    .line 2331
    const-string v15, "SyncManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "handleSyncHandlerMessage: MESSAGE_MONITOR_SYNC: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v9, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2335
    :cond_c
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/server/content/SyncManager$SyncHandler;->isSyncNotUsingNetworkH(Lcom/android/server/content/SyncManager$ActiveSyncContext;)Z

    move-result v15

    if-eqz v15, :cond_d

    .line 2336
    const-string v15, "SyncManager"

    const-string v16, "Detected sync making no progress for %s. cancelling."

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v9, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2339
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v9}, Lcom/android/server/content/SyncManager$SyncHandler;->runSyncFinishedOrCanceledH(Landroid/content/SyncResult;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    goto/16 :goto_1

    .line 2343
    :cond_d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # invokes: Lcom/android/server/content/SyncManager;->postMonitorSyncProgressMessage(Lcom/android/server/content/SyncManager$ActiveSyncContext;)V
    invoke-static {v15, v9}, Lcom/android/server/content/SyncManager;->access$2800(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_1

    .line 2218
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public insertStartSyncEvent(Lcom/android/server/content/SyncOperation;)J
    .locals 4
    .param p1, "syncOperation"    # Lcom/android/server/content/SyncOperation;

    .prologue
    .line 3324
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3325
    .local v0, "now":J
    const/16 v2, 0xaa0

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/android/server/content/SyncOperation;->toEventLog(I)[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3327
    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;
    invoke-static {v2}, Lcom/android/server/content/SyncManager;->access$900(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    move-result-object v2

    invoke-virtual {v2, p1, v0, v1}, Lcom/android/server/content/SyncStorageEngine;->insertStartSyncEvent(Lcom/android/server/content/SyncOperation;J)J

    move-result-wide v2

    return-wide v2
.end method

.method onBootCompleted()V
    .locals 2

    .prologue
    .line 2111
    const-string v0, "SyncManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2112
    const-string v0, "SyncManager"

    const-string v1, "Boot completed, clearing boot queue."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2114
    :cond_0
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # invokes: Lcom/android/server/content/SyncManager;->doDatabaseCleanup()V
    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$2500(Lcom/android/server/content/SyncManager;)V

    .line 2115
    monitor-enter p0

    .line 2117
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/content/SyncManager$SyncHandler;->maybeEmptyUnreadyQueueLocked()V

    .line 2118
    monitor-exit p0

    .line 2119
    return-void

    .line 2118
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method onDeviceProvisioned()V
    .locals 3

    .prologue
    .line 2122
    const-string v0, "SyncManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2123
    const-string v0, "SyncManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mProvisioned="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mProvisioned:Z
    invoke-static {v2}, Lcom/android/server/content/SyncManager;->access$1300(Lcom/android/server/content/SyncManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2125
    :cond_0
    monitor-enter p0

    .line 2126
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/content/SyncManager$SyncHandler;->maybeEmptyUnreadyQueueLocked()V

    .line 2127
    monitor-exit p0

    .line 2128
    return-void

    .line 2127
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stopSyncEvent(JLcom/android/server/content/SyncOperation;Ljava/lang/String;IIJ)V
    .locals 11
    .param p1, "rowId"    # J
    .param p3, "syncOperation"    # Lcom/android/server/content/SyncOperation;
    .param p4, "resultMessage"    # Ljava/lang/String;
    .param p5, "upstreamActivity"    # I
    .param p6, "downstreamActivity"    # I
    .param p7, "elapsedTime"    # J

    .prologue
    .line 3332
    const/16 v1, 0xaa0

    const/4 v2, 0x1

    invoke-virtual {p3, v2}, Lcom/android/server/content/SyncOperation;->toEventLog(I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3334
    iget-object v1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;
    invoke-static {v1}, Lcom/android/server/content/SyncManager;->access$900(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    move-result-object v1

    move/from16 v0, p6

    int-to-long v7, v0

    move/from16 v0, p5

    int-to-long v9, v0

    move-wide v2, p1

    move-wide/from16 v4, p7

    move-object v6, p4

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/content/SyncStorageEngine;->stopSyncEvent(JJLjava/lang/String;JJ)V

    .line 3336
    return-void
.end method
