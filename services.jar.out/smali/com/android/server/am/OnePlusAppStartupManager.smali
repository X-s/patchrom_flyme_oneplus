.class public Lcom/android/server/am/OnePlusAppStartupManager;
.super Ljava/lang/Object;
.source "OnePlusAppStartupManager.java"


# static fields
.field public static DEBUG_DETAIL:Z

.field public static DynamicDebug:Z

.field private static final IS_H2_OS:Z

.field public static TAG:Ljava/lang/String;

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
    invoke-static {}, Landroid/util/OpFeatures;->isH2()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusAppStartupManager;->IS_H2_OS:Z

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
    invoke-virtual {p0}, Lcom/android/server/am/OnePlusAppStartupManager;->initData()V

    .line 77
    return-void
.end method

.method public static final getInstance()Lcom/android/server/am/OnePlusAppStartupManager;
    .locals 2

    .prologue
    .line 80
    sget-object v0, Lcom/android/server/am/OnePlusAppStartupManager;->mOnePlusAppStartupManager:Lcom/android/server/am/OnePlusAppStartupManager;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Lcom/android/server/am/OnePlusAppStartupManager;

    const-string v1, "OppoAppStartupManager"

    invoke-direct {v0, v1}, Lcom/android/server/am/OnePlusAppStartupManager;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/am/OnePlusAppStartupManager;->mOnePlusAppStartupManager:Lcom/android/server/am/OnePlusAppStartupManager;

    .line 83
    :cond_0
    sget-object v0, Lcom/android/server/am/OnePlusAppStartupManager;->mOnePlusAppStartupManager:Lcom/android/server/am/OnePlusAppStartupManager;

    return-object v0
.end method

