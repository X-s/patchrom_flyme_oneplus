.class public Lcom/android/server/am/OnePlusAppStartupManager;
.super Ljava/lang/Object;
.source "OnePlusAppStartupManager.java"


# static fields
.field public static DEBUG_DETAIL:Z

.field public static DynamicDebug:Z

.field public static TAG:Ljava/lang/String;

.field private static isSuppoerted:Z

.field private static mOnePlusAppStartupManager:Lcom/android/server/am/OnePlusAppStartupManager;


# instance fields
.field mActionBlackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mActionLock:Ljava/lang/Object;

.field mActivityBlackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mActivityLock:Ljava/lang/Object;

.field mAms:Lcom/android/server/am/ActivityManagerService;

.field mBlackguardList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mBlackguardLock:Ljava/lang/Object;

.field mProviderBlacklist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mProviderLock:Ljava/lang/Object;

.field mReceiverBlackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiverLock:Ljava/lang/Object;

.field private final mServiceLock:Ljava/lang/Object;

.field mSeviceCpnBlacklist:Ljava/util/List;
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


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    const-string v0, "OnePlusAppStartupManager"

    sput-object v0, Lcom/android/server/am/OnePlusAppStartupManager;->TAG:Ljava/lang/String;

    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/OnePlusAppStartupManager;->mOnePlusAppStartupManager:Lcom/android/server/am/OnePlusAppStartupManager;

    .line 40
    sput-boolean v1, Lcom/android/server/am/OnePlusAppStartupManager;->isSuppoerted:Z

    .line 41
    const-string v0, "persist.sys.assert.panic"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusAppStartupManager;->DEBUG_DETAIL:Z

    .line 45
    sput-boolean v1, Lcom/android/server/am/OnePlusAppStartupManager;->DynamicDebug:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string v0, "persist.sys.startupmanager"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusAppStartupManager;->mSwitch:Z

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppStartupManager;->mSeviceCpnBlacklist:Ljava/util/List;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppStartupManager;->mReceiverBlackList:Ljava/util/List;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppStartupManager;->mProviderBlacklist:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppStartupManager;->mActivityBlackList:Ljava/util/List;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppStartupManager;->mActionBlackList:Ljava/util/List;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppStartupManager;->mBlackguardList:Ljava/util/List;

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppStartupManager;->mServiceLock:Ljava/lang/Object;

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppStartupManager;->mReceiverLock:Ljava/lang/Object;

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppStartupManager;->mProviderLock:Ljava/lang/Object;

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppStartupManager;->mActivityLock:Ljava/lang/Object;

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppStartupManager;->mActionLock:Ljava/lang/Object;

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppStartupManager;->mBlackguardLock:Ljava/lang/Object;

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppStartupManager;->mAms:Lcom/android/server/am/ActivityManagerService;

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string v0, "persist.sys.startupmanager"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusAppStartupManager;->mSwitch:Z

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppStartupManager;->mSeviceCpnBlacklist:Ljava/util/List;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppStartupManager;->mReceiverBlackList:Ljava/util/List;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppStartupManager;->mProviderBlacklist:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppStartupManager;->mActivityBlackList:Ljava/util/List;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppStartupManager;->mActionBlackList:Ljava/util/List;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppStartupManager;->mBlackguardList:Ljava/util/List;

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppStartupManager;->mServiceLock:Ljava/lang/Object;

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppStartupManager;->mReceiverLock:Ljava/lang/Object;

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppStartupManager;->mProviderLock:Ljava/lang/Object;

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppStartupManager;->mActivityLock:Ljava/lang/Object;

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppStartupManager;->mActionLock:Ljava/lang/Object;

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppStartupManager;->mBlackguardLock:Ljava/lang/Object;

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppStartupManager;->mAms:Lcom/android/server/am/ActivityManagerService;

    .line 74
    return-void
.end method

