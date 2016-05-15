.class public Lcom/android/server/am/OnePlusAbnormalAppManager;
.super Ljava/lang/Object;
.source "OnePlusAbnormalAppManager.java"


# static fields
.field private static final ABNORMAL_START_COUNT_DEFA_VALUE:I = 0x32

.field private static final CHECK_START_TIME_INTERVAL_DEFA_VALUE:J = 0x493e0L

.field private static final COLLECT_START_COUNT_DEFA_VALUE:I = 0x1e

.field public static DEBUG_DETAIL:Z

.field public static MAX_LIST_COUNT:I

.field public static TAG:Ljava/lang/String;

.field private static mOnePlusAbnormalAppManager:Lcom/android/server/am/OnePlusAbnormalAppManager;


# instance fields
.field final ACTION_OPPO_GUARD_ELF_COUNT_RESTRICT_LIST:Ljava/lang/String;

.field final ACTION_OPPO_GUARD_ELF_MONITOR:Ljava/lang/String;

.field final ACTION_OPPO_GUARD_ELF_SET_RESTRICT:Ljava/lang/String;

.field DEBUG:Z

.field final GUARD_ELF_FEATURE_NAME:Ljava/lang/String;

.field mAms:Lcom/android/server/am/ActivityManagerService;

.field mCountRestrictedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mLastCheckTime:J

.field mPersistRestrictAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mScreenOffRestrictAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mScreenStatus:Z

.field mStartAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/am/OnePlusAppStartInfo;",
            ">;"
        }
    .end annotation
.end field

.field mStartInfoWhiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mSwitch:Z

.field mUploadInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    const-string v0, "OnePlusAbnormalAppManager"

    sput-object v0, Lcom/android/server/am/OnePlusAbnormalAppManager;->TAG:Ljava/lang/String;

    .line 46
    const/16 v0, 0x64

    sput v0, Lcom/android/server/am/OnePlusAbnormalAppManager;->MAX_LIST_COUNT:I

    .line 53
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/OnePlusAbnormalAppManager;->mOnePlusAbnormalAppManager:Lcom/android/server/am/OnePlusAbnormalAppManager;

    .line 61
    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusAbnormalAppManager;->DEBUG_DETAIL:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/OnePlusAbnormalAppManager;->mLastCheckTime:J

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusAbnormalAppManager;->DEBUG:Z

    .line 64
    iput-boolean v2, p0, Lcom/android/server/am/OnePlusAbnormalAppManager;->mSwitch:Z

    .line 68
    iput-boolean v2, p0, Lcom/android/server/am/OnePlusAbnormalAppManager;->mScreenStatus:Z

    .line 70
    const-string v0, "android.intent.action.OPPO_GUARD_ELF_MONITOR"

    iput-object v0, p0, Lcom/android/server/am/OnePlusAbnormalAppManager;->ACTION_OPPO_GUARD_ELF_MONITOR:Ljava/lang/String;

    .line 72
    const-string v0, "android.intent.action.OPPO_GUARD_ELF_SET_RESTRICT"

    iput-object v0, p0, Lcom/android/server/am/OnePlusAbnormalAppManager;->ACTION_OPPO_GUARD_ELF_SET_RESTRICT:Ljava/lang/String;

    .line 74
    const-string v0, "android.intent.action.OPPO_GUARD_ELF_COUNT_RESTRICT_LIST"

    iput-object v0, p0, Lcom/android/server/am/OnePlusAbnormalAppManager;->ACTION_OPPO_GUARD_ELF_COUNT_RESTRICT_LIST:Ljava/lang/String;

    .line 76
    const-string v0, "oppo.guard.elf.support"

    iput-object v0, p0, Lcom/android/server/am/OnePlusAbnormalAppManager;->GUARD_ELF_FEATURE_NAME:Ljava/lang/String;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusAbnormalAppManager;->mScreenOffRestrictAppList:Ljava/util/List;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusAbnormalAppManager;->mPersistRestrictAppList:Ljava/util/List;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusAbnormalAppManager;->mStartInfoWhiteList:Ljava/util/List;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusAbnormalAppManager;->mUploadInfoList:Ljava/util/ArrayList;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusAbnormalAppManager;->mCountRestrictedList:Ljava/util/ArrayList;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusAbnormalAppManager;->mStartAppList:Ljava/util/List;

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/OnePlusAbnormalAppManager;->mAms:Lcom/android/server/am/ActivityManagerService;

    .line 102
    return-void