.method private updateActionBlackList()V
    .locals 3

    .prologue
    .line 392
    iget-object v1, p0, Lcom/android/server/am/OnePlusAppStartupManager;->mActionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 393
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppStartupManager;->mActionBlackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 394
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppStartupManager;->mActionBlackList:Ljava/util/List;

    invoke-static {}, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->getInstance()Lcom/android/server/am/OnePlusAppStartupManagerUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->getActionBlackList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 396
    monitor-exit v1

    .line 397
    return-void

    .line 396
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
    .line 384
    iget-object v1, p0, Lcom/android/server/am/OnePlusAppStartupManager;->mActivityLock:Ljava/lang/Object;

    monitor-enter v1

    .line 385
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppStartupManager;->mActivityBlackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 386
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppStartupManager;->mActivityBlackList:Ljava/util/List;

    invoke-static {}, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->getInstance()Lcom/android/server/am/OnePlusAppStartupManagerUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->getActivityBlackList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 388
    monitor-exit v1

    .line 389
    return-void

    .line 388
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
    .line 400
    iget-object v1, p0, Lcom/android/server/am/OnePlusAppStartupManager;->mBlackguardLock:Ljava/lang/Object;

    monitor-enter v1

    .line 401
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppStartupManager;->mBlackguardList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 402
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppStartupManager;->mBlackguardList:Ljava/util/List;

    invoke-static {}, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->getInstance()Lcom/android/server/am/OnePlusAppStartupManagerUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->getBlackguardList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 403
    monitor-exit v1

    .line 404
    return-void

    .line 403
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
    .line 376
    iget-object v1, p0, Lcom/android/server/am/OnePlusAppStartupManager;->mProviderLock:Ljava/lang/Object;

    monitor-enter v1

    .line 377
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppStartupManager;->mProviderBlacklist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 378
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppStartupManager;->mProviderBlacklist:Ljava/util/List;

    invoke-static {}, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->getInstance()Lcom/android/server/am/OnePlusAppStartupManagerUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->getProviderBlackList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 380
    monitor-exit v1

    .line 381
    return-void

    .line 380
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
    .line 368
    iget-object v1, p0, Lcom/android/server/am/OnePlusAppStartupManager;->mReceiverLock:Ljava/lang/Object;

    monitor-enter v1

    .line 369
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppStartupManager;->mReceiverBlackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 370
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppStartupManager;->mReceiverBlackList:Ljava/util/List;

    invoke-static {}, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->getInstance()Lcom/android/server/am/OnePlusAppStartupManagerUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->getReceiverBlackList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 372
    monitor-exit v1

    .line 373
    return-void

    .line 372
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
    .line 359
    iget-object v1, p0, Lcom/android/server/am/OnePlusAppStartupManager;->mServiceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 360
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppStartupManager;->mSeviceCpnBlacklist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 361
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppStartupManager;->mSeviceCpnBlacklist:Ljava/util/List;

    invoke-static {}, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->getInstance()Lcom/android/server/am/OnePlusAppStartupManagerUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->getSeviceCpnBlacklist()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 363
    monitor-exit v1

    .line 364
    return-void

    .line 363
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
    .line 95
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusAppStartupManager;->mSwitch:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    sget-boolean v0, Lcom/android/server/am/OnePlusAppStartupManager;->IS_H2_OS:Z

    if-nez v0, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 100
    iget-object v0, p2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 101
    const-string v0, "com.android.cts.robot.ACTION_POST"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 102
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

    .line 106
    :cond_2
    sget-boolean v0, Lcom/android/server/am/OnePlusAppStartupManager;->DynamicDebug:Z

    if-eqz v0, :cond_3

    .line 107
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

    .line 109
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
    .line 199
    const/4 v3, 0x0

    .line 200
    .local v3, "result":Z
    iget-boolean v5, p0, Lcom/android/server/am/OnePlusAppStartupManager;->mSwitch:Z

    if-eqz v5, :cond_0

    sget-boolean v5, Lcom/android/server/am/OnePlusAppStartupManager;->IS_H2_OS:Z

    if-nez v5, :cond_1

    :cond_0
    move v4, v3

    .line 236
    .end local v3    # "result":Z
    .local v4, "result":I
    :goto_0
    return v4

    .line 204
    .end local v4    # "result":I
    .restart local v3    # "result":Z
    :cond_1
    if-eqz p1, :cond_2

    if-nez p2, :cond_4

    .line 205
    :cond_2
    sget-boolean v5, Lcom/android/server/am/OnePlusAppStartupManager;->DynamicDebug:Z

    if-eqz v5, :cond_3

    .line 206
    sget-object v5, Lcom/android/server/am/OnePlusAppStartupManager;->TAG:Ljava/lang/String;

    const-string v6, "intent == null || callerApp == null"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move v4, v3

    .line 208
    .restart local v4    # "result":I
    goto :goto_0

    .line 211
    .end local v4    # "result":I
    :cond_4
    iget v5, p2, Lcom/android/server/am/ProcessRecord;->uid:I

    const/16 v6, 0x2710

    if-gt v5, v6, :cond_6

    .line 212
    sget-boolean v5, Lcom/android/server/am/OnePlusAppStartupManager;->DynamicDebug:Z

    if-eqz v5, :cond_5

    .line 213
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

    .line 216
    .restart local v4    # "result":I
    goto :goto_0

    .line 218
    .end local v4    # "result":I
    :cond_6
    iget-object v5, p2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v5, v5, 0x81

    if-eqz v5, :cond_7

    move v4, v3

    .line 219
    .restart local v4    # "result":I
    goto :goto_0

    .line 221
    .end local v4    # "result":I
    :cond_7
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 222
    .local v0, "cpn":Landroid/content/ComponentName;
    if-eqz v0, :cond_8

    .line 223
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 224
    .local v2, "cpnPkgName":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 226
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

    .line 229
    const/4 v3, 0x1

    .line 232
    .end local v1    # "cpnClassName":Ljava/lang/String;
    .end local v2    # "cpnPkgName":Ljava/lang/String;
    :cond_8
    sget-boolean v5, Lcom/android/server/am/OnePlusAppStartupManager;->DynamicDebug:Z

    if-eqz v5, :cond_9

    .line 233
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

    .line 236
    .restart local v4    # "result":I
    goto/16 :goto_0
.end method