.method public static final getInstance()Lcom/android/server/am/OnePlusAppStartupManager;
    .locals 2

    .prologue
    .line 77
    sget-object v0, Lcom/android/server/am/OnePlusAppStartupManager;->mOnePlusAppStartupManager:Lcom/android/server/am/OnePlusAppStartupManager;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lcom/android/server/am/OnePlusAppStartupManager;

    const-string v1, "OppoAppStartupManager"

    invoke-direct {v0, v1}, Lcom/android/server/am/OnePlusAppStartupManager;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/am/OnePlusAppStartupManager;->mOnePlusAppStartupManager:Lcom/android/server/am/OnePlusAppStartupManager;

    .line 80
    :cond_0
    sget-object v0, Lcom/android/server/am/OnePlusAppStartupManager;->mOnePlusAppStartupManager:Lcom/android/server/am/OnePlusAppStartupManager;

    return-object v0
.end method

.method private updateActionBlackList()V
    .locals 3

    .prologue
    .line 393
    iget-object v1, p0, Lcom/android/server/am/OnePlusAppStartupManager;->mActionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 394
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppStartupManager;->mActionBlackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 395
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppStartupManager;->mActionBlackList:Ljava/util/List;

    invoke-static {}, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->getInstance()Lcom/android/server/am/OnePlusAppStartupManagerUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->getActionBlackList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 397
    monitor-exit v1

    .line 398
    return-void

    .line 397
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateActivityBlackList()V
    .locals 3

    .prologue
    .line 385
    iget-object v1, p0, Lcom/android/server/am/OnePlusAppStartupManager;->mActivityLock:Ljava/lang/Object;

    monitor-enter v1

    .line 386
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppStartupManager;->mActivityBlackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 387
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppStartupManager;->mActivityBlackList:Ljava/util/List;

    invoke-static {}, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->getInstance()Lcom/android/server/am/OnePlusAppStartupManagerUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->getActivityBlackList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 389
    monitor-exit v1

    .line 390
    return-void

    .line 389
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateBlackguardList()V
    .locals 3

    .prologue
    .line 401
    iget-object v1, p0, Lcom/android/server/am/OnePlusAppStartupManager;->mBlackguardLock:Ljava/lang/Object;

    monitor-enter v1

    .line 402
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppStartupManager;->mBlackguardList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 403
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppStartupManager;->mBlackguardList:Ljava/util/List;

    invoke-static {}, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->getInstance()Lcom/android/server/am/OnePlusAppStartupManagerUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->getBlackguardList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 404
    monitor-exit v1

    .line 405
    return-void

    .line 404
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateProviderBlackList()V
    .locals 3

    .prologue
    .line 377
    iget-object v1, p0, Lcom/android/server/am/OnePlusAppStartupManager;->mProviderLock:Ljava/lang/Object;

    monitor-enter v1

    .line 378
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppStartupManager;->mProviderBlacklist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 379
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppStartupManager;->mProviderBlacklist:Ljava/util/List;

    invoke-static {}, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->getInstance()Lcom/android/server/am/OnePlusAppStartupManagerUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->getProviderBlackList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 381
    monitor-exit v1

    .line 382
    return-void

    .line 381
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateReceiverBlackList()V
    .locals 3

    .prologue
    .line 369
    iget-object v1, p0, Lcom/android/server/am/OnePlusAppStartupManager;->mReceiverLock:Ljava/lang/Object;

    monitor-enter v1

    .line 370
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppStartupManager;->mReceiverBlackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 371
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppStartupManager;->mReceiverBlackList:Ljava/util/List;

    invoke-static {}, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->getInstance()Lcom/android/server/am/OnePlusAppStartupManagerUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->getReceiverBlackList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 373
    monitor-exit v1

    .line 374
    return-void

    .line 373
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateSeviceCpnBlacklist()V
    .locals 3

    .prologue
    .line 360
    iget-object v1, p0, Lcom/android/server/am/OnePlusAppStartupManager;->mServiceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 361
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppStartupManager;->mSeviceCpnBlacklist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 362
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppStartupManager;->mSeviceCpnBlacklist:Ljava/util/List;

    invoke-static {}, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->getInstance()Lcom/android/server/am/OnePlusAppStartupManagerUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->getSeviceCpnBlacklist()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 364
    monitor-exit v1

    .line 365
    return-void

    .line 364
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public handleBroadcastIncludeForceStop(Landroid/content/Intent;Lcom/android/server/am/ProcessRecord;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "callerApp"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusAppStartupManager;->mSwitch:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    sget-boolean v0, Lcom/android/server/am/OnePlusAppStartupManager;->isSuppoerted:Z

    if-nez v0, :cond_1

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 101
    iget-object v0, p2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 102
    const-string v0, "com.android.cts.robot.ACTION_POST"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 103
    sget-object v0, Lcom/android/server/am/OnePlusAppStartupManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is CTS app. do not remove the flag!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 107
    :cond_2
    sget-boolean v0, Lcom/android/server/am/OnePlusAppStartupManager;->DynamicDebug:Z

    if-eqz v0, :cond_3

    .line 108
    sget-object v0, Lcom/android/server/am/OnePlusAppStartupManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is the thirdparty app. remove the flag! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    xor-int/lit8 v0, v0, 0x20

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public handleSpecialBroadcast(Landroid/content/Intent;Lcom/android/server/am/ProcessRecord;)Z
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "callerApp"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 200
    const/4 v3, 0x0

    .line 201
    .local v3, "result":Z
    iget-boolean v5, p0, Lcom/android/server/am/OnePlusAppStartupManager;->mSwitch:Z

    if-eqz v5, :cond_0

    sget-boolean v5, Lcom/android/server/am/OnePlusAppStartupManager;->isSuppoerted:Z

    if-nez v5, :cond_1

    :cond_0
    move v4, v3

    .line 237
    .end local v3    # "result":Z
    .local v4, "result":I
    :goto_0
    return v4

    .line 205
    .end local v4    # "result":I
    .restart local v3    # "result":Z
    :cond_1
    if-eqz p1, :cond_2

    if-nez p2, :cond_4

    .line 206
    :cond_2
    sget-boolean v5, Lcom/android/server/am/OnePlusAppStartupManager;->DynamicDebug:Z

    if-eqz v5, :cond_3

    .line 207
    sget-object v5, Lcom/android/server/am/OnePlusAppStartupManager;->TAG:Ljava/lang/String;

    const-string v6, "intent == null || callerApp == null"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move v4, v3

    .line 209
    .restart local v4    # "result":I
    goto :goto_0

    .line 212
    .end local v4    # "result":I
    :cond_4
    iget v5, p2, Lcom/android/server/am/ProcessRecord;->uid:I

    const/16 v6, 0x2710

    if-gt v5, v6, :cond_6

    .line 213
    sget-boolean v5, Lcom/android/server/am/OnePlusAppStartupManager;->DynamicDebug:Z

    if-eqz v5, :cond_5

    .line 214
    sget-object v5, Lcom/android/server/am/OnePlusAppStartupManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleSpecialBroadcast callerApp.uid <= 10000 return "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " callerApp="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move v4, v3

    .line 217
    .restart local v4    # "result":I
    goto :goto_0

    .line 219
    .end local v4    # "result":I
    :cond_6
    iget-object v5, p2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v5, v5, 0x81

    if-eqz v5, :cond_7

    move v4, v3

    .line 220
    .restart local v4    # "result":I
    goto :goto_0

    .line 222
    .end local v4    # "result":I
    :cond_7
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 223
    .local v0, "cpn":Landroid/content/ComponentName;
    if-eqz v0, :cond_8

    .line 224
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 225
    .local v2, "cpnPkgName":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 227
    .local v1, "cpnClassName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/server/am/OnePlusAppStartupManager;->inReceiverlist(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    if-eqz v5, :cond_8

    iget-object v5, p2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 230
    const/4 v3, 0x1

    .line 233
    .end local v1    # "cpnClassName":Ljava/lang/String;
    .end local v2    # "cpnPkgName":Ljava/lang/String;
    :cond_8
    sget-boolean v5, Lcom/android/server/am/OnePlusAppStartupManager;->DynamicDebug:Z

    if-eqz v5, :cond_9

    .line 234
    sget-object v5, Lcom/android/server/am/OnePlusAppStartupManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleSpecialBroadcast intent == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " callerApp = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " result ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    move v4, v3

    .line 237
    .restart local v4    # "result":I
    goto/16 :goto_0
.end method

.method public handleStartActivity(Landroid/content/pm/ActivityInfo;Ljava/lang/String;I)Z
    .locals 6
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingUid"    # I

    .prologue
    .line 241
    const/4 v1, 0x0

    .line 242
    .local v1, "result":Z
    iget-boolean v3, p0, Lcom/android/server/am/OnePlusAppStartupManager;->mSwitch:Z

    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_0

    if-eqz p2, :cond_0

    sget-boolean v3, Lcom/android/server/am/OnePlusAppStartupManager;->isSuppoerted:Z

    if-nez v3, :cond_1

    :cond_0
    move v2, v1

    .line 263
    .end local v1    # "result":Z
    .local v2, "result":I
    :goto_0
    return v2

    .line 246
    .end local v2    # "result":I
    .restart local v1    # "result":Z
    :cond_1
    const/16 v3, 0x2710

    if-gt p3, v3, :cond_3

    .line 247
    sget-boolean v3, Lcom/android/server/am/OnePlusAppStartupManager;->DynamicDebug:Z

    if-eqz v3, :cond_2

    .line 248
    sget-object v3, Lcom/android/server/am/OnePlusAppStartupManager;->TAG:Ljava/lang/String;

    const-string v4, "handleStartActivity callerApp.uid <= 10000 return"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move v2, v1

    .line 249
    .restart local v2    # "result":I
    goto :goto_0

    .line 252
    .end local v2    # "result":I
    :cond_3
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 254
    .local v0, "cpnClassName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/server/am/OnePlusAppStartupManager;->inActivitylist(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz p2, :cond_4

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 257
    const/4 v1, 0x1

    .line 259
    :cond_4
    sget-boolean v3, Lcom/android/server/am/OnePlusAppStartupManager;->DynamicDebug:Z

    if-eqz v3, :cond_5

    .line 260
    sget-object v3, Lcom/android/server/am/OnePlusAppStartupManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleStartActivity aInfo = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " callingPackage = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " callingUid ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move v2, v1

    .line 263
    .restart local v2    # "result":I
    goto :goto_0
.end method

.method public handleStartActivity(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ProcessRecord;)Z
    .locals 10
    .param p1, "activityRecord"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "beCalledApp"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 267
    const/4 v4, 0x0

    .line 268
    .local v4, "result":Z
    iget-boolean v7, p0, Lcom/android/server/am/OnePlusAppStartupManager;->mSwitch:Z

    if-eqz v7, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    sget-boolean v7, Lcom/android/server/am/OnePlusAppStartupManager;->isSuppoerted:Z

    if-nez v7, :cond_1

    :cond_0
    move v5, v4

    .line 298
    .end local v4    # "result":Z
    .local v5, "result":I
    :goto_0
    return v5

    .line 272
    .end local v5    # "result":I
    .restart local v4    # "result":Z
    :cond_1
    iget v7, p1, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    const/16 v8, 0x2710

    if-gt v7, v8, :cond_3

    .line 273
    sget-boolean v7, Lcom/android/server/am/OnePlusAppStartupManager;->DynamicDebug:Z

    if-eqz v7, :cond_2

    .line 274
    sget-object v7, Lcom/android/server/am/OnePlusAppStartupManager;->TAG:Ljava/lang/String;

    const-string v8, "handleStartActivity callerApp.uid <= 10000 return"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move v5, v4

    .line 275
    .restart local v5    # "result":I
    goto :goto_0

    .line 277
    .end local v5    # "result":I
    :cond_3
    iget-object v7, p2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v7, v7, 0x81

    if-eqz v7, :cond_4

    move v5, v4

    .line 278
    .restart local v5    # "result":I
    goto :goto_0

    .line 280
    .end local v5    # "result":I
    :cond_4
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    .line 281
    .local v2, "cpnPkgName":Ljava/lang/String;
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    .line 282
    .local v0, "callerPkgName":Ljava/lang/String;
    const-string v1, ""

    .line 284
    .local v1, "cpnClassName":Ljava/lang/String;
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    .line 285
    .local v6, "shortComponentName":Ljava/lang/String;
    if-eqz v6, :cond_5

    .line 286
    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 287
    .local v3, "index":I
    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 290
    .end local v3    # "index":I
    :cond_5
    invoke-virtual {p0, v1}, Lcom/android/server/am/OnePlusAppStartupManager;->inActivitylist(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    if-eqz v0, :cond_6

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 292
    const/4 v4, 0x1

    .line 294
    :cond_6
    sget-boolean v7, Lcom/android/server/am/OnePlusAppStartupManager;->DynamicDebug:Z

    if-eqz v7, :cond_7

    .line 295
    sget-object v7, Lcom/android/server/am/OnePlusAppStartupManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleStartActivity activityRecord = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " beCalledApp = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " result = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move v5, v4

    .line 298
    .restart local v5    # "result":I
    goto :goto_0
.end method

.method public handleStartOrBindService(Landroid/content/Intent;Lcom/android/server/am/ProcessRecord;)Z
    .locals 10
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "callerApp"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 116
    const/4 v5, 0x0

    .line 117
    .local v5, "result":Z
    iget-boolean v7, p0, Lcom/android/server/am/OnePlusAppStartupManager;->mSwitch:Z

    if-eqz v7, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    sget-boolean v7, Lcom/android/server/am/OnePlusAppStartupManager;->isSuppoerted:Z

    if-nez v7, :cond_1

    :cond_0
    move v6, v5

    .line 167
    .end local v5    # "result":Z
    .local v6, "result":I
    :goto_0
    return v6

    .line 121
    .end local v6    # "result":I
    .restart local v5    # "result":Z
    :cond_1
    iget v7, p2, Lcom/android/server/am/ProcessRecord;->uid:I

    const/16 v8, 0x2710

    if-gt v7, v8, :cond_3

    .line 122
    sget-boolean v7, Lcom/android/server/am/OnePlusAppStartupManager;->DynamicDebug:Z

    if-eqz v7, :cond_2

    .line 123
    sget-object v7, Lcom/android/server/am/OnePlusAppStartupManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleStartOrBindService callerApp.uid <= 10000 return callerApp = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move v6, v5

    .line 126
    .restart local v6    # "result":I
    goto :goto_0

    .line 128
    .end local v6    # "result":I
    :cond_3
    iget-object v7, p2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v7, v7, 0x81

    if-eqz v7, :cond_4

    move v6, v5

    .line 129
    .restart local v6    # "result":I
    goto :goto_0

    .line 132
    .end local v6    # "result":I
    :cond_4
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 134
    .local v1, "cpn":Landroid/content/ComponentName;
    if-eqz v1, :cond_9

    .line 135
    invoke-virtual {v1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.lbe.security.oneplus"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 136
    sget-boolean v7, Lcom/android/server/am/OnePlusAppStartupManager;->DynamicDebug:Z

    if-eqz v7, :cond_5

    .line 137
    sget-object v7, Lcom/android/server/am/OnePlusAppStartupManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleStartOrBindService lbe= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move v6, v5

    .line 140
    .restart local v6    # "result":I
    goto :goto_0

    .line 142
    .end local v6    # "result":I
    :cond_6
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 143
    .local v3, "cpnPkgName":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 144
    .local v2, "cpnClassName":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/server/am/OnePlusAppStartupManager;->inSeviceCpnlist(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    if-eqz v7, :cond_7

    iget-object v7, p2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 147
    const/4 v5, 0x1

    .line 163
    .end local v2    # "cpnClassName":Ljava/lang/String;
    .end local v3    # "cpnPkgName":Ljava/lang/String;
    :cond_7
    :goto_1
    sget-boolean v7, Lcom/android/server/am/OnePlusAppStartupManager;->DynamicDebug:Z

    if-eqz v7, :cond_8

    .line 164
    sget-object v7, Lcom/android/server/am/OnePlusAppStartupManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleStartOrBindService: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " args="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " callerApp ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " result = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    move v6, v5

    .line 167
    .restart local v6    # "result":I
    goto/16 :goto_0

    .line 150
    .end local v6    # "result":I
    :cond_9
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_7

    .line 152
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v4

    .line 153
    .local v4, "pkgName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/server/am/OnePlusAppStartupManager;->inActionlist(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    if-eqz v4, :cond_a

    iget-object v7, p2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    if-eqz v7, :cond_a

    iget-object v7, p2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 157
    const/4 v5, 0x1

    goto :goto_1

    .line 158
    :cond_a
    invoke-virtual {p0, v0}, Lcom/android/server/am/OnePlusAppStartupManager;->inBlackguardList(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 159
    const/4 v5, 0x1

    goto :goto_1
.end method

.method public handleStartProvider(Lcom/android/server/am/ContentProviderRecord;Lcom/android/server/am/ProcessRecord;)Z
    .locals 10
    .param p1, "cpr"    # Lcom/android/server/am/ContentProviderRecord;
    .param p2, "callerApp"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 171
    const/4 v3, 0x0

    .line 172
    .local v3, "result":Z
    iget-boolean v5, p0, Lcom/android/server/am/OnePlusAppStartupManager;->mSwitch:Z

    if-eqz v5, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    sget-boolean v5, Lcom/android/server/am/OnePlusAppStartupManager;->isSuppoerted:Z

    if-nez v5, :cond_1

    :cond_0
    move v4, v3

    .line 196
    .end local v3    # "result":Z
    .local v4, "result":I
    :goto_0
    return v4

    .line 176
    .end local v4    # "result":I
    .restart local v3    # "result":Z
    :cond_1
    iget v5, p2, Lcom/android/server/am/ProcessRecord;->uid:I

    const/16 v6, 0x2710

    if-gt v5, v6, :cond_3

    .line 177
    sget-boolean v5, Lcom/android/server/am/OnePlusAppStartupManager;->DynamicDebug:Z

    if-eqz v5, :cond_2

    .line 178
    sget-object v5, Lcom/android/server/am/OnePlusAppStartupManager;->TAG:Ljava/lang/String;

    const-string v6, "handleStartProvider callerApp.uid <= 10000 return"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move v4, v3

    .line 179
    .restart local v4    # "result":I
    goto :goto_0

    .line 181
    .end local v4    # "result":I
    :cond_3
    iget-object v5, p2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v5, v5, 0x81

    if-eqz v5, :cond_4

    move v4, v3

    .line 182
    .restart local v4    # "result":I
    goto :goto_0

    .line 184
    .end local v4    # "result":I
    :cond_4
    iget-object v0, p1, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    .line 185
    .local v0, "cpn":Landroid/content/ComponentName;
    if-eqz v0, :cond_5

    .line 186
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 187
    .local v2, "cpnPkgName":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 188
    .local v1, "cpnClassName":Ljava/lang/String;
    sget-object v5, Lcom/android/server/am/OnePlusAppStartupManager;->TAG:Ljava/lang/String;

    const-string v6, "%s %s %s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v8, 0x1

    aput-object v1, v7, v8

    const/4 v8, 0x2

    iget-object v9, p2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-virtual {p0, v1}, Lcom/android/server/am/OnePlusAppStartupManager;->inProviderlist(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    if-eqz v5, :cond_5

    iget-object v5, p2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 192
    const/4 v3, 0x1

    .end local v1    # "cpnClassName":Ljava/lang/String;
    .end local v2    # "cpnPkgName":Ljava/lang/String;
    :cond_5
    move v4, v3

    .line 196
    .restart local v4    # "result":I
    goto :goto_0
.end method

.method public inActionlist(Ljava/lang/String;)Z
    .locals 3
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 334
    const/4 v0, 0x0

    .line 335
    .local v0, "result":Z
    iget-object v2, p0, Lcom/android/server/am/OnePlusAppStartupManager;->mActionLock:Ljava/lang/Object;

    monitor-enter v2

    .line 336
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusAppStartupManager;->mActionBlackList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 337
    monitor-exit v2

    .line 338
    return v0

    .line 337
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public inActivitylist(Ljava/lang/String;)Z
    .locals 3
    .param p1, "cpnClassName"    # Ljava/lang/String;

    .prologue
    .line 326
    const/4 v0, 0x0

    .line 327
    .local v0, "result":Z
    iget-object v2, p0, Lcom/android/server/am/OnePlusAppStartupManager;->mActivityLock:Ljava/lang/Object;

    monitor-enter v2

    .line 328
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusAppStartupManager;->mActivityBlackList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 329
    monitor-exit v2

    .line 330
    return v0

    .line 329
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public inBlackguardList(Ljava/lang/String;)Z
    .locals 3
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 342
    const/4 v0, 0x0

    .line 343
    .local v0, "result":Z
    iget-object v2, p0, Lcom/android/server/am/OnePlusAppStartupManager;->mBlackguardLock:Ljava/lang/Object;

    monitor-enter v2

    .line 344
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusAppStartupManager;->mBlackguardList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 345
    monitor-exit v2

    .line 346
    return v0

    .line 345
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public inProviderlist(Ljava/lang/String;)Z
    .locals 3
    .param p1, "cpnClassName"    # Ljava/lang/String;

    .prologue
    .line 318
    const/4 v0, 0x0

    .line 319
    .local v0, "result":Z
    iget-object v2, p0, Lcom/android/server/am/OnePlusAppStartupManager;->mProviderLock:Ljava/lang/Object;

    monitor-enter v2

    .line 320
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusAppStartupManager;->mProviderBlacklist:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 321
    monitor-exit v2

    .line 322
    return v0

    .line 321
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public inReceiverlist(Ljava/lang/String;)Z
    .locals 3
    .param p1, "cpnClassName"    # Ljava/lang/String;

    .prologue
    .line 310
    const/4 v0, 0x0

    .line 311
    .local v0, "result":Z
    iget-object v2, p0, Lcom/android/server/am/OnePlusAppStartupManager;->mReceiverLock:Ljava/lang/Object;

    monitor-enter v2

    .line 312
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusAppStartupManager;->mReceiverBlackList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 313
    monitor-exit v2

    .line 314
    return v0

    .line 313
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public inSeviceCpnlist(Ljava/lang/String;)Z
    .locals 3
    .param p1, "cpnClassName"    # Ljava/lang/String;

    .prologue
    .line 302
    const/4 v0, 0x0

    .line 303
    .local v0, "result":Z
    iget-object v2, p0, Lcom/android/server/am/OnePlusAppStartupManager;->mServiceLock:Ljava/lang/Object;

    monitor-enter v2

    .line 304
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusAppStartupManager;->mSeviceCpnBlacklist:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 305
    monitor-exit v2

    .line 306
    return v0

    .line 305
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public initData()V
    .locals 2

    .prologue
    .line 88
    sget-object v0, Lcom/android/server/am/OnePlusAppStartupManager;->TAG:Ljava/lang/String;

    const-string v1, "initData"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    sget-boolean v0, Lcom/android/server/am/OnePlusAppStartupManager;->isSuppoerted:Z

    if-nez v0, :cond_0

    .line 93
    :goto_0
    return-void

    .line 92
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/OnePlusAppStartupManager;->updateBlacklist()V

    goto :goto_0
.end method

.method public openLog(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 408
    sget-object v0, Lcom/android/server/am/OnePlusAppStartupManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DynamicDebug = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    sput-boolean p1, Lcom/android/server/am/OnePlusAppStartupManager;->DynamicDebug:Z

    .line 410
    return-void
.end method

.method public setAm(Lcom/android/server/am/ActivityManagerService;)V
    .locals 2
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/server/am/OnePlusAppStartupManager;->mAms:Lcom/android/server/am/ActivityManagerService;

    .line 84
    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oem.appstartup.control"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusAppStartupManager;->isSuppoerted:Z

    .line 85
    invoke-virtual {p0}, Lcom/android/server/am/OnePlusAppStartupManager;->initData()V

    .line 86
    return-void
.end method

.method public updateBlacklist()V
    .locals 0

    .prologue
    .line 350
    invoke-direct {p0}, Lcom/android/server/am/OnePlusAppStartupManager;->updateSeviceCpnBlacklist()V

    .line 351
    invoke-direct {p0}, Lcom/android/server/am/OnePlusAppStartupManager;->updateReceiverBlackList()V

    .line 352
    invoke-direct {p0}, Lcom/android/server/am/OnePlusAppStartupManager;->updateProviderBlackList()V

    .line 353
    invoke-direct {p0}, Lcom/android/server/am/OnePlusAppStartupManager;->updateActivityBlackList()V

    .line 354
    invoke-direct {p0}, Lcom/android/server/am/OnePlusAppStartupManager;->updateActionBlackList()V

    .line 355
    invoke-direct {p0}, Lcom/android/server/am/OnePlusAppStartupManager;->updateBlackguardList()V

    .line 356
    return-void
.end method