.end method

.method public static final getInstance()Lcom/android/server/am/OnePlusAbnormalAppManager;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcom/android/server/am/OnePlusAbnormalAppManager;->mOnePlusAbnormalAppManager:Lcom/android/server/am/OnePlusAbnormalAppManager;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Lcom/android/server/am/OnePlusAbnormalAppManager;

    invoke-direct {v0}, Lcom/android/server/am/OnePlusAbnormalAppManager;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusAbnormalAppManager;->mOnePlusAbnormalAppManager:Lcom/android/server/am/OnePlusAbnormalAppManager;

    .line 108
    :cond_0
    sget-object v0, Lcom/android/server/am/OnePlusAbnormalAppManager;->mOnePlusAbnormalAppManager:Lcom/android/server/am/OnePlusAbnormalAppManager;

    return-object v0
.end method

.method private handleCountRestrictedList()V
    .locals 5

    .prologue
    .line 437
    const/4 v0, 0x0

    .line 438
    .local v0, "count":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 439
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v3, Lcom/android/server/am/OnePlusAbnormalAppManager;->mOnePlusAbnormalAppManager:Lcom/android/server/am/OnePlusAbnormalAppManager;

    monitor-enter v3

    .line 440
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/OnePlusAbnormalAppManager;->mCountRestrictedList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 441
    iget-object v2, p0, Lcom/android/server/am/OnePlusAbnormalAppManager;->mCountRestrictedList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 442
    iget-object v2, p0, Lcom/android/server/am/OnePlusAbnormalAppManager;->mCountRestrictedList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 443
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 445
    sget-object v2, Lcom/android/server/am/OnePlusAbnormalAppManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send ACTION_OPPO_GUARD_ELF_COUNT_RESTRICT_LIST! count == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    return-void

    .line 443
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method


# virtual methods
.method public cleanStartAppList()V
    .locals 2

    .prologue
    .line 118
    sget-boolean v0, Lcom/android/server/am/OnePlusAbnormalAppManager;->DEBUG_DETAIL:Z

    if-eqz v0, :cond_0

    .line 119
    sget-object v0, Lcom/android/server/am/OnePlusAbnormalAppManager;->TAG:Ljava/lang/String;

    const-string v1, "cleanAbnormalAppList"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusAbnormalAppManager;->mStartAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 121
    return-void
.end method

.method public cleanUploadInfoList()V
    .locals 2

    .prologue
    .line 124
    sget-boolean v0, Lcom/android/server/am/OnePlusAbnormalAppManager;->DEBUG_DETAIL:Z

    if-eqz v0, :cond_0

    .line 125
    sget-object v0, Lcom/android/server/am/OnePlusAbnormalAppManager;->TAG:Ljava/lang/String;

    const-string v1, "cleanUploadInfoList"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusAbnormalAppManager;->mUploadInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 127
    return-void
.end method