.method public handleStartActivity(Landroid/content/pm/ActivityInfo;Ljava/lang/String;I)Z
    .locals 6
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingUid"    # I

    .prologue
    .line 240
    const/4 v1, 0x0

    .line 241
    .local v1, "result":Z
    iget-boolean v3, p0, Lcom/android/server/am/OnePlusAppStartupManager;->mSwitch:Z

    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_0

    if-eqz p2, :cond_0

    sget-boolean v3, Lcom/android/server/am/OnePlusAppStartupManager;->IS_H2_OS:Z

    if-nez v3, :cond_1

    :cond_0
    move v2, v1

    .line 262
    .end local v1    # "result":Z
    .local v2, "result":I
    :goto_0
    return v2

    .line 245
    .end local v2    # "result":I
    .restart local v1    # "result":Z
    :cond_1
    const/16 v3, 0x2710

    if-gt p3, v3, :cond_3

    .line 246
    sget-boolean v3, Lcom/android/server/am/OnePlusAppStartupManager;->DynamicDebug:Z

    if-eqz v3, :cond_2

    .line 247
    sget-object v3, Lcom/android/server/am/OnePlusAppStartupManager;->TAG:Ljava/lang/String;

    const-string v4, "handleStartActivity callerApp.uid <= 10000 return"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move v2, v1

    .line 248
    .restart local v2    # "result":I
    goto :goto_0

    .line 251
    .end local v2    # "result":I
    :cond_3
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 253
    .local v0, "cpnClassName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/server/am/OnePlusAppStartupManager;->inActivitylist(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz p2, :cond_4

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 256
    const/4 v1, 0x1

    .line 258
    :cond_4
    sget-boolean v3, Lcom/android/server/am/OnePlusAppStartupManager;->DynamicDebug:Z

    if-eqz v3, :cond_5

    .line 259
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

    .line 262
    .restart local v2    # "result":I
    goto :goto_0
.end method

