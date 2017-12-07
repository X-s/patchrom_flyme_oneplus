.class public Lcom/android/server/pm/BackgroundDexOptService;
.super Landroid/app/job/JobService;
.source "BackgroundDexOptService.java"


# static fields
.field private static BackgroundOptConfig:Ljava/lang/String; = null

.field private static BackgroundOptConfigBlacklist:Ljava/lang/String; = null

.field static final DAYS_IN_MILLISECONDS:J = 0x5265c00L

.field static final JOB_IDLE_OPTIMIZE:I = 0x320

.field static final JOB_POST_BOOT_UPDATE:I = 0x321

.field static final MONTH_IN_MILLISECONDS:J = 0x9a7ec800L

.field static final RETRY_LATENCY:J = 0xdbba00L

.field static final TAG:Ljava/lang/String; = "BackgroundDexOptService"

.field private static mContext:Landroid/content/Context;

.field private static sDexoptServiceName:Landroid/content/ComponentName;

.field static final sFailedPackageNames:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final dataDir:Ljava/io/File;

.field final mAbortIdleOptimization:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final mAbortPostBootUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final mExitPostBootUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/pm/BackgroundDexOptService;->BackgroundOptConfig:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/pm/BackgroundDexOptService;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->dataDir:Ljava/io/File;

    return-object v0
.end method

.method static synthetic -get2()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/android/server/pm/BackgroundDexOptService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/pm/BackgroundDexOptService;Lorg/json/JSONArray;)Landroid/util/ArraySet;
    .locals 1
    .param p1, "jsonArray"    # Lorg/json/JSONArray;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/pm/BackgroundDexOptService;->resolveOnlineConfig(Lorg/json/JSONArray;)Landroid/util/ArraySet;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/pm/BackgroundDexOptService;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/pm/BackgroundDexOptService;->getBatteryLevel()I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 66
    new-instance v0, Landroid/content/ComponentName;

    .line 67
    const-string/jumbo v1, "android"

    .line 68
    const-class v2, Lcom/android/server/pm/BackgroundDexOptService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 66
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/pm/BackgroundDexOptService;->sDexoptServiceName:Landroid/content/ComponentName;

    .line 73
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/BackgroundDexOptService;->sFailedPackageNames:Landroid/util/ArraySet;

    .line 90
    const-string/jumbo v0, "BackgroundOptConfig"

    sput-object v0, Lcom/android/server/pm/BackgroundDexOptService;->BackgroundOptConfig:Ljava/lang/String;

    .line 91
    const-string/jumbo v0, "BackgroundOpt_Blacklist"

    sput-object v0, Lcom/android/server/pm/BackgroundDexOptService;->BackgroundOptConfigBlacklist:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    .line 78
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mAbortPostBootUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 79
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mAbortIdleOptimization:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 84
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mExitPostBootUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 86
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->dataDir:Ljava/io/File;

    .line 52
    return-void
.end method

.method private getBatteryLevel()I
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 133
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 134
    .local v0, "filter":Landroid/content/IntentFilter;
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v0}, Lcom/android/server/pm/BackgroundDexOptService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 135
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "level"

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 136
    .local v2, "level":I
    const-string/jumbo v4, "scale"

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 138
    .local v3, "scale":I
    if-ltz v2, :cond_0

    if-gtz v3, :cond_1

    .line 140
    :cond_0
    return v5

    .line 143
    :cond_1
    mul-int/lit8 v4, v2, 0x64

    div-int/2addr v4, v3

    return v4
.end method

.method private getLowStorageThreshold()J
    .locals 4

    .prologue
    .line 148
    invoke-static {p0}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/pm/BackgroundDexOptService;->dataDir:Ljava/io/File;

    invoke-virtual {v2, v3}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    move-result-wide v0

    .line 149
    .local v0, "lowThreshold":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 150
    const-string/jumbo v2, "BackgroundDexOptService"

    const-string/jumbo v3, "Invalid low storage threshold"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_0
    return-wide v0
.end method