.method public collectStartAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "startType"    # Ljava/lang/String;
    .param p4, "isThird"    # Z

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusAbnormalAppManager;->getAppInfoInList(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppStartInfo;

    move-result-object v0

    .line 178
    .local v0, "appStartInfo":Lcom/android/server/am/OnePlusAppStartInfo;
    if-nez v0, :cond_0

    .line 179
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/am/OnePlusAppStartInfo;->builder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/server/am/OnePlusAppStartInfo;

    move-result-object v1

    .line 180
    .local v1, "info":Lcom/android/server/am/OnePlusAppStartInfo;
    iget-object v2, p0, Lcom/android/server/am/OnePlusAbnormalAppManager;->mStartAppList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    .end local v1    # "info":Lcom/android/server/am/OnePlusAppStartInfo;
    :goto_0
    return-void

    .line 182
    :cond_0
    invoke-virtual {v0, p3}, Lcom/android/server/am/OnePlusAppStartInfo;->increaseStartCount(Ljava/lang/String;)V

    .line 183
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/OnePlusAppStartInfo;->setCurStartTime(J)V

    goto :goto_0
.end method

.method public getAppInfoInList(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppStartInfo;
    .locals 3
    .param p1, "processName"    # Ljava/lang/String;

    .prologue
    .line 188
    iget-object v2, p0, Lcom/android/server/am/OnePlusAbnormalAppManager;->mStartAppList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/OnePlusAppStartInfo;

    .line 189
    .local v0, "appinfo":Lcom/android/server/am/OnePlusAppStartInfo;
    invoke-virtual {v0}, Lcom/android/server/am/OnePlusAppStartInfo;->getProcessName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 193
    .end local v0    # "appinfo":Lcom/android/server/am/OnePlusAppStartInfo;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleAbnormalApp(Lcom/android/server/am/OnePlusAppStartInfo;)Z
    .locals 6
    .param p1, "appinfo"    # Lcom/android/server/am/OnePlusAppStartInfo;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 318
    invoke-virtual {p1}, Lcom/android/server/am/OnePlusAppStartInfo;->getPkgName()Ljava/lang/String;

    move-result-object v0

    .line 319
    .local v0, "pkgName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/server/am/OnePlusAppStartInfo;->getIsThird()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 320
    iget-object v4, p0, Lcom/android/server/am/OnePlusAbnormalAppManager;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 321
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_0

    .line 323
    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 324
    sget-object v3, Lcom/android/server/am/OnePlusAbnormalAppManager;->TAG:Ljava/lang/String;

    const-string v4, "don\'t handle! return for top activity"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :goto_0
    return v2

    .line 330
    .restart local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_0
    if-eqz v0, :cond_1

    const-string v4, "com.android.cts"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 331
    sget-object v3, Lcom/android/server/am/OnePlusAbnormalAppManager;->TAG:Ljava/lang/String;

    const-string v4, "CTS TEST! don\'t handle!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 335
    :cond_1
    sget-object v2, Lcom/android/server/am/OnePlusAbnormalAppManager;->TAG:Ljava/lang/String;

    const-string v4, "handleAbnormalApp setPackageRestricted true!"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    invoke-virtual {p0, v0, v3}, Lcom/android/server/am/OnePlusAbnormalAppManager;->setPackageRestricted(Ljava/lang/String;Z)Z

    .line 338
    iget-object v2, p0, Lcom/android/server/am/OnePlusAbnormalAppManager;->mStartInfoWhiteList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 339
    invoke-virtual {p0, v0}, Lcom/android/server/am/OnePlusAbnormalAppManager;->killAbnormalApp(Ljava/lang/String;)V

    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2
    :goto_1
    move v2, v3

    .line 345
    goto :goto_0

    .line 342
    :cond_3
    sget-object v2, Lcom/android/server/am/OnePlusAbnormalAppManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleAbnormalApp! pkg isn\'t third app    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public handleStartAppInfo(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .locals 3
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "startType"    # Ljava/lang/String;

    .prologue
    .line 198
    iget-boolean v2, p0, Lcom/android/server/am/OnePlusAbnormalAppManager;->mSwitch:Z

    if-nez v2, :cond_0

    .line 212
    :goto_0
    return-void

    .line 202
    :cond_0
    const/4 v0, 0x0

    .line 203
    .local v0, "isThird":Z
    const-string v1, ""

    .line 204
    .local v1, "pkgName":Ljava/lang/String;
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_1

    .line 205
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 206
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_1

    .line 207
    const/4 v0, 0x1

    .line 211
    :cond_1
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p0, v2, v1, p2, v0}, Lcom/android/server/am/OnePlusAbnormalAppManager;->handleStartAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public handleStartAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "startType"    # Ljava/lang/String;
    .param p4, "isThird"    # Z

    .prologue
    .line 215
    sget-boolean v2, Lcom/android/server/am/OnePlusAbnormalAppManager;->DEBUG_DETAIL:Z

    if-eqz v2, :cond_0

    .line 216
    sget-object v2, Lcom/android/server/am/OnePlusAbnormalAppManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleStartAppInfo processName == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  startType == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 219
    .local v0, "time":J
    iget-object v2, p0, Lcom/android/server/am/OnePlusAbnormalAppManager;->mStartAppList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 220
    iput-wide v0, p0, Lcom/android/server/am/OnePlusAbnormalAppManager;->mLastCheckTime:J

    .line 221
    sget-object v2, Lcom/android/server/am/OnePlusAbnormalAppManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Now Begin Monitor App StartInfo\'s Time == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/OnePlusAbnormalAppManager;->collectStartAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 228
    iget-wide v2, p0, Lcom/android/server/am/OnePlusAbnormalAppManager;->mLastCheckTime:J

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/32 v4, 0x493e0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 229
    invoke-virtual {p0}, Lcom/android/server/am/OnePlusAbnormalAppManager;->notifyAbnormalInfo()V

    .line 232
    :cond_2
    sget-boolean v2, Lcom/android/server/am/OnePlusAbnormalAppManager;->DEBUG_DETAIL:Z

    if-eqz v2, :cond_3

    .line 233
    sget-object v2, Lcom/android/server/am/OnePlusAbnormalAppManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleStartAppInfo cost time ==  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_3
    return-void
.end method

.method public initStatus(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 461
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 462
    .local v1, "pms":Landroid/content/pm/PackageManager;
    const-string v2, "oppo.guard.elf.support"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 463
    .local v0, "hasGuardElfFeature":Z
    sget-object v2, Lcom/android/server/am/OnePlusAbnormalAppManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initStatus hasGuardElfFeature is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    if-eqz v0, :cond_0

    .line 466
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/am/OnePlusAbnormalAppManager;->mSwitch:Z

    .line 468
    :cond_0
    return-void
.end method

.method public isPackageRestricted(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 238
    sget-object v1, Lcom/android/server/am/OnePlusAbnormalAppManager;->mOnePlusAbnormalAppManager:Lcom/android/server/am/OnePlusAbnormalAppManager;

    monitor-enter v1

    .line 239
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusAbnormalAppManager;->mPersistRestrictAppList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    const/4 v0, 0x1

    monitor-exit v1

    .line 243
    :goto_0
    return v0

    .line 242
    :cond_0
    monitor-exit v1

    .line 243
    const/4 v0, 0x0

    goto :goto_0

    .line 242
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public killAbnormalApp(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 349
    sget-object v0, Lcom/android/server/am/OnePlusAbnormalAppManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "killAbnormalApp  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget-object v0, p0, Lcom/android/server/am/OnePlusAbnormalAppManager;->mAms:Lcom/android/server/am/ActivityManagerService;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/android/server/am/OnePlusAbnormalAppManager;->mAms:Lcom/android/server/am/ActivityManagerService;

    const/4 v1, -0x2

    invoke-virtual {v0, p1, v1}, Lcom/android/server/am/ActivityManagerService;->forceStopPackage(Ljava/lang/String;I)V

    .line 354
    :cond_0
    return-void
.end method

.method public notifyAbnormalInfo()V
    .locals 6

    .prologue
    .line 130
    const/4 v1, 0x0

    .line 131
    .local v1, "hasAbnormalApp":Z
    iget-object v4, p0, Lcom/android/server/am/OnePlusAbnormalAppManager;->mStartAppList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/OnePlusAppStartInfo;

    .line 132
    .local v0, "appinfo":Lcom/android/server/am/OnePlusAppStartInfo;
    invoke-virtual {v0}, Lcom/android/server/am/OnePlusAppStartInfo;->getStartCount()I

    move-result v4

    const/16 v5, 0x32

    if-le v4, v5, :cond_2

    .line 133
    iget-boolean v4, p0, Lcom/android/server/am/OnePlusAbnormalAppManager;->DEBUG:Z

    if-eqz v4, :cond_1

    .line 134
    sget-object v4, Lcom/android/server/am/OnePlusAbnormalAppManager;->TAG:Ljava/lang/String;

    const-string v5, "#################  AbnormalInfo app  ##########################"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const-string v4, "abnormal appinfo"

    invoke-virtual {v0, v4}, Lcom/android/server/am/OnePlusAppStartInfo;->dumpInfo(Ljava/lang/String;)V

    .line 136
    sget-object v4, Lcom/android/server/am/OnePlusAbnormalAppManager;->TAG:Ljava/lang/String;

    const-string v5, "###############################################################"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_1
    const/4 v3, 0x0

    .line 139
    .local v3, "isHandled":Z
    invoke-virtual {p0, v0}, Lcom/android/server/am/OnePlusAbnormalAppManager;->handleAbnormalApp(Lcom/android/server/am/OnePlusAppStartInfo;)Z

    move-result v3

    .line 141
    if-eqz v3, :cond_0

    .line 142
    iget-object v4, p0, Lcom/android/server/am/OnePlusAbnormalAppManager;->mUploadInfoList:Ljava/util/ArrayList;

    const-string v5, "abnormal appinfo"

    invoke-virtual {v0, v5}, Lcom/android/server/am/OnePlusAppStartInfo;->infoToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    const/4 v1, 0x1

    goto :goto_0

    .line 145
    .end local v3    # "isHandled":Z
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/am/OnePlusAppStartInfo;->getStartCount()I

    move-result v4

    const/16 v5, 0x1e

    if-le v4, v5, :cond_4

    .line 146
    sget-boolean v4, Lcom/android/server/am/OnePlusAbnormalAppManager;->DEBUG_DETAIL:Z

    if-eqz v4, :cond_3

    .line 147
    sget-object v4, Lcom/android/server/am/OnePlusAbnormalAppManager;->TAG:Ljava/lang/String;

    const-string v5, "---------------------  warning app  -----------------------------"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const-string v4, "warning appinfo"

    invoke-virtual {v0, v4}, Lcom/android/server/am/OnePlusAppStartInfo;->dumpInfo(Ljava/lang/String;)V

    .line 149
    sget-object v4, Lcom/android/server/am/OnePlusAbnormalAppManager;->TAG:Ljava/lang/String;

    const-string v5, "-----------------------------------------------------------------"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_3
    iget-object v4, p0, Lcom/android/server/am/OnePlusAbnormalAppManager;->mUploadInfoList:Ljava/util/ArrayList;

    const-string v5, "warning appinfo"

    invoke-virtual {v0, v5}, Lcom/android/server/am/OnePlusAppStartInfo;->infoToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 153
    :cond_4
    sget-boolean v4, Lcom/android/server/am/OnePlusAbnormalAppManager;->DEBUG_DETAIL:Z

    if-eqz v4, :cond_0

    .line 154
    sget-object v4, Lcom/android/server/am/OnePlusAbnormalAppManager;->TAG:Ljava/lang/String;

    const-string v5, "-----------------  normalInfo app  -----------------------------"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const-string v4, "normal appinfo"

    invoke-virtual {v0, v4}, Lcom/android/server/am/OnePlusAppStartInfo;->dumpInfo(Ljava/lang/String;)V

    .line 156
    sget-object v4, Lcom/android/server/am/OnePlusAbnormalAppManager;->TAG:Ljava/lang/String;

    const-string v5, "-----------------------------------------------------------------"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 164
    .end local v0    # "appinfo":Lcom/android/server/am/OnePlusAppStartInfo;
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/am/OnePlusAbnormalAppManager;->cleanStartAppList()V

    .line 165
    invoke-virtual {p0}, Lcom/android/server/am/OnePlusAbnormalAppManager;->cleanUploadInfoList()V

    .line 173
    return-void
.end method

.method public sendAbnormalNotify()V
    .locals 4

    .prologue
    .line 357
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.OPPO_GUARD_ELF_MONITOR"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 358
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "type"

    const-string v3, "startinfo"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 359
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/am/OnePlusAbnormalAppManager;->mUploadInfoList:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 360
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 362
    iget-object v2, p0, Lcom/android/server/am/OnePlusAbnormalAppManager;->mAms:Lcom/android/server/am/ActivityManagerService;

    if-eqz v2, :cond_0

    .line 363
    iget-object v2, p0, Lcom/android/server/am/OnePlusAbnormalAppManager;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 365
    :cond_0
    return-void
.end method

.method public sendUnRestrictNotify(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 368
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPPO_GUARD_ELF_SET_RESTRICT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 369
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "type"

    const-string v2, "unrestrict"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 370
    const-string v1, "pkgName"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 372
    iget-object v1, p0, Lcom/android/server/am/OnePlusAbnormalAppManager;->mAms:Lcom/android/server/am/ActivityManagerService;

    if-eqz v1, :cond_0

    .line 373
    iget-object v1, p0, Lcom/android/server/am/OnePlusAbnormalAppManager;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 375
    :cond_0
    return-void
.end method

.method public setAms(Lcom/android/server/am/ActivityManagerService;)V
    .locals 1
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 456
    iput-object p1, p0, Lcom/android/server/am/OnePlusAbnormalAppManager;->mAms:Lcom/android/server/am/ActivityManagerService;

    .line 457
    iget-object v0, p0, Lcom/android/server/am/OnePlusAbnormalAppManager;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/server/am/OnePlusAbnormalAppManager;->initStatus(Landroid/content/Context;)V

    .line 458
    return-void
.end method

.method public setLastCheckTime(J)V
    .locals 1
    .param p1, "lastCheckTime"    # J

    .prologue
    .line 114
    iput-wide p1, p0, Lcom/android/server/am/OnePlusAbnormalAppManager;->mLastCheckTime:J

    .line 115
    return-void
.end method

.method public setPackageRestricted(Ljava/lang/String;Z)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "isRestrict"    # Z

    .prologue
    .line 247
    const/4 v0, 0x0

    .line 248
    .local v0, "isChange":Z
    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusAbnormalAppManager;->isPackageRestricted(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 249
    if-nez p2, :cond_1

    .line 250
    iget-boolean v1, p0, Lcom/android/server/am/OnePlusAbnormalAppManager;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 251
    sget-object v1, Lcom/android/server/am/OnePlusAbnormalAppManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPackageRestricted remove packageName  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_0
    sget-object v2, Lcom/android/server/am/OnePlusAbnormalAppManager;->mOnePlusAbnormalAppManager:Lcom/android/server/am/OnePlusAbnormalAppManager;

    monitor-enter v2

    .line 253
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusAbnormalAppManager;->mPersistRestrictAppList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 254
    const/4 v0, 0x1

    .line 255
    monitor-exit v2

    .line 268
    :cond_1
    :goto_0
    return v0

    .line 255
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 258
    :cond_2
    if-eqz p2, :cond_1

    .line 259
    iget-boolean v1, p0, Lcom/android/server/am/OnePlusAbnormalAppManager;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 260
    sget-object v1, Lcom/android/server/am/OnePlusAbnormalAppManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPackageRestricted add packageName  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_3
    sget-object v2, Lcom/android/server/am/OnePlusAbnormalAppManager;->mOnePlusAbnormalAppManager:Lcom/android/server/am/OnePlusAbnormalAppManager;

    monitor-enter v2

    .line 262
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/OnePlusAbnormalAppManager;->mPersistRestrictAppList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    const/4 v0, 0x1

    .line 264
    monitor-exit v2

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method

.method public setPackageUnRestricted(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 272
    iget-boolean v1, p0, Lcom/android/server/am/OnePlusAbnormalAppManager;->mSwitch:Z

    if-nez v1, :cond_0

    .line 282
    :goto_0
    return-void

    .line 276
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/OnePlusAbnormalAppManager;->setPackageRestricted(Ljava/lang/String;Z)Z

    move-result v0

    .line 282
    .local v0, "isChange":Z
    goto :goto_0
.end method

.method public updateScreenOffRestrictedList(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 378
    .local p1, "screenoffRestrictList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-boolean v2, Lcom/android/server/am/OnePlusAbnormalAppManager;->DEBUG_DETAIL:Z

    if-eqz v2, :cond_0

    .line 379
    sget-object v2, Lcom/android/server/am/OnePlusAbnormalAppManager;->TAG:Ljava/lang/String;

    const-string v3, "updateScreenOffRestrictedList!!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 383
    .local v1, "str":Ljava/lang/String;
    sget-object v2, Lcom/android/server/am/OnePlusAbnormalAppManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateScreenOffRestrictedList str == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 385
    .end local v1    # "str":Ljava/lang/String;
    :cond_1
    sget-object v3, Lcom/android/server/am/OnePlusAbnormalAppManager;->mOnePlusAbnormalAppManager:Lcom/android/server/am/OnePlusAbnormalAppManager;

    monitor-enter v3

    .line 386
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/OnePlusAbnormalAppManager;->mScreenOffRestrictAppList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 387
    iget-object v2, p0, Lcom/android/server/am/OnePlusAbnormalAppManager;->mScreenOffRestrictAppList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 388
    monitor-exit v3

    .line 389
    return-void

    .line 388
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public updateScreenStatus(Z)V
    .locals 2
    .param p1, "status"    # Z

    .prologue
    .line 423
    sget-boolean v0, Lcom/android/server/am/OnePlusAbnormalAppManager;->DEBUG_DETAIL:Z

    if-eqz v0, :cond_0

    .line 424
    sget-object v0, Lcom/android/server/am/OnePlusAbnormalAppManager;->TAG:Ljava/lang/String;

    const-string v1, "updateScreenStatus!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :cond_0
    sget-object v1, Lcom/android/server/am/OnePlusAbnormalAppManager;->mOnePlusAbnormalAppManager:Lcom/android/server/am/OnePlusAbnormalAppManager;

    monitor-enter v1

    .line 427
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/am/OnePlusAbnormalAppManager;->mScreenStatus:Z

    .line 428
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 430
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusAbnormalAppManager;->mScreenStatus:Z

    if-nez v0, :cond_1

    .line 431
    invoke-direct {p0}, Lcom/android/server/am/OnePlusAbnormalAppManager;->handleCountRestrictedList()V

    .line 433
    :cond_1
    return-void

    .line 428
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public updateStartInfoWhiteList(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 392
    .local p1, "startInfoWhiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-boolean v3, Lcom/android/server/am/OnePlusAbnormalAppManager;->DEBUG_DETAIL:Z

    if-eqz v3, :cond_0

    .line 393
    sget-object v3, Lcom/android/server/am/OnePlusAbnormalAppManager;->TAG:Ljava/lang/String;

    const-string v4, "updateStartInfoWhiteList!!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 397
    .local v2, "str":Ljava/lang/String;
    sget-object v3, Lcom/android/server/am/OnePlusAbnormalAppManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateStartInfoWhiteList str == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 401
    .end local v2    # "str":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 403
    .local v0, "cancelList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v4, Lcom/android/server/am/OnePlusAbnormalAppManager;->mOnePlusAbnormalAppManager:Lcom/android/server/am/OnePlusAbnormalAppManager;

    monitor-enter v4

    .line 404
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/OnePlusAbnormalAppManager;->mStartInfoWhiteList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 405
    .restart local v2    # "str":Ljava/lang/String;
    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 406
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 411
    .end local v2    # "str":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 409
    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/android/server/am/OnePlusAbnormalAppManager;->mStartInfoWhiteList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 410
    iget-object v3, p0, Lcom/android/server/am/OnePlusAbnormalAppManager;->mStartInfoWhiteList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 411
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 414
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 415
    .restart local v2    # "str":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/am/OnePlusAbnormalAppManager;->mAms:Lcom/android/server/am/ActivityManagerService;

    if-eqz v3, :cond_4

    .line 416
    sget-object v3, Lcom/android/server/am/OnePlusAbnormalAppManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "forceStopPackage "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  cancel from startinfo whitelist!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iget-object v3, p0, Lcom/android/server/am/OnePlusAbnormalAppManager;->mAms:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, -0x2

    invoke-virtual {v3, v2, v4}, Lcom/android/server/am/ActivityManagerService;->forceStopPackage(Ljava/lang/String;I)V

    goto :goto_2

    .line 420
    .end local v2    # "str":Ljava/lang/String;
    :cond_5
    return-void
.end method

.method public validNewProc(Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 285
    const/4 v0, 0x1

    .line 286
    .local v0, "result":Z
    iget-boolean v2, p0, Lcom/android/server/am/OnePlusAbnormalAppManager;->mSwitch:Z

    if-nez v2, :cond_0

    move v1, v0

    .line 314
    .end local v0    # "result":Z
    .local v1, "result":I
    :goto_0
    return v1

    .line 290
    .end local v1    # "result":I
    .restart local v0    # "result":Z
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusAbnormalAppManager;->isPackageRestricted(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 291
    sget-object v3, Lcom/android/server/am/OnePlusAbnormalAppManager;->mOnePlusAbnormalAppManager:Lcom/android/server/am/OnePlusAbnormalAppManager;

    monitor-enter v3

    .line 292
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/OnePlusAbnormalAppManager;->mStartInfoWhiteList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 299
    const/4 v0, 0x0

    .line 301
    :cond_1
    monitor-exit v3

    :goto_1
    move v1, v0

    .line 314
    .restart local v1    # "result":I
    goto :goto_0

    .line 301
    .end local v1    # "result":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 303
    :cond_2
    sget-object v3, Lcom/android/server/am/OnePlusAbnormalAppManager;->mOnePlusAbnormalAppManager:Lcom/android/server/am/OnePlusAbnormalAppManager;

    monitor-enter v3

    .line 304
    :try_start_1
    iget-boolean v2, p0, Lcom/android/server/am/OnePlusAbnormalAppManager;->mScreenStatus:Z

    const/4 v4, 0x1

    if-ne v2, v4, :cond_4

    iget-object v2, p0, Lcom/android/server/am/OnePlusAbnormalAppManager;->mScreenOffRestrictAppList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 305
    iget-object v2, p0, Lcom/android/server/am/OnePlusAbnormalAppManager;->mCountRestrictedList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 306
    sget-object v2, Lcom/android/server/am/OnePlusAbnormalAppManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCountRestrictedList add packageName == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object v2, p0, Lcom/android/server/am/OnePlusAbnormalAppManager;->mCountRestrictedList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    :cond_3
    const/4 v0, 0x0

    .line 311
    :cond_4
    monitor-exit v3

    goto :goto_1

    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2
.end method