.method public handleStartActivity(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ProcessRecord;)Z
    .locals 10
    .param p1, "activityRecord"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "beCalledApp"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 266
    const/4 v4, 0x0

    .line 267
    .local v4, "result":Z
    iget-boolean v7, p0, Lcom/android/server/am/OnePlusAppStartupManager;->mSwitch:Z

    if-eqz v7, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    sget-boolean v7, Lcom/android/server/am/OnePlusAppStartupManager;->IS_H2_OS:Z

    if-nez v7, :cond_1

    :cond_0
    move v5, v4

    .line 297
    .end local v4    # "result":Z
    .local v5, "result":I
    :goto_0
    return v5

    .line 271
    .end local v5    # "result":I
    .restart local v4    # "result":Z
    :cond_1
    iget v7, p1, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    const/16 v8, 0x2710

    if-gt v7, v8, :cond_3

    .line 272
    sget-boolean v7, Lcom/android/server/am/OnePlusAppStartupManager;->DynamicDebug:Z

    if-eqz v7, :cond_2

    .line 273
    sget-object v7, Lcom/android/server/am/OnePlusAppStartupManager;->TAG:Ljava/lang/String;

    const-string v8, "handleStartActivity callerApp.uid <= 10000 return"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move v5, v4

    .line 274
    .restart local v5    # "result":I
    goto :goto_0

    .line 276
    .end local v5    # "result":I
    :cond_3
    iget-object v7, p2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v7, v7, 0x81

    if-eqz v7, :cond_4

    move v5, v4

    .line 277
    .restart local v5    # "result":I
    goto :goto_0

    .line 279
    .end local v5    # "result":I
    :cond_4
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    .line 280
    .local v2, "cpnPkgName":Ljava/lang/String;
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    .line 281
    .local v0, "callerPkgName":Ljava/lang/String;
    const-string v1, ""

    .line 283
    .local v1, "cpnClassName":Ljava/lang/String;
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    .line 284
    .local v6, "shortComponentName":Ljava/lang/String;
    if-eqz v6, :cond_5

    .line 285
    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 286
    .local v3, "index":I
    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 289
    .end local v3    # "index":I
    :cond_5
    invoke-virtual {p0, v1}, Lcom/android/server/am/OnePlusAppStartupManager;->inActivitylist(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    if-eqz v0, :cond_6

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 291
    const/4 v4, 0x1

    .line 293
    :cond_6
    sget-boolean v7, Lcom/android/server/am/OnePlusAppStartupManager;->DynamicDebug:Z

    if-eqz v7, :cond_7

    .line 294
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

    .line 297
    .restart local v5    # "result":I
    goto :goto_0
.end method

.method public handleStartOrBindService(Landroid/content/Intent;Lcom/android/server/am/ProcessRecord;)Z
    .locals 10
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "callerApp"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 115
    const/4 v5, 0x0

    .line 116
    .local v5, "result":Z
    iget-boolean v7, p0, Lcom/android/server/am/OnePlusAppStartupManager;->mSwitch:Z

    if-eqz v7, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    sget-boolean v7, Lcom/android/server/am/OnePlusAppStartupManager;->IS_H2_OS:Z

    if-nez v7, :cond_1

    :cond_0
    move v6, v5

    .line 166
    .end local v5    # "result":Z
    .local v6, "result":I
    :goto_0
    return v6

    .line 120
    .end local v6    # "result":I
    .restart local v5    # "result":Z
    :cond_1
    iget v7, p2, Lcom/android/server/am/ProcessRecord;->uid:I

    const/16 v8, 0x2710

    if-gt v7, v8, :cond_3

    .line 121
    sget-boolean v7, Lcom/android/server/am/OnePlusAppStartupManager;->DynamicDebug:Z

    if-eqz v7, :cond_2

    .line 122
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

    .line 125
    .restart local v6    # "result":I
    goto :goto_0

    .line 127
    .end local v6    # "result":I
    :cond_3
    iget-object v7, p2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v7, v7, 0x81

    if-eqz v7, :cond_4

    move v6, v5

    .line 128
    .restart local v6    # "result":I
    goto :goto_0

    .line 131
    .end local v6    # "result":I
    :cond_4
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 133
    .local v1, "cpn":Landroid/content/ComponentName;
    if-eqz v1, :cond_9

    .line 134
    invoke-virtual {v1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.lbe.security.oneplus"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 135
    sget-boolean v7, Lcom/android/server/am/OnePlusAppStartupManager;->DynamicDebug:Z

    if-eqz v7, :cond_5

    .line 136
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

    .line 139
    .restart local v6    # "result":I
    goto :goto_0

    .line 141
    .end local v6    # "result":I
    :cond_6
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 142
    .local v3, "cpnPkgName":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 143
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

    .line 146
    const/4 v5, 0x1

    .line 162
    .end local v2    # "cpnClassName":Ljava/lang/String;
    .end local v3    # "cpnPkgName":Ljava/lang/String;
    :cond_7
    :goto_1
    sget-boolean v7, Lcom/android/server/am/OnePlusAppStartupManager;->DynamicDebug:Z

    if-eqz v7, :cond_8

    .line 163
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

    .line 166
    .restart local v6    # "result":I
    goto/16 :goto_0

    .line 149
    .end local v6    # "result":I
    :cond_9
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_7

    .line 151
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v4

    .line 152
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

    .line 156
    const/4 v5, 0x1

    goto :goto_1

    .line 157
    :cond_a
    invoke-virtual {p0, v0}, Lcom/android/server/am/OnePlusAppStartupManager;->inBlackguardList(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 158
    const/4 v5, 0x1

    goto :goto_1
.end method

.method public handleStartProvider(Lcom/android/server/am/ContentProviderRecord;Lcom/android/server/am/ProcessRecord;)Z
    .locals 10
    .param p1, "cpr"    # Lcom/android/server/am/ContentProviderRecord;
    .param p2, "callerApp"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 170
    const/4 v3, 0x0

    .line 171
    .local v3, "result":Z
    iget-boolean v5, p0, Lcom/android/server/am/OnePlusAppStartupManager;->mSwitch:Z

    if-eqz v5, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    sget-boolean v5, Lcom/android/server/am/OnePlusAppStartupManager;->IS_H2_OS:Z

    if-nez v5, :cond_1

    :cond_0
    move v4, v3

    .line 195
    .end local v3    # "result":Z
    .local v4, "result":I
    :goto_0
    return v4

    .line 175
    .end local v4    # "result":I
    .restart local v3    # "result":Z
    :cond_1
    iget v5, p2, Lcom/android/server/am/ProcessRecord;->uid:I

    const/16 v6, 0x2710

    if-gt v5, v6, :cond_3

    .line 176
    sget-boolean v5, Lcom/android/server/am/OnePlusAppStartupManager;->DynamicDebug:Z

    if-eqz v5, :cond_2

    .line 177
    sget-object v5, Lcom/android/server/am/OnePlusAppStartupManager;->TAG:Ljava/lang/String;

    const-string v6, "handleStartProvider callerApp.uid <= 10000 return"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move v4, v3

    .line 178
    .restart local v4    # "result":I
    goto :goto_0

    .line 180
    .end local v4    # "result":I
    :cond_3
    iget-object v5, p2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v5, v5, 0x81

    if-eqz v5, :cond_4

    move v4, v3

    .line 181
    .restart local v4    # "result":I
    goto :goto_0

    .line 183
    .end local v4    # "result":I
    :cond_4
    iget-object v0, p1, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    .line 184
    .local v0, "cpn":Landroid/content/ComponentName;
    if-eqz v0, :cond_5

    .line 185
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 186
    .local v2, "cpnPkgName":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 187
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

    .line 188
    invoke-virtual {p0, v1}, Lcom/android/server/am/OnePlusAppStartupManager;->inProviderlist(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    if-eqz v5, :cond_5

    iget-object v5, p2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 191
    const/4 v3, 0x1

    .end local v1    # "cpnClassName":Ljava/lang/String;
    .end local v2    # "cpnPkgName":Ljava/lang/String;
    :cond_5
    move v4, v3

    .line 195
    .restart local v4    # "result":I
    goto :goto_0
.end method

.method public inActionlist(Ljava/lang/String;)Z
    .locals 3
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 333
    const/4 v0, 0x0

    .line 334
    .local v0, "result":Z
    iget-object v2, p0, Lcom/android/server/am/OnePlusAppStartupManager;->mActionLock:Ljava/lang/Object;

    monitor-enter v2

    .line 335
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusAppStartupManager;->mActionBlackList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 336
    monitor-exit v2

    .line 337
    return v0

    .line 336
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
    .line 325
    const/4 v0, 0x0

    .line 326
    .local v0, "result":Z
    iget-object v2, p0, Lcom/android/server/am/OnePlusAppStartupManager;->mActivityLock:Ljava/lang/Object;

    monitor-enter v2

    .line 327
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusAppStartupManager;->mActivityBlackList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 328
    monitor-exit v2

    .line 329
    return v0

    .line 328
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
    .line 341
    const/4 v0, 0x0

    .line 342
    .local v0, "result":Z
    iget-object v2, p0, Lcom/android/server/am/OnePlusAppStartupManager;->mBlackguardLock:Ljava/lang/Object;

    monitor-enter v2

    .line 343
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusAppStartupManager;->mBlackguardList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 344
    monitor-exit v2

    .line 345
    return v0

    .line 344
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
    .line 317
    const/4 v0, 0x0

    .line 318
    .local v0, "result":Z
    iget-object v2, p0, Lcom/android/server/am/OnePlusAppStartupManager;->mProviderLock:Ljava/lang/Object;

    monitor-enter v2

    .line 319
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusAppStartupManager;->mProviderBlacklist:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 320
    monitor-exit v2

    .line 321
    return v0

    .line 320
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
    .line 309
    const/4 v0, 0x0

    .line 310
    .local v0, "result":Z
    iget-object v2, p0, Lcom/android/server/am/OnePlusAppStartupManager;->mReceiverLock:Ljava/lang/Object;

    monitor-enter v2

    .line 311
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusAppStartupManager;->mReceiverBlackList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 312
    monitor-exit v2

    .line 313
    return v0

    .line 312
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
    .line 301
    const/4 v0, 0x0

    .line 302
    .local v0, "result":Z
    iget-object v2, p0, Lcom/android/server/am/OnePlusAppStartupManager;->mServiceLock:Ljava/lang/Object;

    monitor-enter v2

    .line 303
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusAppStartupManager;->mSeviceCpnBlacklist:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 304
    monitor-exit v2

    .line 305
    return v0

    .line 304
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
    .line 87
    sget-object v0, Lcom/android/server/am/OnePlusAppStartupManager;->TAG:Ljava/lang/String;

    const-string v1, "initData"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    sget-boolean v0, Lcom/android/server/am/OnePlusAppStartupManager;->IS_H2_OS:Z

    if-nez v0, :cond_0

    .line 92
    :goto_0
    return-void

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/OnePlusAppStartupManager;->updateBlacklist()V

    goto :goto_0
.end method

.method public openLog(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 407
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

    .line 408
    sput-boolean p1, Lcom/android/server/am/OnePlusAppStartupManager;->DynamicDebug:Z

    .line 409
    return-void
.end method

.method public updateBlacklist()V
    .locals 0

    .prologue
    .line 349
    invoke-direct {p0}, Lcom/android/server/am/OnePlusAppStartupManager;->updateSeviceCpnBlacklist()V

    .line 350
    invoke-direct {p0}, Lcom/android/server/am/OnePlusAppStartupManager;->updateReceiverBlackList()V

    .line 351
    invoke-direct {p0}, Lcom/android/server/am/OnePlusAppStartupManager;->updateProviderBlackList()V

    .line 352
    invoke-direct {p0}, Lcom/android/server/am/OnePlusAppStartupManager;->updateActivityBlackList()V

    .line 353
    invoke-direct {p0}, Lcom/android/server/am/OnePlusAppStartupManager;->updateActionBlackList()V

    .line 354
    invoke-direct {p0}, Lcom/android/server/am/OnePlusAppStartupManager;->updateBlackguardList()V

    .line 355
    return-void
.end method