.method public static notifyPackageChanged(Ljava/lang/String;)V
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 126
    sget-object v1, Lcom/android/server/pm/BackgroundDexOptService;->sFailedPackageNames:Landroid/util/ArraySet;

    monitor-enter v1

    .line 127
    :try_start_0
    sget-object v0, Lcom/android/server/pm/BackgroundDexOptService;->sFailedPackageNames:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 122
    return-void

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private resolveOnlineConfig(Lorg/json/JSONArray;)Landroid/util/ArraySet;
    .locals 10
    .param p1, "jsonArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 293
    if-nez p1, :cond_0

    .line 294
    return-object v9

    .line 298
    :cond_0
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v4, v6, :cond_3

    .line 299
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 301
    .local v5, "json":Lorg/json/JSONObject;
    const-string/jumbo v6, "name"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/android/server/pm/BackgroundDexOptService;->BackgroundOptConfigBlacklist:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 302
    const-string/jumbo v6, "value"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 304
    .local v1, "blackListJsonArray":Lorg/json/JSONArray;
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 305
    .local v0, "blackList":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v3, v6, :cond_1

    .line 306
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 307
    const-string/jumbo v6, "BackgroundDexOptService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "blacklist add : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 310
    :cond_1
    const-string/jumbo v6, "BackgroundDexOptService"

    const-string/jumbo v7, "[OnlineConfig] BackgroundOpt updated complete"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    return-object v0

    .line 298
    .end local v0    # "blackList":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v1    # "blackListJsonArray":Lorg/json/JSONArray;
    .end local v3    # "i":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 315
    .end local v5    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 316
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "BackgroundDexOptService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "OnlineConfig resolve error:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    return-object v9
.end method

.method private runIdleOptimization(Landroid/app/job/JobParameters;Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;)Z
    .locals 10
    .param p1, "jobParams"    # Landroid/app/job/JobParameters;
    .param p2, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/job/JobParameters;",
            "Lcom/android/server/pm/PackageManagerService;",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p3, "pkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v9, 0x1

    .line 325
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mExitPostBootUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 327
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mAbortIdleOptimization:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 329
    invoke-direct {p0}, Lcom/android/server/pm/BackgroundDexOptService;->getLowStorageThreshold()J

    move-result-wide v6

    .line 331
    .local v6, "lowThreshold":J
    new-instance v1, Lcom/android/server/pm/BackgroundDexOptService$3;

    const-string/jumbo v3, "BackgroundDexOptService_IdleOptimization"

    move-object v2, p0

    move-object v4, p3

    move-object v5, p2

    move-object v8, p1

    invoke-direct/range {v1 .. v8}, Lcom/android/server/pm/BackgroundDexOptService$3;-><init>(Lcom/android/server/pm/BackgroundDexOptService;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/PackageManagerService;JLandroid/app/job/JobParameters;)V

    invoke-virtual {v1}, Lcom/android/server/pm/BackgroundDexOptService$3;->start()V

    .line 439
    return v9
.end method

.method private runIdleStorageLowOptimization(Landroid/app/job/JobParameters;Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;)Z
    .locals 7
    .param p1, "jobParams"    # Landroid/app/job/JobParameters;
    .param p2, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/job/JobParameters;",
            "Lcom/android/server/pm/PackageManagerService;",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p3, "pkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v6, 0x1

    .line 223
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mExitPostBootUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 225
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mAbortIdleOptimization:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 226
    new-instance v0, Lcom/android/server/pm/BackgroundDexOptService$2;

    const-string/jumbo v2, "BackgroundDexOptService_IdleOptimization"

    move-object v1, p0

    move-object v3, p3

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/BackgroundDexOptService$2;-><init>(Lcom/android/server/pm/BackgroundDexOptService;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/PackageManagerService;Landroid/app/job/JobParameters;)V

    invoke-virtual {v0}, Lcom/android/server/pm/BackgroundDexOptService$2;->start()V

    .line 288
    return v6
.end method

.method private runPostBootUpdate(Landroid/app/job/JobParameters;Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;)Z
    .locals 10
    .param p1, "jobParams"    # Landroid/app/job/JobParameters;
    .param p2, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/job/JobParameters;",
            "Lcom/android/server/pm/PackageManagerService;",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p3, "pkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 158
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mExitPostBootUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    return v2

    .line 164
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/BackgroundDexOptService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 165
    const v1, 0x10e0058

    .line 164
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 167
    .local v5, "lowBatteryThreshold":I
    invoke-direct {p0}, Lcom/android/server/pm/BackgroundDexOptService;->getLowStorageThreshold()J

    move-result-wide v6

    .line 169
    .local v6, "lowThreshold":J
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mAbortPostBootUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 170
    new-instance v1, Lcom/android/server/pm/BackgroundDexOptService$1;

    const-string/jumbo v3, "BackgroundDexOptService_PostBootUpdate"

    move-object v2, p0

    move-object v4, p3

    move-object v8, p2

    move-object v9, p1

    invoke-direct/range {v1 .. v9}, Lcom/android/server/pm/BackgroundDexOptService$1;-><init>(Lcom/android/server/pm/BackgroundDexOptService;Ljava/lang/String;Landroid/util/ArraySet;IJLcom/android/server/pm/PackageManagerService;Landroid/app/job/JobParameters;)V

    invoke-virtual {v1}, Lcom/android/server/pm/BackgroundDexOptService$1;->start()V

    .line 215
    const/4 v0, 0x1

    return v0
.end method

.method public static schedule(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    const-wide/16 v4, 0x1

    .line 96
    const-string/jumbo v1, "jobscheduler"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 99
    .local v0, "js":Landroid/app/job/JobScheduler;
    sput-object p0, Lcom/android/server/pm/BackgroundDexOptService;->mContext:Landroid/content/Context;

    .line 104
    new-instance v1, Landroid/app/job/JobInfo$Builder;

    sget-object v2, Lcom/android/server/pm/BackgroundDexOptService;->sDexoptServiceName:Landroid/content/ComponentName;

    const/16 v3, 0x321

    invoke-direct {v1, v3, v2}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 105
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 104
    invoke-virtual {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 106
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 104
    invoke-virtual {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 111
    new-instance v1, Landroid/app/job/JobInfo$Builder;

    sget-object v2, Lcom/android/server/pm/BackgroundDexOptService;->sDexoptServiceName:Landroid/content/ComponentName;

    const/16 v3, 0x320

    invoke-direct {v1, v3, v2}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    invoke-virtual {v1, v6}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 114
    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 111
    invoke-virtual {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 117
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_DEXOPT:Z

    if-eqz v1, :cond_0

    .line 118
    const-string/jumbo v1, "BackgroundDexOptService"

    const-string/jumbo v2, "Jobs scheduled"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_0
    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 9
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .prologue
    const/4 v8, 0x0

    .line 444
    sget-boolean v6, Lcom/android/server/pm/PackageManagerService;->DEBUG_DEXOPT:Z

    if-eqz v6, :cond_0

    .line 445
    const-string/jumbo v6, "BackgroundDexOptService"

    const-string/jumbo v7, "onStartJob"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    :cond_0
    const-string/jumbo v6, "package"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageManagerService;

    .line 452
    .local v3, "pm":Lcom/android/server/pm/PackageManagerService;
    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService;->isStorageLow()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 453
    sget-boolean v6, Lcom/android/server/pm/PackageManagerService;->DEBUG_DEXOPT:Z

    if-eqz v6, :cond_1

    .line 454
    const-string/jumbo v6, "BackgroundDexOptService"

    const-string/jumbo v7, "Low storage, skipping this run"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :cond_1
    return v8

    .line 459
    :cond_2
    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService;->getOptimizablePackages()Landroid/util/ArraySet;

    move-result-object v2

    .line 460
    .local v2, "pkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 461
    :cond_3
    sget-boolean v6, Lcom/android/server/pm/PackageManagerService;->DEBUG_DEXOPT:Z

    if-eqz v6, :cond_4

    .line 462
    const-string/jumbo v6, "BackgroundDexOptService"

    const-string/jumbo v7, "No packages to optimize"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :cond_4
    return v8

    .line 469
    :cond_5
    invoke-direct {p0}, Lcom/android/server/pm/BackgroundDexOptService;->getLowStorageThreshold()J

    move-result-wide v0

    .line 470
    .local v0, "lowThreshold":J
    iget-object v6, p0, Lcom/android/server/pm/BackgroundDexOptService;->dataDir:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v4

    .line 471
    .local v4, "usableSpace":J
    cmp-long v6, v4, v0

    if-gez v6, :cond_7

    .line 472
    sget-boolean v6, Lcom/android/server/pm/PackageManagerService;->DEBUG_DEXOPT:Z

    if-eqz v6, :cond_6

    .line 473
    const-string/jumbo v6, "BackgroundDexOptService"

    const-string/jumbo v7, "Low storage, runIdleStorageLowOptimization"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    :cond_6
    invoke-direct {p0, p1, v3, v2}, Lcom/android/server/pm/BackgroundDexOptService;->runIdleStorageLowOptimization(Landroid/app/job/JobParameters;Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;)Z

    move-result v6

    return v6

    .line 480
    :cond_7
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v6

    const/16 v7, 0x321

    if-ne v6, v7, :cond_8

    .line 481
    invoke-direct {p0, p1, v3, v2}, Lcom/android/server/pm/BackgroundDexOptService;->runPostBootUpdate(Landroid/app/job/JobParameters;Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;)Z

    move-result v6

    return v6

    .line 483
    :cond_8
    invoke-direct {p0, p1, v3, v2}, Lcom/android/server/pm/BackgroundDexOptService;->runIdleOptimization(Landroid/app/job/JobParameters;Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;)Z

    move-result v6

    return v6
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 3
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .prologue
    const/4 v2, 0x1

    .line 489
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_DEXOPT:Z

    if-eqz v0, :cond_0

    .line 490
    const-string/jumbo v0, "BackgroundDexOptService"

    const-string/jumbo v1, "onStopJob"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    :cond_0
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v0

    const/16 v1, 0x321

    if-ne v0, v1, :cond_1

    .line 494
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mAbortPostBootUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 498
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 496
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mAbortIdleOptimization:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0
.end method
