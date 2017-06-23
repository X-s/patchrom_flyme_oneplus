.class public final Lcom/android/server/am/ActiveServices;
.super Ljava/lang/Object;
.source "ActiveServices.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActiveServices$ServiceRestarter;,
        Lcom/android/server/am/ActiveServices$ServiceLookupResult;,
        Lcom/android/server/am/ActiveServices$ServiceMap;
    }
.end annotation


# static fields
.field static final BG_START_TIMEOUT:I = 0x3a98

.field private static final DEBUG_DELAYED_SERVICE:Z

.field private static final DEBUG_DELAYED_STARTS:Z

.field static final LAST_ANR_LIFETIME_DURATION_MSECS:I = 0x6ddd00

.field private static final LOG_SERVICE_START_STOP:Z = false

.field static final MAX_SERVICE_INACTIVITY:I = 0x1b7740

.field static final SERVICE_BACKGROUND_TIMEOUT:I = 0x30d40

.field static final SERVICE_MIN_RESTART_TIME_BETWEEN:I = 0x2710

.field private static final SERVICE_RESCHEDULE:Z

.field static final SERVICE_RESET_RUN_DURATION:I = 0xea60

.field static final SERVICE_RESTART_DURATION:I = 0x3e8

.field static final SERVICE_RESTART_DURATION_FACTOR:I = 0x4

.field static final SERVICE_TIMEOUT:I = 0x4e20

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_MU:Ljava/lang/String; = "ActivityManager_MU"

.field private static final TAG_SERVICE:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_SERVICE_EXECUTING:Ljava/lang/String; = "ActivityManager"


# instance fields
.field final mAm:Lcom/android/server/am/ActivityManagerService;

.field final mDestroyingServices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation
.end field

.field mLastAnrDump:Ljava/lang/String;

.field final mLastAnrDumpClearer:Ljava/lang/Runnable;

.field final mMaxStartingBackground:I

.field final mPendingServices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mRestartingServices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mServiceConnections:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/os/IBinder;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ConnectionRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field final mServiceMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/am/ActiveServices$ServiceMap;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpCollectionResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 81
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    sput-boolean v0, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_SERVICE:Z

    .line 82
    sget-boolean v0, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_SERVICE:Z

    sput-boolean v0, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_STARTS:Z

    .line 125
    const-string v0, "ro.am.reschedule_service"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ActiveServices;->SERVICE_RESCHEDULE:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 3
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    .line 134
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    .line 142
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    .line 147
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    .line 152
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    .line 155
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    .line 162
    new-instance v1, Lcom/android/server/am/ActiveServices$1;

    invoke-direct {v1, p0}, Lcom/android/server/am/ActiveServices$1;-><init>(Lcom/android/server/am/ActiveServices;)V

    iput-object v1, p0, Lcom/android/server/am/ActiveServices;->mLastAnrDumpClearer:Ljava/lang/Runnable;

    .line 275
    iput-object p1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 276
    const/4 v0, 0x0

    .line 278
    .local v0, "maxBg":I
    :try_start_0
    const-string v1, "ro.config.max_starting_bg"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 281
    :goto_0
    if-lez v0, :cond_0

    .end local v0    # "maxBg":I
    :goto_1
    iput v0, p0, Lcom/android/server/am/ActiveServices;->mMaxStartingBackground:I

    .line 283
    return-void

    .line 281
    .restart local v0    # "maxBg":I
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/16 v0, 0x8

    goto :goto_1

    .line 279
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 75
    sget-boolean v0, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_STARTS:Z

    return v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 75
    sget-boolean v0, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_SERVICE:Z

    return v0
.end method

.method private final bringDownServiceIfNeededLocked(Lcom/android/server/am/ServiceRecord;ZZ)V
    .locals 1
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "knowConn"    # Z
    .param p3, "hasConn"    # Z

    .prologue
    .line 1783
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/ActiveServices;->isServiceNeeded(Lcom/android/server/am/ServiceRecord;ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1793
    :cond_0
    :goto_0
    return-void

    .line 1788
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1792
    invoke-direct {p0, p1}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    goto :goto_0
.end method

.method private final bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V
    .locals 13
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;

    .prologue
    .line 1801
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v10

    add-int/lit8 v1, v10, -0x1

    .local v1, "conni":I
    :goto_0
    if-ltz v1, :cond_1

    .line 1802
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v10, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1803
    .local v0, "c":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v4, v10, :cond_0

    .line 1804
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ConnectionRecord;

    .line 1807
    .local v2, "cr":Lcom/android/server/am/ConnectionRecord;
    const/4 v10, 0x1

    iput-boolean v10, v2, Lcom/android/server/am/ConnectionRecord;->serviceDead:Z

    .line 1809
    :try_start_0
    iget-object v10, v2, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    iget-object v11, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Landroid/app/IServiceConnection;->connected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1803
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1810
    :catch_0
    move-exception v3

    .line 1811
    .local v3, "e":Ljava/lang/Exception;
    const-string v11, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failure disconnecting service "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v12, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " to connection "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ConnectionRecord;

    iget-object v10, v10, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    invoke-interface {v10}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " (in "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ConnectionRecord;

    iget-object v10, v10, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v10, v10, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v10, v10, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, ")"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1801
    .end local v2    # "cr":Lcom/android/server/am/ConnectionRecord;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1819
    .end local v0    # "c":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v4    # "i":I
    :cond_1
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v10, :cond_4

    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v10, v10, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v10, :cond_4

    .line 1820
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v10

    add-int/lit8 v4, v10, -0x1

    .restart local v4    # "i":I
    :goto_3
    if-ltz v4, :cond_4

    .line 1821
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v10, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/IntentBindRecord;

    .line 1822
    .local v5, "ibr":Lcom/android/server/am/IntentBindRecord;
    sget-boolean v10, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v10, :cond_2

    const-string v10, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Bringing down binding "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": hasBound="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, v5, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1824
    :cond_2
    iget-boolean v10, v5, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    if-eqz v10, :cond_3

    .line 1826
    const/4 v10, 0x0

    :try_start_1
    const-string v11, "bring down unbind"

    invoke-direct {p0, p1, v10, v11}, Lcom/android/server/am/ActiveServices;->bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;ZLjava/lang/String;)V

    .line 1827
    iget-object v10, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v10, v11}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;)Z

    .line 1828
    const/4 v10, 0x0

    iput-boolean v10, v5, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    .line 1829
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v10, v10, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v11, v5, Lcom/android/server/am/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v11}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-interface {v10, p1, v11}, Landroid/app/IApplicationThread;->scheduleUnbindService(Landroid/os/IBinder;Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1820
    :cond_3
    :goto_4
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 1831
    :catch_1
    move-exception v3

    .line 1832
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string v10, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception when unbinding service "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p1, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1834
    invoke-direct {p0, p1}, Lcom/android/server/am/ActiveServices;->serviceProcessGoneLocked(Lcom/android/server/am/ServiceRecord;)V

    goto :goto_4

    .line 1840
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "i":I
    .end local v5    # "ibr":Lcom/android/server/am/IntentBindRecord;
    :cond_4
    sget-boolean v10, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v10, :cond_5

    const-string v10, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Bringing down "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p1, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1841
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    iput-wide v10, p1, Lcom/android/server/am/ServiceRecord;->destroyTime:J

    .line 1847
    iget v10, p1, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-direct {p0, v10}, Lcom/android/server/am/ActiveServices;->getServiceMap(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v7

    .line 1848
    .local v7, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    iget-object v10, v7, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    iget-object v11, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v10, v11}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1849
    iget-object v10, v7, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByIntent:Landroid/util/ArrayMap;

    iget-object v11, p1, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v10, v11}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1850
    const/4 v10, 0x0

    iput v10, p1, Lcom/android/server/am/ServiceRecord;->totalRestartCount:I

    .line 1851
    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-direct {p0, p1, v10, v11}, Lcom/android/server/am/ActiveServices;->unscheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;IZ)Z

    .line 1854
    iget-object v10, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v4, v10, -0x1

    .restart local v4    # "i":I
    :goto_5
    if-ltz v4, :cond_7

    .line 1855
    iget-object v10, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, p1, :cond_6

    .line 1856
    iget-object v10, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1857
    sget-boolean v10, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v10, :cond_6

    const-string v10, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Removed pending: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1854
    :cond_6
    add-int/lit8 v4, v4, -0x1

    goto :goto_5

    .line 1861
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->cancelNotification()V

    .line 1862
    const/4 v10, 0x0

    iput-boolean v10, p1, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    .line 1863
    const/4 v10, 0x0

    iput v10, p1, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    .line 1864
    const/4 v10, 0x0

    iput-object v10, p1, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    .line 1867
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->clearDeliveredStartsLocked()V

    .line 1868
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 1870
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v10, :cond_d

    .line 1871
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v10}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v11

    monitor-enter v11

    .line 1872
    :try_start_2
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v10}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->stopLaunchedLocked()V

    .line 1873
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1874
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v10, v10, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v10, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1875
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v10, v10, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v10, :cond_c

    .line 1876
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v11, 0x0

    invoke-direct {p0, v10, v11}, Lcom/android/server/am/ActiveServices;->updateServiceForegroundLocked(Lcom/android/server/am/ProcessRecord;Z)V

    .line 1878
    const/4 v10, 0x0

    :try_start_3
    const-string v11, "destroy"

    invoke-direct {p0, p1, v10, v11}, Lcom/android/server/am/ActiveServices;->bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;ZLjava/lang/String;)V

    .line 1879
    iget-object v10, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1880
    const/4 v10, 0x1

    iput-boolean v10, p1, Lcom/android/server/am/ServiceRecord;->destroying:Z

    .line 1881
    iget-object v10, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v10, v11}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;)Z

    .line 1882
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v10, v10, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v10, p1}, Landroid/app/IApplicationThread;->scheduleStopService(Landroid/os/IBinder;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 1897
    :cond_8
    :goto_6
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v10

    if-lez v10, :cond_9

    .line 1898
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->clear()V

    .line 1901
    :cond_9
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    instance-of v10, v10, Lcom/android/server/am/ActiveServices$ServiceRestarter;

    if-eqz v10, :cond_a

    .line 1902
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    check-cast v10, Lcom/android/server/am/ActiveServices$ServiceRestarter;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/server/am/ActiveServices$ServiceRestarter;->setService(Lcom/android/server/am/ServiceRecord;)V

    .line 1905
    :cond_a
    iget-object v10, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v10}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v6

    .line 1906
    .local v6, "memFactor":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 1907
    .local v8, "now":J
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    if-eqz v10, :cond_b

    .line 1908
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    const/4 v11, 0x0

    invoke-virtual {v10, v11, v6, v8, v9}, Lcom/android/internal/app/ProcessStats$ServiceState;->setStarted(ZIJ)V

    .line 1909
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    const/4 v11, 0x0

    invoke-virtual {v10, v11, v6, v8, v9}, Lcom/android/internal/app/ProcessStats$ServiceState;->setBound(ZIJ)V

    .line 1910
    iget v10, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    if-nez v10, :cond_b

    .line 1911
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    const/4 v11, 0x0

    invoke-virtual {v10, p1, v11}, Lcom/android/internal/app/ProcessStats$ServiceState;->clearCurrentOwner(Ljava/lang/Object;Z)V

    .line 1912
    const/4 v10, 0x0

    iput-object v10, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    .line 1916
    :cond_b
    invoke-virtual {v7, p1}, Lcom/android/server/am/ActiveServices$ServiceMap;->ensureNotStartingBackground(Lcom/android/server/am/ServiceRecord;)V

    .line 1917
    return-void

    .line 1873
    .end local v6    # "memFactor":I
    .end local v8    # "now":J
    :catchall_0
    move-exception v10

    :try_start_4
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v10

    .line 1883
    :catch_2
    move-exception v3

    .line 1884
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string v10, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception when destroying service "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p1, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1886
    invoke-direct {p0, p1}, Lcom/android/server/am/ActiveServices;->serviceProcessGoneLocked(Lcom/android/server/am/ServiceRecord;)V

    goto :goto_6

    .line 1889
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_c
    sget-boolean v10, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v10, :cond_8

    const-string v10, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Removed service that has no process: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 1893
    :cond_d
    sget-boolean v10, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v10, :cond_8

    const-string v10, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Removed service that is not running: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6
.end method

.method private final bringUpServiceLocked(Lcom/android/server/am/ServiceRecord;IZZ)Ljava/lang/String;
    .locals 15
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "intentFlags"    # I
    .param p3, "execInFg"    # Z
    .param p4, "whileRestarting"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/TransactionTooLargeException;
        }
    .end annotation

    .prologue
    .line 1470
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_0

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_0

    .line 1471
    const/4 v2, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/am/ActiveServices;->sendServiceArgsLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    .line 1472
    const/4 v14, 0x0

    .line 1582
    :goto_0
    return-object v14

    .line 1475
    :cond_0
    if-nez p4, :cond_1

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_1

    .line 1477
    const/4 v14, 0x0

    goto :goto_0

    .line 1480
    :cond_1
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v2, :cond_2

    const-string v2, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bringing up "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    :cond_2
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1485
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ServiceRecord;->resetRestartCounter()V

    .line 1486
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->clearRestartingIfNeededLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 1490
    :cond_3
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/server/am/ServiceRecord;->delayed:Z

    if-eqz v2, :cond_5

    .line 1491
    sget-boolean v2, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_STARTS:Z

    if-eqz v2, :cond_4

    const-string v2, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "REM FR DELAY LIST (bring up): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    :cond_4
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-direct {p0, v2}, Lcom/android/server/am/ActiveServices;->getServiceMap(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1493
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/server/am/ServiceRecord;->delayed:Z

    .line 1498
    :cond_5
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStartedUsers:Landroid/util/SparseArray;

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_6

    .line 1499
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to launch app "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " for service "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v4}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": user "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " is stopped"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1503
    .local v14, "msg":Ljava/lang/String;
    const-string v2, "ActivityManager"

    invoke-static {v2, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1504
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    goto/16 :goto_0

    .line 1510
    .end local v14    # "msg":Ljava/lang/String;
    :cond_6
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-interface {v2, v4, v5, v6}, Landroid/content/pm/IPackageManager;->setPackageStoppedState(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1518
    :goto_1
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v2, v2, Landroid/content/pm/ServiceInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_8

    const/4 v10, 0x1

    .line 1519
    .local v10, "isolated":Z
    :goto_2
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    .line 1522
    .local v3, "procName":Ljava/lang/String;
    if-nez v10, :cond_a

    .line 1523
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v12

    .line 1524
    .local v12, "app":Lcom/android/server/am/ProcessRecord;
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    if-eqz v2, :cond_7

    const-string v2, "ActivityManager_MU"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bringUpServiceLocked: appInfo.uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " app="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1526
    :cond_7
    if-eqz v12, :cond_9

    iget-object v2, v12, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_9

    .line 1528
    :try_start_1
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->versionCode:I

    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v12, v2, v4, v5}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;ILcom/android/server/am/ProcessStatsService;)Z

    .line 1529
    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-direct {p0, v0, v12, v1}, Lcom/android/server/am/ActiveServices;->realStartServiceLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/ProcessRecord;Z)V
    :try_end_1
    .catch Landroid/os/TransactionTooLargeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1530
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 1513
    .end local v3    # "procName":Ljava/lang/String;
    .end local v10    # "isolated":Z
    .end local v12    # "app":Lcom/android/server/am/ProcessRecord;
    :catch_0
    move-exception v13

    .line 1514
    .local v13, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed trying to unstop package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1518
    .end local v13    # "e":Ljava/lang/IllegalArgumentException;
    :cond_8
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 1531
    .restart local v3    # "procName":Ljava/lang/String;
    .restart local v10    # "isolated":Z
    .restart local v12    # "app":Lcom/android/server/am/ProcessRecord;
    :catch_1
    move-exception v13

    .line 1532
    .local v13, "e":Landroid/os/TransactionTooLargeException;
    throw v13

    .line 1533
    .end local v13    # "e":Landroid/os/TransactionTooLargeException;
    :catch_2
    move-exception v13

    .line 1534
    .local v13, "e":Landroid/os/RemoteException;
    const-string v2, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception when starting service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1552
    .end local v13    # "e":Landroid/os/RemoteException;
    :cond_9
    :goto_3
    if-nez v12, :cond_c

    .line 1553
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v5, 0x1

    const-string v7, "service"

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    const/4 v9, 0x0

    const/4 v11, 0x0

    move/from16 v6, p2

    invoke-virtual/range {v2 .. v11}, Lcom/android/server/am/ActivityManagerService;->startProcessLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILjava/lang/String;Landroid/content/ComponentName;ZZZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v12

    if-nez v12, :cond_b

    .line 1555
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to launch app "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " for service "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v4}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": process is bad"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1559
    .restart local v14    # "msg":Ljava/lang/String;
    const-string v2, "ActivityManager"

    invoke-static {v2, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1560
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    goto/16 :goto_0

    .line 1547
    .end local v12    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v14    # "msg":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    .restart local v12    # "app":Lcom/android/server/am/ProcessRecord;
    goto :goto_3

    .line 1563
    :cond_b
    if-eqz v10, :cond_c

    .line 1564
    move-object/from16 v0, p1

    iput-object v12, v0, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    .line 1568
    :cond_c
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 1569
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1572
    :cond_d
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    if-eqz v2, :cond_f

    .line 1574
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    .line 1575
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v2, :cond_f

    .line 1576
    sget-boolean v2, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_STARTS:Z

    if-eqz v2, :cond_e

    const-string v2, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Applying delayed stop (in bring up): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    :cond_e
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->stopServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 1582
    :cond_f
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 1512
    .end local v3    # "procName":Ljava/lang/String;
    .end local v10    # "isolated":Z
    .end local v12    # "app":Lcom/android/server/am/ProcessRecord;
    :catch_3
    move-exception v2

    goto/16 :goto_1
.end method

.method private final bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;ZLjava/lang/String;)V
    .locals 7
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "fg"    # Z
    .param p3, "why"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 1176
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v3, :cond_3

    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ">>> EXECUTING "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in app "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1181
    .local v0, "now":J
    iget v3, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    if-nez v3, :cond_4

    .line 1182
    iput-boolean p2, p1, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    .line 1183
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->getTracker()Lcom/android/internal/app/ProcessStats$ServiceState;

    move-result-object v2

    .line 1184
    .local v2, "stracker":Lcom/android/internal/app/ProcessStats$ServiceState;
    if-eqz v2, :cond_1

    .line 1185
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v3

    invoke-virtual {v2, v6, v3, v0, v1}, Lcom/android/internal/app/ProcessStats$ServiceState;->setExecuting(ZIJ)V

    .line 1187
    :cond_1
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_2

    .line 1188
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v3, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1189
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v4, v3, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    or-int/2addr v4, p2

    iput-boolean v4, v3, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    .line 1190
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ne v3, v6, :cond_2

    .line 1191
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0, v3}, Lcom/android/server/am/ActiveServices;->scheduleServiceTimeoutLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 1198
    .end local v2    # "stracker":Lcom/android/internal/app/ProcessStats$ServiceState;
    :cond_2
    :goto_1
    iget-boolean v3, p1, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    or-int/2addr v3, p2

    iput-boolean v3, p1, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    .line 1199
    iget v3, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    .line 1200
    iput-wide v0, p1, Lcom/android/server/am/ServiceRecord;->executingStart:J

    .line 1201
    return-void

    .line 1178
    .end local v0    # "now":J
    :cond_3
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE_EXECUTING:Z

    if-eqz v3, :cond_0

    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ">>> EXECUTING "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1194
    .restart local v0    # "now":J
    :cond_4
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_2

    if-eqz p2, :cond_2

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v3, v3, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    if-nez v3, :cond_2

    .line 1195
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput-boolean v6, v3, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    .line 1196
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0, v3}, Lcom/android/server/am/ActiveServices;->scheduleServiceTimeoutLocked(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_1
.end method

.method private clearRestartingIfNeededLocked(Lcom/android/server/am/ServiceRecord;)V
    .locals 8
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;

    .prologue
    .line 1447
    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    if-eqz v2, :cond_1

    .line 1450
    const/4 v1, 0x0

    .line 1451
    .local v1, "stillTracking":Z
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1452
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ServiceRecord;

    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    if-ne v2, v3, :cond_2

    .line 1453
    const/4 v1, 0x1

    .line 1457
    :cond_0
    if-nez v1, :cond_1

    .line 1458
    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v2, v3, v4, v6, v7}, Lcom/android/internal/app/ProcessStats$ServiceState;->setRestarting(ZIJ)V

    .line 1460
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    .line 1463
    .end local v0    # "i":I
    .end local v1    # "stillTracking":Z
    :cond_1
    return-void

    .line 1451
    .restart local v0    # "i":I
    .restart local v1    # "stillTracking":Z
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private collectPackageServicesLocked(Ljava/lang/String;Ljava/util/Set;ZZZLandroid/util/ArrayMap;)Z
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "evenPersistent"    # Z
    .param p4, "doit"    # Z
    .param p5, "killProcess"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;ZZZ",
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/am/ServiceRecord;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "filterByClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p6, "services":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    const/4 v8, 0x0

    const/4 v4, 0x1

    .line 2228
    const/4 v0, 0x0

    .line 2229
    .local v0, "didSomething":Z
    invoke-virtual {p6}, Landroid/util/ArrayMap;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 2230
    invoke-virtual {p6, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ServiceRecord;

    .line 2231
    .local v3, "service":Lcom/android/server/am/ServiceRecord;
    if-eqz p1, :cond_0

    iget-object v5, v3, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz p2, :cond_0

    iget-object v5, v3, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_0
    move v2, v4

    .line 2235
    .local v2, "sameComponent":Z
    :goto_1
    if-eqz v2, :cond_7

    iget-object v5, v3, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_1

    if-nez p3, :cond_1

    iget-object v5, v3, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v5, v5, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-nez v5, :cond_7

    .line 2237
    :cond_1
    if-nez p4, :cond_4

    move v0, v4

    .line 2256
    .end local v0    # "didSomething":Z
    .end local v2    # "sameComponent":Z
    .end local v3    # "service":Lcom/android/server/am/ServiceRecord;
    :cond_2
    return v0

    .line 2231
    .restart local v0    # "didSomething":Z
    .restart local v3    # "service":Lcom/android/server/am/ServiceRecord;
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 2240
    .restart local v2    # "sameComponent":Z
    :cond_4
    const/4 v0, 0x1

    .line 2241
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  Force stopping service "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2242
    iget-object v5, v3, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_5

    .line 2243
    iget-object v5, v3, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput-boolean p5, v5, Lcom/android/server/am/ProcessRecord;->removed:Z

    .line 2244
    iget-object v5, v3, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v5, v5, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-nez v5, :cond_5

    .line 2245
    iget-object v5, v3, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v5, v3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 2248
    :cond_5
    iput-object v8, v3, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 2249
    iput-object v8, v3, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    .line 2250
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    if-nez v5, :cond_6

    .line 2251
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    .line 2253
    :cond_6
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2229
    :cond_7
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private dumpService(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/am/ServiceRecord;[Ljava/lang/String;Z)V
    .locals 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "pw"    # Ljava/io/PrintWriter;
    .param p4, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p5, "args"    # [Ljava/lang/String;
    .param p6, "dumpAll"    # Z

    .prologue
    .line 3013
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3014
    .local v1, "innerPrefix":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 3015
    :try_start_0
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "SERVICE "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3016
    iget-object v3, p4, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3017
    invoke-static {p4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3018
    const-string v3, " pid="

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3019
    iget-object v3, p4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_2

    iget-object v3, p4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v3, v3, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 3021
    :goto_0
    if-eqz p6, :cond_0

    .line 3022
    invoke-virtual {p4, p3, v1}, Lcom/android/server/am/ServiceRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 3024
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3025
    iget-object v3, p4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_1

    iget-object v3, p4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_1

    .line 3026
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  Client:"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3027
    invoke-virtual {p3}, Ljava/io/PrintWriter;->flush()V

    .line 3029
    :try_start_1
    new-instance v2, Lcom/android/internal/os/TransferPipe;

    invoke-direct {v2}, Lcom/android/internal/os/TransferPipe;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3031
    .local v2, "tp":Lcom/android/internal/os/TransferPipe;
    :try_start_2
    iget-object v3, p4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-virtual {v2}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-interface {v3, v4, p4, p5}, Landroid/app/IApplicationThread;->dumpService(Ljava/io/FileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V

    .line 3032
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/os/TransferPipe;->setBufferPrefix(Ljava/lang/String;)V

    .line 3033
    invoke-virtual {v2, p2}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3035
    :try_start_3
    invoke-virtual {v2}, Lcom/android/internal/os/TransferPipe;->kill()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 3043
    .end local v2    # "tp":Lcom/android/internal/os/TransferPipe;
    :cond_1
    :goto_1
    return-void

    .line 3020
    :cond_2
    :try_start_4
    const-string v3, "(not running)"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 3024
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    .line 3035
    .restart local v2    # "tp":Lcom/android/internal/os/TransferPipe;
    :catchall_1
    move-exception v3

    :try_start_5
    invoke-virtual {v2}, Lcom/android/internal/os/TransferPipe;->kill()V

    throw v3
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 3037
    .end local v2    # "tp":Lcom/android/internal/os/TransferPipe;
    :catch_0
    move-exception v0

    .line 3038
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    Failure while dumping the service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 3039
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 3040
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    Got a RemoteException while dumping the service"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private final findServiceLocked(Landroid/content/ComponentName;Landroid/os/IBinder;I)Lcom/android/server/am/ServiceRecord;
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "userId"    # I

    .prologue
    .line 1035
    invoke-virtual {p0, p1, p3}, Lcom/android/server/am/ActiveServices;->getServiceByName(Landroid/content/ComponentName;I)Lcom/android/server/am/ServiceRecord;

    move-result-object v0

    .line 1036
    .local v0, "r":Lcom/android/server/am/ServiceRecord;
    if-ne v0, p2, :cond_0

    .end local v0    # "r":Lcom/android/server/am/ServiceRecord;
    :goto_0
    return-object v0

    .restart local v0    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getServiceMap(I)Lcom/android/server/am/ActiveServices$ServiceMap;
    .locals 2
    .param p1, "callingUser"    # I

    .prologue
    .line 298
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActiveServices$ServiceMap;

    .line 299
    .local v0, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    if-nez v0, :cond_0

    .line 300
    new-instance v0, Lcom/android/server/am/ActiveServices$ServiceMap;

    .end local v0    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/android/server/am/ActiveServices$ServiceMap;-><init>(Lcom/android/server/am/ActiveServices;Landroid/os/Looper;I)V

    .line 301
    .restart local v0    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 303
    :cond_0
    return-object v0
.end method

.method private final isServiceNeeded(Lcom/android/server/am/ServiceRecord;ZZ)Z
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "knowConn"    # Z
    .param p3, "hasConn"    # Z

    .prologue
    const/4 v0, 0x1

    .line 1763
    iget-boolean v1, p1, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v1, :cond_1

    .line 1775
    :cond_0
    :goto_0
    return v0

    .line 1768
    :cond_1
    if-nez p2, :cond_2

    .line 1769
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->hasAutoCreateConnections()Z

    move-result p3

    .line 1771
    :cond_2
    if-nez p3, :cond_0

    .line 1775
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final realStartServiceLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/ProcessRecord;Z)V
    .locals 11
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "execInFg"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1597
    iget-object v0, p2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v0, :cond_0

    .line 1598
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 1600
    :cond_0
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    if-eqz v0, :cond_1

    .line 1601
    const-string v0, "ActivityManager_MU"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "realStartServiceLocked, ServiceRecord.uid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ProcessRecord.uid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1603
    :cond_1
    iput-object p2, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 1604
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    iput-wide v0, p1, Lcom/android/server/am/ServiceRecord;->restartTime:J

    .line 1606
    iget-object v0, p2, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 1607
    .local v9, "newService":Z
    const-string v0, "create"

    invoke-direct {p0, p1, p3, v0}, Lcom/android/server/am/ActiveServices;->bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;ZLjava/lang/String;)V

    .line 1608
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 1609
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    .line 1611
    const/4 v6, 0x0

    .line 1620
    .local v6, "created":Z
    :try_start_0
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1621
    :try_start_1
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->startLaunchedLocked()V

    .line 1622
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1623
    :try_start_2
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->ensurePackageDexOpt(Ljava/lang/String;)V

    .line 1624
    const/16 v0, 0xa

    invoke-virtual {p2, v0}, Lcom/android/server/am/ProcessRecord;->forceProcessStateUpTo(I)V

    .line 1625
    iget-object v0, p2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v2

    iget v3, p2, Lcom/android/server/am/ProcessRecord;->repProcState:I

    invoke-interface {v0, p1, v1, v2, v3}, Landroid/app/IApplicationThread;->scheduleCreateService(Landroid/os/IBinder;Landroid/content/pm/ServiceInfo;Landroid/content/res/CompatibilityInfo;I)V

    .line 1628
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->postNotification()V
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1629
    const/4 v6, 0x1

    .line 1635
    if-nez v6, :cond_3

    .line 1637
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    .line 1638
    .local v8, "inDestroying":Z
    invoke-direct {p0, p1, v8, v8}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    .line 1641
    if-eqz v9, :cond_2

    .line 1642
    iget-object v0, p2, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1643
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 1644
    sget-boolean v0, Lcom/android/server/am/ActiveServices;->SERVICE_RESCHEDULE:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_SERVICE:Z

    if-eqz v0, :cond_2

    .line 1645
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Failed to create Service !!!! .This will introduce huge delay...  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1652
    :cond_2
    if-nez v8, :cond_3

    .line 1653
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/ActiveServices;->scheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;Z)Z

    .line 1658
    .end local v8    # "inDestroying":Z
    :cond_3
    invoke-direct {p0, p1, p3}, Lcom/android/server/am/ActiveServices;->requestServiceBindingsLocked(Lcom/android/server/am/ServiceRecord;Z)V

    .line 1660
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Lcom/android/server/am/ActiveServices;->updateServiceClientActivitiesLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ConnectionRecord;Z)Z

    .line 1665
    iget-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->callStart:Z

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 1666
    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/am/ServiceRecord$StartItem;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->makeNextStartId()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ServiceRecord$StartItem;-><init>(Lcom/android/server/am/ServiceRecord;ZILandroid/content/Intent;Lcom/android/server/am/ActivityManagerService$NeededUriGrants;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1670
    :cond_4
    const/4 v0, 0x1

    invoke-direct {p0, p1, p3, v0}, Lcom/android/server/am/ActiveServices;->sendServiceArgsLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    .line 1672
    iget-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->delayed:Z

    if-eqz v0, :cond_6

    .line 1673
    sget-boolean v0, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_STARTS:Z

    if-eqz v0, :cond_5

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "REM FR DELAY LIST (new proc): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1674
    :cond_5
    iget v0, p1, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-direct {p0, v0}, Lcom/android/server/am/ActiveServices;->getServiceMap(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1675
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->delayed:Z

    .line 1678
    :cond_6
    iget-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    if-eqz v0, :cond_8

    .line 1680
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    .line 1681
    iget-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v0, :cond_8

    .line 1682
    sget-boolean v0, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_STARTS:Z

    if-eqz v0, :cond_7

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Applying delayed stop (from start): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1684
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/server/am/ActiveServices;->stopServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 1687
    :cond_8
    return-void

    .line 1622
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Landroid/os/DeadObjectException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1630
    :catch_0
    move-exception v7

    .line 1631
    .local v7, "e":Landroid/os/DeadObjectException;
    :try_start_5
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Application dead when creating service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1632
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p2}, Lcom/android/server/am/ActivityManagerService;->appDiedLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 1633
    throw v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1635
    .end local v7    # "e":Landroid/os/DeadObjectException;
    :catchall_1
    move-exception v0

    if-nez v6, :cond_a

    .line 1637
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    .line 1638
    .restart local v8    # "inDestroying":Z
    invoke-direct {p0, p1, v8, v8}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    .line 1641
    if-eqz v9, :cond_9

    .line 1642
    iget-object v1, p2, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1643
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 1644
    sget-boolean v1, Lcom/android/server/am/ActiveServices;->SERVICE_RESCHEDULE:Z

    if-eqz v1, :cond_9

    sget-boolean v1, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_SERVICE:Z

    if-eqz v1, :cond_9

    .line 1645
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Failed to create Service !!!! .This will introduce huge delay...  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1652
    :cond_9
    if-nez v8, :cond_a

    .line 1653
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/server/am/ActiveServices;->scheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;Z)Z

    .line 1655
    .end local v8    # "inDestroying":Z
    :cond_a
    throw v0
.end method

.method private final requestServiceBindingLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/IntentBindRecord;ZZ)Z
    .locals 7
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "i"    # Lcom/android/server/am/IntentBindRecord;
    .param p3, "execInFg"    # Z
    .param p4, "rebind"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/TransactionTooLargeException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1205
    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_0

    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v4, :cond_1

    .line 1234
    :cond_0
    :goto_0
    return v2

    .line 1209
    :cond_1
    iget-boolean v4, p2, Lcom/android/server/am/IntentBindRecord;->requested:Z

    if-eqz v4, :cond_2

    if-eqz p4, :cond_4

    :cond_2
    iget-object v4, p2, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 1211
    :try_start_0
    const-string v4, "bind"

    invoke-direct {p0, p1, p3, v4}, Lcom/android/server/am/ActiveServices;->bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;ZLjava/lang/String;)V

    .line 1212
    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Lcom/android/server/am/ProcessRecord;->forceProcessStateUpTo(I)V

    .line 1213
    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v5, p2, Lcom/android/server/am/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v5}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v5

    iget-object v6, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v6, v6, Lcom/android/server/am/ProcessRecord;->repProcState:I

    invoke-interface {v4, p1, v5, p4, v6}, Landroid/app/IApplicationThread;->scheduleBindService(Landroid/os/IBinder;Landroid/content/Intent;ZI)V

    .line 1215
    if-nez p4, :cond_3

    .line 1216
    const/4 v4, 0x1

    iput-boolean v4, p2, Lcom/android/server/am/IntentBindRecord;->requested:Z

    .line 1218
    :cond_3
    const/4 v4, 0x1

    iput-boolean v4, p2, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    .line 1219
    const/4 v4, 0x0

    iput-boolean v4, p2, Lcom/android/server/am/IntentBindRecord;->doRebind:Z
    :try_end_0
    .catch Landroid/os/TransactionTooLargeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_4
    move v2, v3

    .line 1234
    goto :goto_0

    .line 1220
    :catch_0
    move-exception v0

    .line 1222
    .local v0, "e":Landroid/os/TransactionTooLargeException;
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v2, :cond_5

    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Crashed while binding "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1223
    :cond_5
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 1224
    .local v1, "inDestroying":Z
    invoke-direct {p0, p1, v1, v1}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    .line 1225
    throw v0

    .line 1226
    .end local v0    # "e":Landroid/os/TransactionTooLargeException;
    .end local v1    # "inDestroying":Z
    :catch_1
    move-exception v0

    .line 1227
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v3, :cond_6

    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Crashed while binding "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    :cond_6
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 1230
    .restart local v1    # "inDestroying":Z
    invoke-direct {p0, p1, v1, v1}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    goto/16 :goto_0
.end method

.method private final requestServiceBindingsLocked(Lcom/android/server/am/ServiceRecord;Z)V
    .locals 3
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "execInFg"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/TransactionTooLargeException;
        }
    .end annotation

    .prologue
    .line 1587
    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1588
    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/IntentBindRecord;

    .line 1589
    .local v1, "ibr":Lcom/android/server/am/IntentBindRecord;
    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, p2, v2}, Lcom/android/server/am/ActiveServices;->requestServiceBindingLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/IntentBindRecord;ZZ)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1593
    .end local v1    # "ibr":Lcom/android/server/am/IntentBindRecord;
    :cond_0
    return-void

    .line 1587
    .restart local v1    # "ibr":Lcom/android/server/am/IntentBindRecord;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private retrieveServiceLocked(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;IIIZZ)Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    .locals 27
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "callingPid"    # I
    .param p5, "callingUid"    # I
    .param p6, "userId"    # I
    .param p7, "createIfNeeded"    # Z
    .param p8, "callingFromFg"    # Z

    .prologue
    .line 1066
    const/16 v22, 0x0

    .line 1067
    .local v22, "r":Lcom/android/server/am/ServiceRecord;
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v4, :cond_0

    const-string v4, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "retrieveServiceLocked: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " type="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " callingUid="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p5

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-string v9, "service"

    const/4 v10, 0x0

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/am/ActivityManagerService;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result p6

    .line 1073
    move-object/from16 v0, p0

    move/from16 v1, p6

    invoke-direct {v0, v1}, Lcom/android/server/am/ActiveServices;->getServiceMap(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v25

    .line 1074
    .local v25, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v18

    .line 1075
    .local v18, "comp":Landroid/content/ComponentName;
    if-eqz v18, :cond_e

    .line 1076
    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ServiceRecord;

    .line 1078
    .end local v22    # "r":Lcom/android/server/am/ServiceRecord;
    .local v3, "r":Lcom/android/server/am/ServiceRecord;
    :goto_0
    if-nez v3, :cond_1

    .line 1079
    new-instance v7, Landroid/content/Intent$FilterComparison;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 1080
    .local v7, "filter":Landroid/content/Intent$FilterComparison;
    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByIntent:Landroid/util/ArrayMap;

    invoke-virtual {v4, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "r":Lcom/android/server/am/ServiceRecord;
    check-cast v3, Lcom/android/server/am/ServiceRecord;

    .line 1082
    .end local v7    # "filter":Landroid/content/Intent$FilterComparison;
    .restart local v3    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_1
    if-nez v3, :cond_7

    .line 1084
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    const/16 v9, 0x400

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p6

    invoke-interface {v4, v0, v1, v9, v2}, Landroid/content/pm/IPackageManager;->resolveService(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v23

    .line 1088
    .local v23, "rInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v23, :cond_2

    move-object/from16 v0, v23

    iget-object v8, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 1090
    .local v8, "sInfo":Landroid/content/pm/ServiceInfo;
    :goto_1
    if-nez v8, :cond_3

    .line 1091
    const-string v4, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to start service "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " U="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p6

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ": not found"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    const/4 v4, 0x0

    .line 1172
    .end local v8    # "sInfo":Landroid/content/pm/ServiceInfo;
    .end local v23    # "rInfo":Landroid/content/pm/ResolveInfo;
    :goto_2
    return-object v4

    .line 1088
    .restart local v23    # "rInfo":Landroid/content/pm/ResolveInfo;
    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    .line 1095
    .restart local v8    # "sInfo":Landroid/content/pm/ServiceInfo;
    :cond_3
    new-instance v6, Landroid/content/ComponentName;

    iget-object v4, v8, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v9, v8, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v4, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1097
    .local v6, "name":Landroid/content/ComponentName;
    if-lez p6, :cond_5

    .line 1098
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v8, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    iget-object v11, v8, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v8, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    iget v13, v8, Landroid/content/pm/ServiceInfo;->flags:I

    invoke-virtual {v4, v9, v11, v12, v13}, Lcom/android/server/am/ActivityManagerService;->isSingleton(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v8, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v0, p5

    invoke-virtual {v4, v0, v9}, Lcom/android/server/am/ActivityManagerService;->isValidSingletonCall(II)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1101
    const/16 p6, 0x0

    .line 1102
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/am/ActiveServices;->getServiceMap(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v25

    .line 1104
    :cond_4
    new-instance v24, Landroid/content/pm/ServiceInfo;

    move-object/from16 v0, v24

    invoke-direct {v0, v8}, Landroid/content/pm/ServiceInfo;-><init>(Landroid/content/pm/ServiceInfo;)V

    .line 1105
    .end local v8    # "sInfo":Landroid/content/pm/ServiceInfo;
    .local v24, "sInfo":Landroid/content/pm/ServiceInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v24

    iget-object v9, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move/from16 v0, p6

    invoke-virtual {v4, v9, v0}, Lcom/android/server/am/ActivityManagerService;->getAppInfoForUser(Landroid/content/pm/ApplicationInfo;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    move-object/from16 v0, v24

    iput-object v4, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v8, v24

    .line 1107
    .end local v24    # "sInfo":Landroid/content/pm/ServiceInfo;
    :cond_5
    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/am/ServiceRecord;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1108
    .end local v3    # "r":Lcom/android/server/am/ServiceRecord;
    .restart local v22    # "r":Lcom/android/server/am/ServiceRecord;
    if-nez v22, :cond_d

    if-eqz p7, :cond_d

    .line 1109
    :try_start_1
    new-instance v7, Landroid/content/Intent$FilterComparison;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object v4

    invoke-direct {v7, v4}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 1111
    .restart local v7    # "filter":Landroid/content/Intent$FilterComparison;
    new-instance v10, Lcom/android/server/am/ActiveServices$ServiceRestarter;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v4}, Lcom/android/server/am/ActiveServices$ServiceRestarter;-><init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ActiveServices$1;)V

    .line 1112
    .local v10, "res":Lcom/android/server/am/ActiveServices$ServiceRestarter;
    const/4 v5, 0x0

    .line 1113
    .local v5, "ss":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v4}, Lcom/android/server/am/BatteryStatsService;->getActiveStatistics()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v26

    .line 1114
    .local v26, "stats":Lcom/android/internal/os/BatteryStatsImpl;
    monitor-enter v26
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1115
    :try_start_2
    iget-object v4, v8, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v9, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v11, v8, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v9, v11}, Lcom/android/internal/os/BatteryStatsImpl;->getServiceStatsLocked(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    move-result-object v5

    .line 1118
    monitor-exit v26
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1119
    :try_start_3
    new-instance v3, Lcom/android/server/am/ServiceRecord;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    move/from16 v9, p8

    invoke-direct/range {v3 .. v10}, Lcom/android/server/am/ServiceRecord;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;Landroid/content/ComponentName;Landroid/content/Intent$FilterComparison;Landroid/content/pm/ServiceInfo;ZLjava/lang/Runnable;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1120
    .end local v22    # "r":Lcom/android/server/am/ServiceRecord;
    .restart local v3    # "r":Lcom/android/server/am/ServiceRecord;
    :try_start_4
    invoke-virtual {v10, v3}, Lcom/android/server/am/ActiveServices$ServiceRestarter;->setService(Lcom/android/server/am/ServiceRecord;)V

    .line 1121
    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    invoke-virtual {v4, v6, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1122
    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByIntent:Landroid/util/ArrayMap;

    invoke-virtual {v4, v7, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1125
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v19, v4, -0x1

    .local v19, "i":I
    :goto_3
    if-ltz v19, :cond_7

    .line 1126
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/am/ServiceRecord;

    .line 1127
    .local v21, "pr":Lcom/android/server/am/ServiceRecord;
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v9, v8, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v4, v9, :cond_6

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v4, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1129
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 1125
    :cond_6
    add-int/lit8 v19, v19, -0x1

    goto :goto_3

    .line 1118
    .end local v3    # "r":Lcom/android/server/am/ServiceRecord;
    .end local v19    # "i":I
    .end local v21    # "pr":Lcom/android/server/am/ServiceRecord;
    .restart local v22    # "r":Lcom/android/server/am/ServiceRecord;
    :catchall_0
    move-exception v4

    :try_start_5
    monitor-exit v26
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v4
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    .line 1133
    .end local v5    # "ss":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    .end local v7    # "filter":Landroid/content/Intent$FilterComparison;
    .end local v10    # "res":Lcom/android/server/am/ActiveServices$ServiceRestarter;
    .end local v26    # "stats":Lcom/android/internal/os/BatteryStatsImpl;
    :catch_0
    move-exception v4

    move-object/from16 v3, v22

    .line 1137
    .end local v6    # "name":Landroid/content/ComponentName;
    .end local v22    # "r":Lcom/android/server/am/ServiceRecord;
    .end local v23    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v3    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_7
    :goto_4
    if-eqz v3, :cond_c

    .line 1138
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v3, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    iget-object v4, v3, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v15, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-boolean v0, v3, Lcom/android/server/am/ServiceRecord;->exported:Z

    move/from16 v16, v0

    move/from16 v13, p4

    move/from16 v14, p5

    invoke-virtual/range {v11 .. v16}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v4

    if-eqz v4, :cond_9

    .line 1141
    iget-boolean v4, v3, Lcom/android/server/am/ServiceRecord;->exported:Z

    if-nez v4, :cond_8

    .line 1142
    const-string v4, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Permission Denial: Accessing service "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, v3, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " from pid="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p4

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ", uid="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p5

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " that is not exported from uid "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, v3, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    new-instance v4, Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    const/4 v9, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "not exported from uid "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v3, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v9, v11}, Lcom/android/server/am/ActiveServices$ServiceLookupResult;-><init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1149
    :cond_8
    const-string v4, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Permission Denial: Accessing service "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, v3, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " from pid="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p4

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ", uid="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p5

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " requires "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, v3, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    new-instance v4, Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    const/4 v9, 0x0

    iget-object v11, v3, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v9, v11}, Lcom/android/server/am/ActiveServices$ServiceLookupResult;-><init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1154
    :cond_9
    iget-object v4, v3, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    if-eqz v4, :cond_a

    if-eqz p3, :cond_a

    .line 1155
    iget-object v4, v3, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    invoke-static {v4}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v20

    .line 1156
    .local v20, "opCode":I
    const/4 v4, -0x1

    move/from16 v0, v20

    if-eq v0, v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    move/from16 v0, v20

    move/from16 v1, p5

    move-object/from16 v2, p3

    invoke-virtual {v4, v0, v1, v2}, Lcom/android/server/AppOpsService;->noteOperation(IILjava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_a

    .line 1158
    const-string v4, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Appop Denial: Accessing service "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, v3, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " from pid="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p4

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ", uid="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p5

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " requires appop "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static/range {v20 .. v20}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 1166
    .end local v20    # "opCode":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v4, Lcom/android/server/am/ActivityManagerService;->mIntentFirewall:Lcom/android/server/firewall/IntentFirewall;

    iget-object v12, v3, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    iget-object v0, v3, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v13, p1

    move/from16 v14, p5

    move/from16 v15, p4

    move-object/from16 v16, p2

    invoke-virtual/range {v11 .. v17}, Lcom/android/server/firewall/IntentFirewall;->checkService(Landroid/content/ComponentName;Landroid/content/Intent;IILjava/lang/String;Landroid/content/pm/ApplicationInfo;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 1168
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 1170
    :cond_b
    new-instance v4, Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v3, v9}, Lcom/android/server/am/ActiveServices$ServiceLookupResult;-><init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1172
    :cond_c
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 1133
    :catch_1
    move-exception v4

    goto/16 :goto_4

    .end local v3    # "r":Lcom/android/server/am/ServiceRecord;
    .restart local v6    # "name":Landroid/content/ComponentName;
    .restart local v22    # "r":Lcom/android/server/am/ServiceRecord;
    .restart local v23    # "rInfo":Landroid/content/pm/ResolveInfo;
    :cond_d
    move-object/from16 v3, v22

    .end local v22    # "r":Lcom/android/server/am/ServiceRecord;
    .restart local v3    # "r":Lcom/android/server/am/ServiceRecord;
    goto/16 :goto_4

    .end local v3    # "r":Lcom/android/server/am/ServiceRecord;
    .end local v6    # "name":Landroid/content/ComponentName;
    .end local v23    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v22    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_e
    move-object/from16 v3, v22

    .end local v22    # "r":Lcom/android/server/am/ServiceRecord;
    .restart local v3    # "r":Lcom/android/server/am/ServiceRecord;
    goto/16 :goto_0
.end method

.method private final scheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;Z)Z
    .locals 26
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "allowCancel"    # Z

    .prologue
    .line 1239
    const/4 v5, 0x0

    .line 1241
    .local v5, "canceled":Z
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ServiceRecord;->userId:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/am/ActiveServices;->getServiceMap(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v19

    .line 1242
    .local v19, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    if-eq v0, v1, :cond_0

    .line 1243
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ServiceRecord;

    .line 1244
    .local v6, "cur":Lcom/android/server/am/ServiceRecord;
    const-string v20, "ActivityManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Attempting to schedule restart of "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " when found in map: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    const/16 v20, 0x0

    .line 1380
    .end local v6    # "cur":Lcom/android/server/am/ServiceRecord;
    :goto_0
    return v20

    .line 1249
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 1251
    .local v12, "now":J
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v20, v0

    and-int/lit8 v20, v20, 0x8

    if-nez v20, :cond_11

    .line 1253
    const-wide/16 v10, 0x3e8

    .line 1254
    .local v10, "minDuration":J
    const-wide/32 v16, 0xea60

    .line 1258
    .local v16, "resetTime":J
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1259
    .local v4, "N":I
    if-lez v4, :cond_8

    .line 1260
    add-int/lit8 v7, v4, -0x1

    .local v7, "i":I
    :goto_1
    if-ltz v7, :cond_7

    .line 1261
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/am/ServiceRecord$StartItem;

    .line 1262
    .local v18, "si":Lcom/android/server/am/ServiceRecord$StartItem;
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/am/ServiceRecord$StartItem;->removeUriPermissionsLocked()V

    .line 1263
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    move-object/from16 v20, v0

    if-nez v20, :cond_2

    .line 1260
    :cond_1
    :goto_2
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 1265
    :cond_2
    if-eqz p2, :cond_3

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    move/from16 v20, v0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_6

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ServiceRecord$StartItem;->doneExecutingCount:I

    move/from16 v20, v0

    const/16 v21, 0x6

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_6

    .line 1267
    :cond_3
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1268
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v20

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/android/server/am/ServiceRecord$StartItem;->deliveredTime:J

    move-wide/from16 v22, v0

    sub-long v8, v20, v22

    .line 1269
    .local v8, "dur":J
    const-wide/16 v20, 0x2

    mul-long v8, v8, v20

    .line 1270
    sget-boolean v20, Lcom/android/server/am/ActiveServices;->SERVICE_RESCHEDULE:Z

    if-eqz v20, :cond_4

    sget-boolean v20, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_SERVICE:Z

    if-eqz v20, :cond_4

    .line 1271
    const-string v20, "ActivityManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Can add more delay !!! si.deliveredTime "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/android/server/am/ServiceRecord$StartItem;->deliveredTime:J

    move-wide/from16 v22, v0

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " dur "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " si.deliveryCount "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " si.doneExecutingCount "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ServiceRecord$StartItem;->doneExecutingCount:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " allowCancel "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    :cond_4
    cmp-long v20, v10, v8

    if-gez v20, :cond_5

    move-wide v10, v8

    .line 1279
    :cond_5
    cmp-long v20, v16, v8

    if-gez v20, :cond_1

    move-wide/from16 v16, v8

    goto/16 :goto_2

    .line 1281
    .end local v8    # "dur":J
    :cond_6
    const-string v20, "ActivityManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Canceling start item "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " in service "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    const/4 v5, 0x1

    goto/16 :goto_2

    .line 1286
    .end local v18    # "si":Lcom/android/server/am/ServiceRecord$StartItem;
    :cond_7
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->clear()V

    .line 1289
    .end local v7    # "i":I
    :cond_8
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ServiceRecord;->totalRestartCount:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/am/ServiceRecord;->totalRestartCount:I

    .line 1290
    sget-boolean v20, Lcom/android/server/am/ActiveServices;->SERVICE_RESCHEDULE:Z

    if-eqz v20, :cond_9

    sget-boolean v20, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_SERVICE:Z

    if-eqz v20, :cond_9

    .line 1291
    const-string v20, "ActivityManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "r.name "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " N "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " minDuration "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " resetTime "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " now "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " r.restartDelay "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    move-wide/from16 v22, v0

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " r.restartTime+resetTime "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/am/ServiceRecord;->restartTime:J

    move-wide/from16 v22, v0

    add-long v22, v22, v16

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " allowCancel "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    :cond_9
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-nez v20, :cond_e

    .line 1298
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ServiceRecord;->restartCount:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/am/ServiceRecord;->restartCount:I

    .line 1299
    move-object/from16 v0, p1

    iput-wide v10, v0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    .line 1317
    :cond_a
    :goto_3
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    move-wide/from16 v20, v0

    add-long v20, v20, v12

    move-wide/from16 v0, v20

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    .line 1318
    sget-boolean v20, Lcom/android/server/am/ActiveServices;->SERVICE_RESCHEDULE:Z

    if-eqz v20, :cond_b

    sget-boolean v20, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_SERVICE:Z

    if-eqz v20, :cond_b

    .line 1319
    const-string v20, "ActivityManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "r.name "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " N "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " minDuration "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " resetTime "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " now "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " r.restartDelay "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    move-wide/from16 v22, v0

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " r.restartTime+resetTime "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/am/ServiceRecord;->restartTime:J

    move-wide/from16 v22, v0

    add-long v22, v22, v16

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " r.nextRestartTime "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    move-wide/from16 v22, v0

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " allowCancel "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1331
    :cond_b
    const/4 v15, 0x0

    .line 1332
    .local v15, "repeat":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    add-int/lit8 v7, v20, -0x1

    .restart local v7    # "i":I
    :goto_4
    if-ltz v7, :cond_c

    .line 1333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/ServiceRecord;

    .line 1334
    .local v14, "r2":Lcom/android/server/am/ServiceRecord;
    move-object/from16 v0, p1

    if-eq v14, v0, :cond_10

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    move-wide/from16 v20, v0

    iget-wide v0, v14, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x2710

    sub-long v22, v22, v24

    cmp-long v20, v20, v22

    if-ltz v20, :cond_10

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    move-wide/from16 v20, v0

    iget-wide v0, v14, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x2710

    add-long v22, v22, v24

    cmp-long v20, v20, v22

    if-gez v20, :cond_10

    .line 1338
    iget-wide v0, v14, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x2710

    add-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    .line 1339
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    move-wide/from16 v20, v0

    sub-long v20, v20, v12

    move-wide/from16 v0, v20

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    .line 1340
    const/4 v15, 0x1

    .line 1344
    .end local v14    # "r2":Lcom/android/server/am/ServiceRecord;
    :cond_c
    if-nez v15, :cond_b

    .line 1355
    .end local v4    # "N":I
    .end local v7    # "i":I
    .end local v10    # "minDuration":J
    .end local v15    # "repeat":Z
    .end local v16    # "resetTime":J
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_d

    .line 1356
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/am/ServiceRecord;->createdFromFg:Z

    .line 1357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v20

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1, v12, v13}, Lcom/android/server/am/ServiceRecord;->makeRestarting(IJ)V

    .line 1361
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ServiceRecord;->cancelNotification()V

    .line 1363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    move-wide/from16 v22, v0

    invoke-virtual/range {v20 .. v23}, Lcom/android/server/am/ActivityManagerService$MainHandler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 1365
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v20

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    move-wide/from16 v22, v0

    add-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    .line 1366
    const-string v20, "ActivityManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Scheduling restart of crashed service "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " in "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    move-wide/from16 v22, v0

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "ms"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    sget-boolean v20, Lcom/android/server/am/ActiveServices;->SERVICE_RESCHEDULE:Z

    if-eqz v20, :cond_12

    sget-boolean v20, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_SERVICE:Z

    if-eqz v20, :cond_12

    .line 1370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    add-int/lit8 v7, v20, -0x1

    .restart local v7    # "i":I
    :goto_6
    if-ltz v7, :cond_12

    .line 1371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/ServiceRecord;

    .line 1372
    .restart local v14    # "r2":Lcom/android/server/am/ServiceRecord;
    const-string v20, "ActivityManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Restarting list - i "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " r2.nextRestartTime "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget-wide v0, v14, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    move-wide/from16 v22, v0

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " r2.name "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget-object v0, v14, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    add-int/lit8 v7, v7, -0x1

    goto :goto_6

    .line 1306
    .end local v7    # "i":I
    .end local v14    # "r2":Lcom/android/server/am/ServiceRecord;
    .restart local v4    # "N":I
    .restart local v10    # "minDuration":J
    .restart local v16    # "resetTime":J
    :cond_e
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/am/ServiceRecord;->restartTime:J

    move-wide/from16 v20, v0

    add-long v20, v20, v16

    cmp-long v20, v12, v20

    if-lez v20, :cond_f

    .line 1307
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/am/ServiceRecord;->restartCount:I

    .line 1308
    move-object/from16 v0, p1

    iput-wide v10, v0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    goto/16 :goto_3

    .line 1310
    :cond_f
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x4

    mul-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    .line 1311
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    move-wide/from16 v20, v0

    cmp-long v20, v20, v10

    if-gez v20, :cond_a

    .line 1312
    move-object/from16 v0, p1

    iput-wide v10, v0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    goto/16 :goto_3

    .line 1332
    .restart local v7    # "i":I
    .restart local v14    # "r2":Lcom/android/server/am/ServiceRecord;
    .restart local v15    # "repeat":Z
    :cond_10
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_4

    .line 1349
    .end local v4    # "N":I
    .end local v7    # "i":I
    .end local v10    # "minDuration":J
    .end local v14    # "r2":Lcom/android/server/am/ServiceRecord;
    .end local v15    # "repeat":Z
    .end local v16    # "resetTime":J
    :cond_11
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ServiceRecord;->totalRestartCount:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/am/ServiceRecord;->totalRestartCount:I

    .line 1350
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/am/ServiceRecord;->restartCount:I

    .line 1351
    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    .line 1352
    move-object/from16 v0, p1

    iput-wide v12, v0, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    goto/16 :goto_5

    .line 1377
    :cond_12
    const/16 v20, 0x7553

    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ServiceRecord;->userId:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    move-object/from16 v23, v0

    aput-object v23, v21, v22

    const/16 v22, 0x2

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    move/from16 v20, v5

    .line 1380
    goto/16 :goto_0
.end method

.method private final sendServiceArgsLocked(Lcom/android/server/am/ServiceRecord;ZZ)V
    .locals 14
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "execInFg"    # Z
    .param p3, "oomAdjusted"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/TransactionTooLargeException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x1

    .line 1691
    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 1692
    .local v8, "N":I
    if-nez v8, :cond_1

    .line 1759
    :cond_0
    return-void

    .line 1696
    :cond_1
    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1697
    const/4 v9, 0x0

    .line 1700
    .local v9, "caughtException":Ljava/lang/Exception;
    const/4 v12, 0x0

    .line 1703
    .local v12, "si":Lcom/android/server/am/ServiceRecord$StartItem;
    :try_start_0
    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/server/am/ServiceRecord$StartItem;

    move-object v12, v0

    .line 1704
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v2, :cond_2

    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sending arguments to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " args="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v12, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1706
    :cond_2
    iget-object v2, v12, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    if-nez v2, :cond_3

    if-gt v8, v13, :cond_1

    .line 1713
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v12, Lcom/android/server/am/ServiceRecord$StartItem;->deliveredTime:J

    .line 1714
    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1715
    iget v2, v12, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v12, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    .line 1716
    iget-object v2, v12, Lcom/android/server/am/ServiceRecord$StartItem;->neededGrants:Lcom/android/server/am/ActivityManagerService$NeededUriGrants;

    if-eqz v2, :cond_4

    .line 1717
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v12, Lcom/android/server/am/ServiceRecord$StartItem;->neededGrants:Lcom/android/server/am/ActivityManagerService$NeededUriGrants;

    invoke-virtual {v12}, Lcom/android/server/am/ServiceRecord$StartItem;->getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->grantUriPermissionUncheckedFromIntentLocked(Lcom/android/server/am/ActivityManagerService$NeededUriGrants;Lcom/android/server/am/UriPermissionOwner;)V

    .line 1720
    :cond_4
    const-string v2, "start"

    move/from16 v0, p2

    invoke-direct {p0, p1, v0, v2}, Lcom/android/server/am/ActiveServices;->bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;ZLjava/lang/String;)V

    .line 1721
    if-nez p3, :cond_5

    .line 1722
    const/16 p3, 0x1

    .line 1723
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;)Z

    .line 1725
    :cond_5
    const/4 v6, 0x0

    .line 1726
    .local v6, "flags":I
    iget v2, v12, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    if-le v2, v13, :cond_6

    .line 1727
    or-int/lit8 v6, v6, 0x2

    .line 1729
    :cond_6
    iget v2, v12, Lcom/android/server/am/ServiceRecord$StartItem;->doneExecutingCount:I

    if-lez v2, :cond_7

    .line 1730
    or-int/lit8 v6, v6, 0x1

    .line 1732
    :cond_7
    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-boolean v4, v12, Lcom/android/server/am/ServiceRecord$StartItem;->taskRemoved:Z

    iget v5, v12, Lcom/android/server/am/ServiceRecord$StartItem;->id:I

    iget-object v7, v12, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    move-object v3, p1

    invoke-interface/range {v2 .. v7}, Landroid/app/IApplicationThread;->scheduleServiceArgs(Landroid/os/IBinder;ZIILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/TransactionTooLargeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1749
    .end local v6    # "flags":I
    :goto_0
    if-eqz v9, :cond_1

    .line 1751
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    .line 1752
    .local v11, "inDestroying":Z
    invoke-direct {p0, p1, v11, v11}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    .line 1753
    instance-of v2, v9, Landroid/os/TransactionTooLargeException;

    if-eqz v2, :cond_0

    .line 1754
    check-cast v9, Landroid/os/TransactionTooLargeException;

    .end local v9    # "caughtException":Ljava/lang/Exception;
    throw v9

    .line 1733
    .end local v11    # "inDestroying":Z
    .restart local v9    # "caughtException":Ljava/lang/Exception;
    :catch_0
    move-exception v10

    .line 1736
    .local v10, "e":Landroid/os/TransactionTooLargeException;
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v2, :cond_8

    const-string v3, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Transaction too large: intent="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v12, :cond_9

    const-string v2, " si is null"

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1739
    :cond_8
    move-object v9, v10

    .line 1747
    goto :goto_0

    .line 1736
    :cond_9
    iget-object v2, v12, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    goto :goto_1

    .line 1740
    .end local v10    # "e":Landroid/os/TransactionTooLargeException;
    :catch_1
    move-exception v10

    .line 1742
    .local v10, "e":Landroid/os/RemoteException;
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v2, :cond_a

    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Crashed while sending args: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1743
    :cond_a
    move-object v9, v10

    .line 1747
    goto :goto_0

    .line 1744
    .end local v10    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v10

    .line 1745
    .local v10, "e":Ljava/lang/Exception;
    const-string v2, "ActivityManager"

    const-string v3, "Unexpected exception"

    invoke-static {v2, v3, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1746
    move-object v9, v10

    goto :goto_0
.end method

.method private serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZ)V
    .locals 8
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "inDestroying"    # Z
    .param p3, "finishing"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 2095
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v1, :cond_b

    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< DONE EXECUTING "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": nesting="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", inDestroying="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", app="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2100
    :cond_0
    :goto_0
    iget v1, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    .line 2101
    iget v1, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    if-gtz v1, :cond_a

    .line 2102
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_7

    .line 2103
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v1, :cond_1

    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Nesting at 0 of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2105
    :cond_1
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput-boolean v6, v1, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    .line 2106
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 2107
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-nez v1, :cond_c

    .line 2108
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE_EXECUTING:Z

    if-eqz v1, :cond_3

    :cond_2
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No more executingServices of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2110
    :cond_3
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v2, 0xc

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(ILjava/lang/Object;)V

    .line 2120
    :cond_4
    :goto_1
    if-eqz p2, :cond_6

    .line 2121
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v1, :cond_5

    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doneExecuting remove destroying "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2123
    :cond_5
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2124
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 2126
    :cond_6
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;)Z

    .line 2128
    :cond_7
    iput-boolean v6, p1, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    .line 2129
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    if-eqz v1, :cond_8

    .line 2130
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v6, v2, v4, v5}, Lcom/android/internal/app/ProcessStats$ServiceState;->setExecuting(ZIJ)V

    .line 2132
    if-eqz p3, :cond_8

    .line 2133
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    invoke-virtual {v1, p1, v6}, Lcom/android/internal/app/ProcessStats$ServiceState;->clearCurrentOwner(Ljava/lang/Object;Z)V

    .line 2134
    iput-object v7, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    .line 2137
    :cond_8
    if-eqz p3, :cond_a

    .line 2138
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_9

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v1, v1, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-nez v1, :cond_9

    .line 2139
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 2141
    :cond_9
    iput-object v7, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 2144
    :cond_a
    return-void

    .line 2098
    :cond_b
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE_EXECUTING:Z

    if-eqz v1, :cond_0

    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< DONE EXECUTING "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2111
    :cond_c
    iget-boolean v1, p1, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    if-eqz v1, :cond_4

    .line 2113
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_2
    if-ltz v0, :cond_4

    .line 2114
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ServiceRecord;

    iget-boolean v1, v1, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    if-eqz v1, :cond_d

    .line 2115
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    goto/16 :goto_1

    .line 2113
    :cond_d
    add-int/lit8 v0, v0, -0x1

    goto :goto_2
.end method

.method private serviceProcessGoneLocked(Lcom/android/server/am/ServiceRecord;)V
    .locals 6
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2083
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    if-eqz v1, :cond_0

    .line 2084
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v0

    .line 2085
    .local v0, "memFactor":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 2086
    .local v2, "now":J
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    invoke-virtual {v1, v4, v0, v2, v3}, Lcom/android/internal/app/ProcessStats$ServiceState;->setExecuting(ZIJ)V

    .line 2087
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    invoke-virtual {v1, v4, v0, v2, v3}, Lcom/android/internal/app/ProcessStats$ServiceState;->setBound(ZIJ)V

    .line 2088
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    invoke-virtual {v1, v4, v0, v2, v3}, Lcom/android/internal/app/ProcessStats$ServiceState;->setStarted(ZIJ)V

    .line 2090
    .end local v0    # "memFactor":I
    .end local v2    # "now":J
    :cond_0
    invoke-direct {p0, p1, v5, v5}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    .line 2091
    return-void
.end method

.method private stopServiceLocked(Lcom/android/server/am/ServiceRecord;)V
    .locals 5
    .param p1, "service"    # Lcom/android/server/am/ServiceRecord;

    .prologue
    const/4 v4, 0x0

    .line 485
    iget-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->delayed:Z

    if-eqz v0, :cond_1

    .line 489
    sget-boolean v0, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_STARTS:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Delaying stop of pending: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    .line 503
    :goto_0
    return-void

    .line 493
    :cond_1
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v1

    monitor-enter v1

    .line 494
    :try_start_0
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->stopRunningLocked()V

    .line 495
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 496
    iput-boolean v4, p1, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    .line 497
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    if-eqz v0, :cond_2

    .line 498
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/internal/app/ProcessStats$ServiceState;->setStarted(ZIJ)V

    .line 501
    :cond_2
    iput-boolean v4, p1, Lcom/android/server/am/ServiceRecord;->callStart:Z

    .line 502
    invoke-direct {p0, p1, v4, v4}, Lcom/android/server/am/ActiveServices;->bringDownServiceIfNeededLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    goto :goto_0

    .line 495
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private final unscheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;IZ)Z
    .locals 6
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "callingUid"    # I
    .param p3, "force"    # Z

    .prologue
    .line 1429
    if-nez p3, :cond_0

    iget-wide v2, p1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 1430
    const/4 v1, 0x0

    .line 1443
    :goto_0
    return v1

    .line 1435
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 1436
    .local v0, "removed":Z
    if-nez v0, :cond_1

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq p2, v1, :cond_2

    .line 1437
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->resetRestartCounter()V

    .line 1439
    :cond_2
    if-eqz v0, :cond_3

    .line 1440
    invoke-direct {p0, p1}, Lcom/android/server/am/ActiveServices;->clearRestartingIfNeededLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 1442
    :cond_3
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1443
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private updateServiceClientActivitiesLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ConnectionRecord;Z)Z
    .locals 9
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "modCr"    # Lcom/android/server/am/ConnectionRecord;
    .param p3, "updateLru"    # Z

    .prologue
    const/4 v7, 0x0

    .line 686
    if-eqz p2, :cond_1

    iget-object v8, p2, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v8, v8, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    if-eqz v8, :cond_1

    .line 687
    iget-object v8, p2, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v8, v8, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v8, v8, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gtz v8, :cond_1

    .line 719
    :cond_0
    :goto_0
    return v7

    .line 694
    :cond_1
    const/4 v0, 0x0

    .line 695
    .local v0, "anyClientActivities":Z
    iget-object v8, p1, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    move-result v8

    add-int/lit8 v5, v8, -0x1

    .local v5, "i":I
    :goto_1
    if-ltz v5, :cond_6

    if-nez v0, :cond_6

    .line 696
    iget-object v8, p1, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v8, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ServiceRecord;

    .line 697
    .local v6, "sr":Lcom/android/server/am/ServiceRecord;
    iget-object v8, v6, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    add-int/lit8 v2, v8, -0x1

    .local v2, "conni":I
    :goto_2
    if-ltz v2, :cond_5

    if-nez v0, :cond_5

    .line 698
    iget-object v8, v6, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v8, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 699
    .local v1, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v4, v8, -0x1

    .local v4, "cri":I
    :goto_3
    if-ltz v4, :cond_4

    .line 700
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ConnectionRecord;

    .line 701
    .local v3, "cr":Lcom/android/server/am/ConnectionRecord;
    iget-object v8, v3, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v8, v8, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    if-eqz v8, :cond_2

    iget-object v8, v3, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v8, v8, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    if-ne v8, p1, :cond_3

    .line 699
    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 705
    :cond_3
    iget-object v8, v3, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v8, v8, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v8, v8, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_2

    .line 706
    const/4 v0, 0x1

    .line 697
    .end local v3    # "cr":Lcom/android/server/am/ConnectionRecord;
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 695
    .end local v1    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v4    # "cri":I
    :cond_5
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 712
    .end local v2    # "conni":I
    .end local v6    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_6
    iget-boolean v8, p1, Lcom/android/server/am/ProcessRecord;->hasClientActivities:Z

    if-eq v0, v8, :cond_0

    .line 713
    iput-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->hasClientActivities:Z

    .line 714
    if-eqz p3, :cond_7

    .line 715
    iget-object v7, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const/4 v8, 0x0

    invoke-virtual {v7, p1, v0, v8}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 717
    :cond_7
    const/4 v7, 0x1

    goto :goto_0
.end method

.method private updateServiceForegroundLocked(Lcom/android/server/am/ProcessRecord;Z)V
    .locals 4
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "oomAdj"    # Z

    .prologue
    .line 656
    const/4 v0, 0x0

    .line 657
    .local v0, "anyForeground":Z
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 658
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ServiceRecord;

    .line 659
    .local v2, "sr":Lcom/android/server/am/ServiceRecord;
    iget-boolean v3, v2, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-eqz v3, :cond_1

    .line 660
    const/4 v0, 0x1

    .line 664
    .end local v2    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, p1, v0, p2}, Lcom/android/server/am/ActivityManagerService;->updateProcessForegroundLocked(Lcom/android/server/am/ProcessRecord;ZZ)V

    .line 665
    return-void

    .line 657
    .restart local v2    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method


# virtual methods
.method attachApplicationLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z
    .locals 8
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "processName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2148
    const/4 v1, 0x0

    .line 2150
    .local v1, "didSomething":Z
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 2151
    const/4 v4, 0x0

    .line 2153
    .local v4, "sr":Lcom/android/server/am/ServiceRecord;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 2154
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/android/server/am/ServiceRecord;

    move-object v4, v0

    .line 2155
    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    if-eq p1, v5, :cond_1

    iget v5, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v6, v4, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v5, v6, :cond_0

    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2153
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2160
    :cond_1
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2161
    add-int/lit8 v3, v3, -0x1

    .line 2162
    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, v4, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->versionCode:I

    iget-object v7, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {p1, v5, v6, v7}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;ILcom/android/server/am/ProcessStatsService;)Z

    .line 2164
    iget-boolean v5, v4, Lcom/android/server/am/ServiceRecord;->createdFromFg:Z

    invoke-direct {p0, v4, p1, v5}, Lcom/android/server/am/ActiveServices;->realStartServiceLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/ProcessRecord;Z)V

    .line 2165
    const/4 v1, 0x1

    .line 2166
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {p0, v4, v5, v6}, Lcom/android/server/am/ActiveServices;->isServiceNeeded(Lcom/android/server/am/ServiceRecord;ZZ)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2171
    invoke-direct {p0, v4}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2174
    :catch_0
    move-exception v2

    .line 2175
    .local v2, "e":Landroid/os/RemoteException;
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception in new application when starting service "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2177
    throw v2

    .line 2184
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "i":I
    .end local v4    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_2
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_5

    .line 2186
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_5

    .line 2187
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ServiceRecord;

    .line 2188
    .restart local v4    # "sr":Lcom/android/server/am/ServiceRecord;
    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    if-eq p1, v5, :cond_4

    iget v5, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v6, v4, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v5, v6, :cond_3

    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 2186
    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2192
    :cond_4
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v6, v4, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2193
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v6, v4, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    .line 2196
    .end local v3    # "i":I
    .end local v4    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_5
    return v1
.end method

.method bindServiceLocked(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;ILjava/lang/String;I)I
    .locals 28
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "service"    # Landroid/content/Intent;
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "connection"    # Landroid/app/IServiceConnection;
    .param p6, "flags"    # I
    .param p7, "callingPackage"    # Ljava/lang/String;
    .param p8, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/TransactionTooLargeException;
        }
    .end annotation

    .prologue
    .line 725
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v2, :cond_0

    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bindService: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " conn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p5 .. p5}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " flags=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v20

    .line 729
    .local v20, "callerApp":Lcom/android/server/am/ProcessRecord;
    if-nez v20, :cond_1

    .line 730
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to find app for caller "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") when binding service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 736
    :cond_1
    const/16 v18, 0x0

    .line 737
    .local v18, "activity":Lcom/android/server/am/ActivityRecord;
    if-eqz p2, :cond_2

    .line 738
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v18

    .line 739
    if-nez v18, :cond_2

    .line 740
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Binding with unknown activity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    const/4 v2, 0x0

    .line 902
    :goto_0
    return v2

    .line 745
    :cond_2
    const/16 v21, 0x0

    .line 746
    .local v21, "clientLabel":I
    const/16 v17, 0x0

    .line 748
    .local v17, "clientIntent":Landroid/app/PendingIntent;
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v3, 0x3e8

    if-ne v2, v3, :cond_3

    .line 753
    :try_start_0
    const-string v2, "android.intent.extra.client_intent"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/app/PendingIntent;

    move-object/from16 v17, v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 756
    :goto_1
    if-eqz v17, :cond_3

    .line 757
    const-string v2, "android.intent.extra.client_label"

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v21

    .line 758
    if-eqz v21, :cond_3

    .line 762
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object p3

    .line 767
    :cond_3
    const/high16 v2, 0x8000000

    and-int v2, v2, p6

    if-eqz v2, :cond_4

    .line 768
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string v3, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v4, "BIND_TREAT_LIKE_ACTIVITY"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    :cond_4
    move-object/from16 v0, v20

    iget v2, v0, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I

    if-eqz v2, :cond_5

    const/4 v10, 0x1

    .line 774
    .local v10, "callerFg":Z
    :goto_2
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    const/4 v9, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p7

    move/from16 v8, p8

    invoke-direct/range {v2 .. v10}, Lcom/android/server/am/ActiveServices;->retrieveServiceLocked(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;IIIZZ)Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    move-result-object v26

    .line 777
    .local v26, "res":Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    if-nez v26, :cond_6

    .line 778
    const/4 v2, 0x0

    goto :goto_0

    .line 772
    .end local v10    # "callerFg":Z
    .end local v26    # "res":Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    :cond_5
    const/4 v10, 0x0

    goto :goto_2

    .line 780
    .restart local v10    # "callerFg":Z
    .restart local v26    # "res":Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    :cond_6
    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    if-nez v2, :cond_7

    .line 781
    const/4 v2, -0x1

    goto :goto_0

    .line 783
    :cond_7
    move-object/from16 v0, v26

    iget-object v5, v0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    .line 787
    .local v5, "s":Lcom/android/server/am/ServiceRecord;
    sget-boolean v2, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v2, :cond_8

    .line 788
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " bindServiceLocked # callerApp= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", service = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", resolvedType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", callingPackage="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 791
    :cond_8
    sget-boolean v2, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-eqz v2, :cond_9

    .line 792
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->getInstance(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/am/OnePlusAppBootManager;

    move-result-object v2

    const/4 v6, 0x0

    move-object/from16 v3, v20

    move-object/from16 v4, p3

    move-object/from16 v7, p7

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/OnePlusAppBootManager;->canServiceGo(Lcom/android/server/am/ProcessRecord;Landroid/content/Intent;Lcom/android/server/am/ServiceRecord;ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 793
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 798
    :cond_9
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v24

    .line 801
    .local v24, "origId":J
    :try_start_1
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v2, v3}, Lcom/android/server/am/ActiveServices;->unscheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;IZ)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 802
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v2, :cond_a

    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BIND SERVICE WHILE RESTART PENDING: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    :cond_a
    and-int/lit8 v2, p6, 0x1

    if-eqz v2, :cond_b

    .line 807
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v5, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    .line 808
    invoke-virtual {v5}, Lcom/android/server/am/ServiceRecord;->hasAutoCreateConnections()Z

    move-result v2

    if-nez v2, :cond_b

    .line 810
    invoke-virtual {v5}, Lcom/android/server/am/ServiceRecord;->getTracker()Lcom/android/internal/app/ProcessStats$ServiceState;

    move-result-object v27

    .line 811
    .local v27, "stracker":Lcom/android/internal/app/ProcessStats$ServiceState;
    if-eqz v27, :cond_b

    .line 812
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v3

    iget-wide v6, v5, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v3, v6, v7}, Lcom/android/internal/app/ProcessStats$ServiceState;->setBound(ZIJ)V

    .line 818
    .end local v27    # "stracker":Lcom/android/internal/app/ProcessStats$ServiceState;
    :cond_b
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v20

    iget v12, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    move-object/from16 v0, v20

    iget-object v13, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v2, v5, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v15, v5, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    iget-object v0, v5, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v11 .. v16}, Lcom/android/server/am/ActivityManagerService;->startAssociationLocked(ILjava/lang/String;ILandroid/content/ComponentName;Ljava/lang/String;)Lcom/android/server/am/ActivityManagerService$Association;

    .line 821
    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Lcom/android/server/am/ServiceRecord;->retrieveAppBindingLocked(Landroid/content/Intent;Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/AppBindRecord;

    move-result-object v12

    .line 822
    .local v12, "b":Lcom/android/server/am/AppBindRecord;
    new-instance v11, Lcom/android/server/am/ConnectionRecord;

    move-object/from16 v13, v18

    move-object/from16 v14, p5

    move/from16 v15, p6

    move/from16 v16, v21

    invoke-direct/range {v11 .. v17}, Lcom/android/server/am/ConnectionRecord;-><init>(Lcom/android/server/am/AppBindRecord;Lcom/android/server/am/ActivityRecord;Landroid/app/IServiceConnection;IILandroid/app/PendingIntent;)V

    .line 825
    .local v11, "c":Lcom/android/server/am/ConnectionRecord;
    invoke-interface/range {p5 .. p5}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v19

    .line 826
    .local v19, "binder":Landroid/os/IBinder;
    iget-object v2, v5, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/ArrayList;

    .line 827
    .local v22, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    if-nez v22, :cond_c

    .line 828
    new-instance v22, Ljava/util/ArrayList;

    .end local v22    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 829
    .restart local v22    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    iget-object v2, v5, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 831
    :cond_c
    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 832
    iget-object v2, v12, Lcom/android/server/am/AppBindRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v2, v11}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 833
    if-eqz v18, :cond_e

    .line 834
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    if-nez v2, :cond_d

    .line 835
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    .line 837
    :cond_d
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    invoke-virtual {v2, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 839
    :cond_e
    iget-object v2, v12, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v2, v11}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 840
    iget v2, v11, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_f

    .line 841
    iget-object v2, v12, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/am/ProcessRecord;->hasAboveClient:Z

    .line 843
    :cond_f
    iget-object v2, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_10

    .line 844
    iget-object v2, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v11, v3}, Lcom/android/server/am/ActiveServices;->updateServiceClientActivitiesLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ConnectionRecord;Z)Z

    .line 846
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .end local v22    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    check-cast v22, Ljava/util/ArrayList;

    .line 847
    .restart local v22    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    if-nez v22, :cond_11

    .line 848
    new-instance v22, Ljava/util/ArrayList;

    .end local v22    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 849
    .restart local v22    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 851
    :cond_11
    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 853
    and-int/lit8 v2, p6, 0x1

    if-eqz v2, :cond_12

    .line 854
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v5, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    .line 855
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v2, v10, v3}, Lcom/android/server/am/ActiveServices;->bringUpServiceLocked(Lcom/android/server/am/ServiceRecord;IZZ)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_12

    .line 856
    const/4 v2, 0x0

    .line 899
    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 860
    :cond_12
    :try_start_2
    iget-object v2, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_15

    .line 861
    const/high16 v2, 0x8000000

    and-int v2, v2, p6

    if-eqz v2, :cond_13

    .line 862
    iget-object v2, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/am/ProcessRecord;->treatLikeActivity:Z

    .line 865
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v2, v2, Lcom/android/server/am/ProcessRecord;->hasClientActivities:Z

    if-nez v2, :cond_14

    iget-object v2, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v2, v2, Lcom/android/server/am/ProcessRecord;->treatLikeActivity:Z

    if-eqz v2, :cond_18

    :cond_14
    const/4 v2, 0x1

    :goto_3
    iget-object v6, v12, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v3, v4, v2, v6}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 867
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;)Z

    .line 870
    :cond_15
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v2, :cond_16

    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bind "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": received="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v12, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-boolean v4, v4, Lcom/android/server/am/IntentBindRecord;->received:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " apps="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v12, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-object v4, v4, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " doRebind="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v12, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-boolean v4, v4, Lcom/android/server/am/IntentBindRecord;->doRebind:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    :cond_16
    iget-object v2, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_19

    iget-object v2, v12, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-boolean v2, v2, Lcom/android/server/am/IntentBindRecord;->received:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_19

    .line 879
    :try_start_3
    iget-object v2, v11, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    iget-object v3, v5, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    iget-object v4, v12, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-object v4, v4, Lcom/android/server/am/IntentBindRecord;->binder:Landroid/os/IBinder;

    invoke-interface {v2, v3, v4}, Landroid/app/IServiceConnection;->connected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 889
    :goto_4
    :try_start_4
    iget-object v2, v12, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-object v2, v2, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_17

    iget-object v2, v12, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-boolean v2, v2, Lcom/android/server/am/IntentBindRecord;->doRebind:Z

    if-eqz v2, :cond_17

    .line 890
    iget-object v2, v12, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v2, v10, v3}, Lcom/android/server/am/ActiveServices;->requestServiceBindingLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/IntentBindRecord;ZZ)Z

    .line 896
    :cond_17
    :goto_5
    iget v2, v5, Lcom/android/server/am/ServiceRecord;->userId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/am/ActiveServices;->getServiceMap(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/server/am/ActiveServices$ServiceMap;->ensureNotStartingBackground(Lcom/android/server/am/ServiceRecord;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 899
    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 902
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 865
    :cond_18
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 880
    :catch_0
    move-exception v23

    .line 881
    .local v23, "e":Ljava/lang/Exception;
    :try_start_5
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failure sending service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v5, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to connection "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v11, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    invoke-interface {v4}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v11, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v4, v4, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    .line 899
    .end local v11    # "c":Lcom/android/server/am/ConnectionRecord;
    .end local v12    # "b":Lcom/android/server/am/AppBindRecord;
    .end local v19    # "binder":Landroid/os/IBinder;
    .end local v22    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v23    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 892
    .restart local v11    # "c":Lcom/android/server/am/ConnectionRecord;
    .restart local v12    # "b":Lcom/android/server/am/AppBindRecord;
    .restart local v19    # "binder":Landroid/os/IBinder;
    .restart local v22    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    :cond_19
    :try_start_6
    iget-object v2, v12, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-boolean v2, v2, Lcom/android/server/am/IntentBindRecord;->requested:Z

    if-nez v2, :cond_17

    .line 893
    iget-object v2, v12, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v2, v10, v3}, Lcom/android/server/am/ActiveServices;->requestServiceBindingLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/IntentBindRecord;ZZ)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_5

    .line 754
    .end local v5    # "s":Lcom/android/server/am/ServiceRecord;
    .end local v10    # "callerFg":Z
    .end local v11    # "c":Lcom/android/server/am/ConnectionRecord;
    .end local v12    # "b":Lcom/android/server/am/AppBindRecord;
    .end local v19    # "binder":Landroid/os/IBinder;
    .end local v22    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v24    # "origId":J
    .end local v26    # "res":Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    :catch_1
    move-exception v2

    goto/16 :goto_1
.end method

.method bringDownDisabledPackageServicesLocked(Ljava/lang/String;Ljava/util/Set;IZZZ)Z
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "evenPersistent"    # Z
    .param p5, "killProcess"    # Z
    .param p6, "doit"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;IZZZ)Z"
        }
    .end annotation

    .prologue
    .line 2261
    .local p2, "filterByClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 2263
    .local v7, "didSomething":Z
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 2264
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2267
    :cond_0
    const/4 v0, -0x1

    if-ne p3, v0, :cond_2

    .line 2268
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v8, v0, -0x1

    .local v8, "i":I
    :goto_0
    if-ltz v8, :cond_3

    .line 2269
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActiveServices$ServiceMap;

    iget-object v6, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p4

    move/from16 v4, p6

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/ActiveServices;->collectPackageServicesLocked(Ljava/lang/String;Ljava/util/Set;ZZZLandroid/util/ArrayMap;)Z

    move-result v0

    or-int/2addr v7, v0

    .line 2271
    if-nez p6, :cond_1

    if-eqz v7, :cond_1

    .line 2272
    const/4 v0, 0x1

    .line 2290
    .end local v8    # "i":I
    :goto_1
    return v0

    .line 2268
    .restart local v8    # "i":I
    :cond_1
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 2276
    .end local v8    # "i":I
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ActiveServices$ServiceMap;

    .line 2277
    .local v9, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    if-eqz v9, :cond_3

    .line 2278
    iget-object v6, v9, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    .local v6, "items":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p4

    move/from16 v4, p6

    move v5, p5

    .line 2279
    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/ActiveServices;->collectPackageServicesLocked(Ljava/lang/String;Ljava/util/Set;ZZZLandroid/util/ArrayMap;)Z

    move-result v7

    .line 2284
    .end local v6    # "items":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    .end local v9    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 2285
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v8, v0, -0x1

    .restart local v8    # "i":I
    :goto_2
    if-ltz v8, :cond_4

    .line 2286
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ServiceRecord;

    invoke-direct {p0, v0}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 2285
    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    .line 2288
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .end local v8    # "i":I
    :cond_5
    move v0, v7

    .line 2290
    goto :goto_1
.end method

.method cleanUpRemovedTaskLocked(Lcom/android/server/am/TaskRecord;Landroid/content/ComponentName;Landroid/content/Intent;)V
    .locals 10
    .param p1, "tr"    # Lcom/android/server/am/TaskRecord;
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "baseIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    .line 2294
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2295
    .local v8, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ServiceRecord;>;"
    iget v0, p1, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActiveServices;->getServices(I)Landroid/util/ArrayMap;

    move-result-object v6

    .line 2296
    .local v6, "alls":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v7, v0, -0x1

    .local v7, "i":I
    :goto_0
    if-ltz v7, :cond_1

    .line 2297
    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ServiceRecord;

    .line 2298
    .local v1, "sr":Lcom/android/server/am/ServiceRecord;
    iget-object v0, v1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2299
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2296
    :cond_0
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 2304
    .end local v1    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v7, v0, -0x1

    :goto_1
    if-ltz v7, :cond_4

    .line 2305
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ServiceRecord;

    .line 2306
    .restart local v1    # "sr":Lcom/android/server/am/ServiceRecord;
    iget-boolean v0, v1, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v0, :cond_2

    .line 2307
    iget-object v0, v1, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v0, v0, Landroid/content/pm/ServiceInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 2308
    const-string v0, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stopping service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": remove task"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2309
    invoke-direct {p0, v1}, Lcom/android/server/am/ActiveServices;->stopServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 2304
    :cond_2
    :goto_2
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 2311
    :cond_3
    iget-object v9, v1, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/am/ServiceRecord$StartItem;

    invoke-virtual {v1}, Lcom/android/server/am/ServiceRecord;->makeNextStartId()I

    move-result v3

    const/4 v5, 0x0

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ServiceRecord$StartItem;-><init>(Lcom/android/server/am/ServiceRecord;ZILandroid/content/Intent;Lcom/android/server/am/ActivityManagerService$NeededUriGrants;)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2313
    iget-object v0, v1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_2

    .line 2317
    const/4 v0, 0x1

    const/4 v3, 0x0

    :try_start_0
    invoke-direct {p0, v1, v0, v3}, Lcom/android/server/am/ActiveServices;->sendServiceArgsLocked(Lcom/android/server/am/ServiceRecord;ZZ)V
    :try_end_0
    .catch Landroid/os/TransactionTooLargeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 2318
    :catch_0
    move-exception v0

    goto :goto_2

    .line 2325
    .end local v1    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_4
    return-void
.end method

.method clearPendingServiceForUid(I)V
    .locals 5
    .param p1, "uid"    # I

    .prologue
    .line 2215
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 2216
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ServiceRecord;

    .line 2217
    .local v1, "sr":Lcom/android/server/am/ServiceRecord;
    iget-object v2, v1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne p1, v2, :cond_0

    .line 2218
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clearPendingServiceForUid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2219
    iget-object v2, v1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    .line 2220
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v3, 0xc

    iget-object v4, v1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(ILjava/lang/Object;)V

    .line 2215
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2223
    .end local v1    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_1
    return-void
.end method

.method protected dumpService(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;IZ)Z
    .locals 22
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "opti"    # I
    .param p6, "dumpAll"    # Z

    .prologue
    .line 2938
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 2940
    .local v18, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ServiceRecord;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 2941
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getUsersLocked()[I

    move-result-object v21

    .line 2942
    .local v21, "users":[I
    const-string v2, "all"

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2943
    move-object/from16 v10, v21

    .local v10, "arr$":[I
    array-length v14, v10

    .local v14, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_0
    if-ge v13, v14, :cond_a

    aget v20, v10, v13

    .line 2944
    .local v20, "user":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/am/ActiveServices$ServiceMap;

    .line 2945
    .local v19, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    if-nez v19, :cond_1

    .line 2943
    :cond_0
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 2948
    :cond_1
    move-object/from16 v0, v19

    iget-object v9, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    .line 2949
    .local v9, "alls":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v12, v2, :cond_0

    .line 2950
    invoke-virtual {v9, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/am/ServiceRecord;

    .line 2951
    .local v17, "r1":Lcom/android/server/am/ServiceRecord;
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2949
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 2955
    .end local v9    # "alls":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    .end local v10    # "arr$":[I
    .end local v12    # "i":I
    .end local v13    # "i$":I
    .end local v14    # "len$":I
    .end local v17    # "r1":Lcom/android/server/am/ServiceRecord;
    .end local v19    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local v20    # "user":I
    :cond_2
    if-eqz p3, :cond_5

    invoke-static/range {p3 .. p3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v11

    .line 2957
    .local v11, "componentName":Landroid/content/ComponentName;
    :goto_2
    const/16 v16, 0x0

    .line 2958
    .local v16, "objectId":I
    if-nez v11, :cond_3

    .line 2961
    const/16 v2, 0x10

    :try_start_1
    move-object/from16 v0, p3

    invoke-static {v0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v16

    .line 2962
    const/16 p3, 0x0

    .line 2963
    const/4 v11, 0x0

    .line 2968
    :cond_3
    :goto_3
    move-object/from16 v10, v21

    .restart local v10    # "arr$":[I
    :try_start_2
    array-length v14, v10

    .restart local v14    # "len$":I
    const/4 v13, 0x0

    .restart local v13    # "i$":I
    :goto_4
    if-ge v13, v14, :cond_a

    aget v20, v10, v13

    .line 2969
    .restart local v20    # "user":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/am/ActiveServices$ServiceMap;

    .line 2970
    .restart local v19    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    if-nez v19, :cond_6

    .line 2968
    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 2955
    .end local v10    # "arr$":[I
    .end local v11    # "componentName":Landroid/content/ComponentName;
    .end local v13    # "i$":I
    .end local v14    # "len$":I
    .end local v16    # "objectId":I
    .end local v19    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local v20    # "user":I
    :cond_5
    const/4 v11, 0x0

    goto :goto_2

    .line 2973
    .restart local v10    # "arr$":[I
    .restart local v11    # "componentName":Landroid/content/ComponentName;
    .restart local v13    # "i$":I
    .restart local v14    # "len$":I
    .restart local v16    # "objectId":I
    .restart local v19    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local v20    # "user":I
    :cond_6
    move-object/from16 v0, v19

    iget-object v9, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    .line 2974
    .restart local v9    # "alls":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_5
    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v12, v2, :cond_4

    .line 2975
    invoke-virtual {v9, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/am/ServiceRecord;

    .line 2976
    .restart local v17    # "r1":Lcom/android/server/am/ServiceRecord;
    if-eqz v11, :cond_8

    .line 2977
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v2, v11}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2978
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2974
    :cond_7
    :goto_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 2980
    :cond_8
    if-eqz p3, :cond_9

    .line 2981
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2982
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 2990
    .end local v9    # "alls":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    .end local v10    # "arr$":[I
    .end local v11    # "componentName":Landroid/content/ComponentName;
    .end local v12    # "i":I
    .end local v13    # "i$":I
    .end local v14    # "len$":I
    .end local v16    # "objectId":I
    .end local v17    # "r1":Lcom/android/server/am/ServiceRecord;
    .end local v19    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local v20    # "user":I
    .end local v21    # "users":[I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 2984
    .restart local v9    # "alls":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    .restart local v10    # "arr$":[I
    .restart local v11    # "componentName":Landroid/content/ComponentName;
    .restart local v12    # "i":I
    .restart local v13    # "i$":I
    .restart local v14    # "len$":I
    .restart local v16    # "objectId":I
    .restart local v17    # "r1":Lcom/android/server/am/ServiceRecord;
    .restart local v19    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local v20    # "user":I
    .restart local v21    # "users":[I
    :cond_9
    :try_start_3
    invoke-static/range {v17 .. v17}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    move/from16 v0, v16

    if-ne v2, v0, :cond_7

    .line 2985
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 2990
    .end local v9    # "alls":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    .end local v11    # "componentName":Landroid/content/ComponentName;
    .end local v12    # "i":I
    .end local v16    # "objectId":I
    .end local v17    # "r1":Lcom/android/server/am/ServiceRecord;
    .end local v19    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local v20    # "user":I
    :cond_a
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2992
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_b

    .line 2993
    const/4 v2, 0x0

    .line 3004
    :goto_7
    return v2

    .line 2996
    :cond_b
    const/4 v15, 0x0

    .line 2997
    .local v15, "needSep":Z
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_8
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v12, v2, :cond_d

    .line 2998
    if-eqz v15, :cond_c

    .line 2999
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3001
    :cond_c
    const/4 v15, 0x1

    .line 3002
    const-string v3, ""

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ServiceRecord;

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v7, p4

    move/from16 v8, p6

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/ActiveServices;->dumpService(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/am/ServiceRecord;[Ljava/lang/String;Z)V

    .line 2997
    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    .line 3004
    :cond_d
    const/4 v2, 0x1

    goto :goto_7

    .line 2964
    .end local v10    # "arr$":[I
    .end local v12    # "i":I
    .end local v13    # "i$":I
    .end local v14    # "len$":I
    .end local v15    # "needSep":Z
    .restart local v11    # "componentName":Landroid/content/ComponentName;
    .restart local v16    # "objectId":I
    :catch_0
    move-exception v2

    goto/16 :goto_3
.end method

.method dumpServicesLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZZLjava/lang/String;)V
    .locals 36
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;
    .param p4, "opti"    # I
    .param p5, "dumpAll"    # Z
    .param p6, "dumpClient"    # Z
    .param p7, "dumpPackage"    # Ljava/lang/String;

    .prologue
    .line 2691
    const/16 v18, 0x0

    .line 2692
    .local v18, "needSep":Z
    const/16 v22, 0x0

    .line 2694
    .local v22, "printedAnything":Z
    new-instance v17, Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;-><init>()V

    .line 2695
    .local v17, "matcher":Lcom/android/server/am/ActivityManagerService$ItemMatcher;
    move-object/from16 v0, v17

    move-object/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->build([Ljava/lang/String;I)I

    .line 2697
    const-string v31, "ACTIVITY MANAGER SERVICES (dumpsys activity services)"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2699
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mLastAnrDump:Ljava/lang/String;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    .line 2700
    const-string v31, "  Last ANR service:"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2701
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mLastAnrDump:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2702
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 2704
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/server/am/ActivityManagerService;->getUsersLocked()[I

    move-result-object v30

    .line 2705
    .local v30, "users":[I
    move-object/from16 v7, v30

    .local v7, "arr$":[I
    array-length v0, v7

    move/from16 v16, v0

    .local v16, "len$":I
    const/4 v14, 0x0

    .local v14, "i$":I
    :goto_0
    move/from16 v0, v16

    if-ge v14, v0, :cond_b

    aget v29, v7, v14

    .line 2706
    .local v29, "user":I
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/server/am/ActiveServices;->getServiceMap(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v27

    .line 2707
    .local v27, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    const/16 v19, 0x0

    .line 2708
    .local v19, "printed":Z
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/util/ArrayMap;->size()I

    move-result v31

    if-lez v31, :cond_e

    .line 2709
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    .line 2710
    .local v20, "nowReal":J
    const/16 v18, 0x0

    .line 2711
    const/16 v26, 0x0

    .local v26, "si":I
    :goto_1
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/util/ArrayMap;->size()I

    move-result v31

    move/from16 v0, v26

    move/from16 v1, v31

    if-ge v0, v1, :cond_d

    .line 2712
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/server/am/ServiceRecord;

    .line 2713
    .local v24, "r":Lcom/android/server/am/ServiceRecord;
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    move-object/from16 v31, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    move-result v31

    if-nez v31, :cond_2

    .line 2711
    :cond_1
    :goto_2
    add-int/lit8 v26, v26, 0x1

    goto :goto_1

    .line 2716
    :cond_2
    if-eqz p7, :cond_3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, p7

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_1

    .line 2719
    :cond_3
    if-nez v19, :cond_5

    .line 2720
    if-eqz v22, :cond_4

    .line 2721
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 2723
    :cond_4
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "  User "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " active services:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2724
    const/16 v19, 0x1

    .line 2726
    :cond_5
    const/16 v22, 0x1

    .line 2727
    if-eqz v18, :cond_6

    .line 2728
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 2730
    :cond_6
    const-string v31, "  * "

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2731
    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2732
    if-eqz p5, :cond_8

    .line 2733
    const-string v31, "    "

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ServiceRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2734
    const/16 v18, 0x1

    .line 2760
    :cond_7
    if-eqz p6, :cond_1

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v31, v0

    if-eqz v31, :cond_1

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v31, v0

    if-eqz v31, :cond_1

    .line 2761
    const-string v31, "    Client:"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2762
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2764
    :try_start_1
    new-instance v28, Lcom/android/internal/os/TransferPipe;

    invoke-direct/range {v28 .. v28}, Lcom/android/internal/os/TransferPipe;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2766
    .local v28, "tp":Lcom/android/internal/os/TransferPipe;
    :try_start_2
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v31, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v24

    move-object/from16 v3, p3

    invoke-interface {v0, v1, v2, v3}, Landroid/app/IApplicationThread;->dumpService(Ljava/io/FileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V

    .line 2768
    const-string v31, "      "

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/os/TransferPipe;->setBufferPrefix(Ljava/lang/String;)V

    .line 2771
    const-wide/16 v32, 0x7d0

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    move-wide/from16 v2, v32

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2773
    :try_start_3
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/os/TransferPipe;->kill()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 2780
    .end local v28    # "tp":Lcom/android/internal/os/TransferPipe;
    :goto_3
    const/16 v18, 0x1

    goto/16 :goto_2

    .line 2736
    :cond_8
    :try_start_4
    const-string v31, "    app="

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2737
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v31, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2738
    const-string v31, "    created="

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2739
    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/android/server/am/ServiceRecord;->createTime:J

    move-wide/from16 v32, v0

    move-wide/from16 v0, v32

    move-wide/from16 v2, v20

    move-object/from16 v4, p2

    invoke-static {v0, v1, v2, v3, v4}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2740
    const-string v31, " started="

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2741
    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    move/from16 v31, v0

    move-object/from16 v0, p2

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 2742
    const-string v31, " connections="

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2743
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/util/ArrayMap;->size()I

    move-result v31

    move-object/from16 v0, p2

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 2744
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/util/ArrayMap;->size()I

    move-result v31

    if-lez v31, :cond_7

    .line 2745
    const-string v31, "    Connections:"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2746
    const/4 v10, 0x0

    .local v10, "conni":I
    :goto_4
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/util/ArrayMap;->size()I

    move-result v31

    move/from16 v0, v31

    if-ge v10, v0, :cond_7

    .line 2747
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 2748
    .local v8, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_5
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v31

    move/from16 v0, v31

    if-ge v13, v0, :cond_a

    .line 2749
    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ConnectionRecord;

    .line 2750
    .local v9, "conn":Lcom/android/server/am/ConnectionRecord;
    const-string v31, "      "

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2751
    iget-object v0, v9, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/am/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v31

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    invoke-virtual/range {v31 .. v35}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2753
    const-string v31, " -> "

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2754
    iget-object v0, v9, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v23, v0

    .line 2755
    .local v23, "proc":Lcom/android/server/am/ProcessRecord;
    if-eqz v23, :cond_9

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v31

    :goto_6
    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2748
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 2755
    :cond_9
    const-string v31, "null"
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_6

    .line 2746
    .end local v9    # "conn":Lcom/android/server/am/ConnectionRecord;
    .end local v23    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_a
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_4

    .line 2773
    .end local v8    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v10    # "conni":I
    .end local v13    # "i":I
    .restart local v28    # "tp":Lcom/android/internal/os/TransferPipe;
    :catchall_0
    move-exception v31

    :try_start_5
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/os/TransferPipe;->kill()V

    throw v31
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 2775
    .end local v28    # "tp":Lcom/android/internal/os/TransferPipe;
    :catch_0
    move-exception v12

    .line 2776
    .local v12, "e":Ljava/io/IOException;
    :try_start_6
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "      Failure while dumping the service: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_3

    .line 2824
    .end local v7    # "arr$":[I
    .end local v12    # "e":Ljava/io/IOException;
    .end local v14    # "i$":I
    .end local v16    # "len$":I
    .end local v19    # "printed":Z
    .end local v20    # "nowReal":J
    .end local v24    # "r":Lcom/android/server/am/ServiceRecord;
    .end local v26    # "si":I
    .end local v27    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local v29    # "user":I
    .end local v30    # "users":[I
    :catch_1
    move-exception v12

    .line 2825
    .local v12, "e":Ljava/lang/Exception;
    const-string v31, "ActivityManager"

    const-string v32, "Exception in dumpServicesLocked"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-static {v0, v1, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2828
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v31

    if-lez v31, :cond_20

    .line 2829
    const/16 v19, 0x0

    .line 2830
    .restart local v19    # "printed":Z
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v31

    move/from16 v0, v31

    if-ge v13, v0, :cond_1f

    .line 2831
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/server/am/ServiceRecord;

    .line 2832
    .restart local v24    # "r":Lcom/android/server/am/ServiceRecord;
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    move-object/from16 v31, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    move-result v31

    if-nez v31, :cond_1b

    .line 2830
    :cond_c
    :goto_8
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    .line 2777
    .end local v13    # "i":I
    .restart local v7    # "arr$":[I
    .restart local v14    # "i$":I
    .restart local v16    # "len$":I
    .restart local v20    # "nowReal":J
    .restart local v26    # "si":I
    .restart local v27    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local v29    # "user":I
    .restart local v30    # "users":[I
    :catch_2
    move-exception v12

    .line 2778
    .local v12, "e":Landroid/os/RemoteException;
    :try_start_7
    const-string v31, "      Got a RemoteException while dumping the service"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2783
    .end local v12    # "e":Landroid/os/RemoteException;
    .end local v24    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_d
    or-int v18, v18, v19

    .line 2785
    .end local v20    # "nowReal":J
    .end local v26    # "si":I
    :cond_e
    const/16 v19, 0x0

    .line 2786
    const/16 v26, 0x0

    .restart local v26    # "si":I
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v6

    .local v6, "SN":I
    :goto_9
    move/from16 v0, v26

    if-ge v0, v6, :cond_14

    .line 2787
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/server/am/ServiceRecord;

    .line 2788
    .restart local v24    # "r":Lcom/android/server/am/ServiceRecord;
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    move-object/from16 v31, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    move-result v31

    if-nez v31, :cond_10

    .line 2786
    :cond_f
    :goto_a
    add-int/lit8 v26, v26, 0x1

    goto :goto_9

    .line 2791
    :cond_10
    if-eqz p7, :cond_11

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, p7

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_f

    .line 2794
    :cond_11
    if-nez v19, :cond_13

    .line 2795
    if-eqz v22, :cond_12

    .line 2796
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 2798
    :cond_12
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "  User "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " delayed start services:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2799
    const/16 v19, 0x1

    .line 2801
    :cond_13
    const/16 v22, 0x1

    .line 2802
    const-string v31, "  * Delayed start "

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_a

    .line 2804
    .end local v24    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_14
    const/16 v19, 0x0

    .line 2805
    const/16 v26, 0x0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v6

    :goto_b
    move/from16 v0, v26

    if-ge v0, v6, :cond_1a

    .line 2806
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/server/am/ServiceRecord;

    .line 2807
    .restart local v24    # "r":Lcom/android/server/am/ServiceRecord;
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    move-object/from16 v31, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    move-result v31

    if-nez v31, :cond_16

    .line 2805
    :cond_15
    :goto_c
    add-int/lit8 v26, v26, 0x1

    goto :goto_b

    .line 2810
    :cond_16
    if-eqz p7, :cond_17

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, p7

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_15

    .line 2813
    :cond_17
    if-nez v19, :cond_19

    .line 2814
    if-eqz v22, :cond_18

    .line 2815
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 2817
    :cond_18
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "  User "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " starting in background:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2818
    const/16 v19, 0x1

    .line 2820
    :cond_19
    const/16 v22, 0x1

    .line 2821
    const-string v31, "  * Starting bg "

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_c

    .line 2705
    .end local v24    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_1a
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 2835
    .end local v6    # "SN":I
    .end local v7    # "arr$":[I
    .end local v14    # "i$":I
    .end local v16    # "len$":I
    .end local v26    # "si":I
    .end local v27    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local v29    # "user":I
    .end local v30    # "users":[I
    .restart local v13    # "i":I
    .restart local v24    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_1b
    if-eqz p7, :cond_1c

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, p7

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_c

    .line 2838
    :cond_1c
    const/16 v22, 0x1

    .line 2839
    if-nez v19, :cond_1e

    .line 2840
    if-eqz v18, :cond_1d

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 2841
    :cond_1d
    const/16 v18, 0x1

    .line 2842
    const-string v31, "  Pending services:"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2843
    const/16 v19, 0x1

    .line 2845
    :cond_1e
    const-string v31, "  * Pending "

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2846
    const-string v31, "    "

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ServiceRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 2848
    .end local v24    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_1f
    const/16 v18, 0x1

    .line 2851
    .end local v13    # "i":I
    .end local v19    # "printed":Z
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v31

    if-lez v31, :cond_27

    .line 2852
    const/16 v19, 0x0

    .line 2853
    .restart local v19    # "printed":Z
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v31

    move/from16 v0, v31

    if-ge v13, v0, :cond_26

    .line 2854
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/server/am/ServiceRecord;

    .line 2855
    .restart local v24    # "r":Lcom/android/server/am/ServiceRecord;
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    move-object/from16 v31, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    move-result v31

    if-nez v31, :cond_22

    .line 2853
    :cond_21
    :goto_e
    add-int/lit8 v13, v13, 0x1

    goto :goto_d

    .line 2858
    :cond_22
    if-eqz p7, :cond_23

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, p7

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_21

    .line 2861
    :cond_23
    const/16 v22, 0x1

    .line 2862
    if-nez v19, :cond_25

    .line 2863
    if-eqz v18, :cond_24

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 2864
    :cond_24
    const/16 v18, 0x1

    .line 2865
    const-string v31, "  Restarting services:"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2866
    const/16 v19, 0x1

    .line 2868
    :cond_25
    const-string v31, "  * Restarting "

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2869
    const-string v31, "    "

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ServiceRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_e

    .line 2871
    .end local v24    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_26
    const/16 v18, 0x1

    .line 2874
    .end local v13    # "i":I
    .end local v19    # "printed":Z
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v31

    if-lez v31, :cond_2e

    .line 2875
    const/16 v19, 0x0

    .line 2876
    .restart local v19    # "printed":Z
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v31

    move/from16 v0, v31

    if-ge v13, v0, :cond_2d

    .line 2877
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/server/am/ServiceRecord;

    .line 2878
    .restart local v24    # "r":Lcom/android/server/am/ServiceRecord;
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    move-object/from16 v31, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    move-result v31

    if-nez v31, :cond_29

    .line 2876
    :cond_28
    :goto_10
    add-int/lit8 v13, v13, 0x1

    goto :goto_f

    .line 2881
    :cond_29
    if-eqz p7, :cond_2a

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, p7

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_28

    .line 2884
    :cond_2a
    const/16 v22, 0x1

    .line 2885
    if-nez v19, :cond_2c

    .line 2886
    if-eqz v18, :cond_2b

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 2887
    :cond_2b
    const/16 v18, 0x1

    .line 2888
    const-string v31, "  Destroying services:"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2889
    const/16 v19, 0x1

    .line 2891
    :cond_2c
    const-string v31, "  * Destroy "

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2892
    const-string v31, "    "

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ServiceRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_10

    .line 2894
    .end local v24    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_2d
    const/16 v18, 0x1

    .line 2897
    .end local v13    # "i":I
    .end local v19    # "printed":Z
    :cond_2e
    if-eqz p5, :cond_35

    .line 2898
    const/16 v19, 0x0

    .line 2899
    .restart local v19    # "printed":Z
    const/4 v15, 0x0

    .local v15, "ic":I
    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/util/ArrayMap;->size()I

    move-result v31

    move/from16 v0, v31

    if-ge v15, v0, :cond_35

    .line 2900
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/util/ArrayList;

    .line 2901
    .local v25, "r":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_12
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v31

    move/from16 v0, v31

    if-ge v13, v0, :cond_34

    .line 2902
    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ConnectionRecord;

    .line 2903
    .local v11, "cr":Lcom/android/server/am/ConnectionRecord;
    iget-object v0, v11, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    move-object/from16 v31, v0

    iget-object v0, v11, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    move-object/from16 v32, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    move-result v31

    if-nez v31, :cond_30

    .line 2901
    :cond_2f
    :goto_13
    add-int/lit8 v13, v13, 0x1

    goto :goto_12

    .line 2906
    :cond_30
    if-eqz p7, :cond_31

    iget-object v0, v11, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v31, v0

    if-eqz v31, :cond_2f

    iget-object v0, v11, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, p7

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_2f

    .line 2910
    :cond_31
    const/16 v22, 0x1

    .line 2911
    if-nez v19, :cond_33

    .line 2912
    if-eqz v18, :cond_32

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 2913
    :cond_32
    const/16 v18, 0x1

    .line 2914
    const-string v31, "  Connection bindings to services:"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2915
    const/16 v19, 0x1

    .line 2917
    :cond_33
    const-string v31, "  * "

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2918
    const-string v31, "    "

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v11, v0, v1}, Lcom/android/server/am/ConnectionRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_13

    .line 2899
    .end local v11    # "cr":Lcom/android/server/am/ConnectionRecord;
    :cond_34
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_11

    .line 2923
    .end local v13    # "i":I
    .end local v15    # "ic":I
    .end local v19    # "printed":Z
    .end local v25    # "r":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    :cond_35
    if-nez v22, :cond_36

    .line 2924
    const-string v31, "  (nothing)"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2926
    :cond_36
    return-void
.end method

.method public getRunningServiceControlPanelLocked(Landroid/content/ComponentName;)Landroid/app/PendingIntent;
    .locals 6
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 2612
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 2613
    .local v4, "userId":I
    invoke-virtual {p0, p1, v4}, Lcom/android/server/am/ActiveServices;->getServiceByName(Landroid/content/ComponentName;I)Lcom/android/server/am/ServiceRecord;

    move-result-object v3

    .line 2614
    .local v3, "r":Lcom/android/server/am/ServiceRecord;
    if-eqz v3, :cond_2

    .line 2615
    iget-object v5, v3, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "conni":I
    :goto_0
    if-ltz v1, :cond_2

    .line 2616
    iget-object v5, v3, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 2617
    .local v0, "conn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 2618
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ConnectionRecord;

    iget-object v5, v5, Lcom/android/server/am/ConnectionRecord;->clientIntent:Landroid/app/PendingIntent;

    if-eqz v5, :cond_0

    .line 2619
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ConnectionRecord;

    iget-object v5, v5, Lcom/android/server/am/ConnectionRecord;->clientIntent:Landroid/app/PendingIntent;

    .line 2624
    .end local v0    # "conn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v1    # "conni":I
    .end local v2    # "i":I
    :goto_2
    return-object v5

    .line 2617
    .restart local v0    # "conn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .restart local v1    # "conni":I
    .restart local v2    # "i":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2615
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2624
    .end local v0    # "conn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v1    # "conni":I
    .end local v2    # "i":I
    :cond_2
    const/4 v5, 0x0

    goto :goto_2
.end method

.method getRunningServiceInfoLocked(II)Ljava/util/List;
    .locals 14
    .param p1, "maxNum"    # I
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2561
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2564
    .local v6, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 2565
    .local v9, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2567
    .local v2, "ident":J
    :try_start_0
    const-string v12, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-static {v12, v9}, Landroid/app/ActivityManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v12

    if-nez v12, :cond_2

    .line 2570
    iget-object v12, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v12}, Lcom/android/server/am/ActivityManagerService;->getUsersLocked()[I

    move-result-object v11

    .line 2571
    .local v11, "users":[I
    const/4 v8, 0x0

    .local v8, "ui":I
    :goto_0
    array-length v12, v11

    if-ge v8, v12, :cond_1

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v12, p1, :cond_1

    .line 2572
    aget v12, v11, v8

    invoke-virtual {p0, v12}, Lcom/android/server/am/ActiveServices;->getServices(I)Landroid/util/ArrayMap;

    move-result-object v0

    .line 2573
    .local v0, "alls":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v12

    if-ge v1, v12, :cond_0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v12, p1, :cond_0

    .line 2574
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ServiceRecord;

    .line 2575
    .local v7, "sr":Lcom/android/server/am/ServiceRecord;
    invoke-virtual {p0, v7}, Lcom/android/server/am/ActiveServices;->makeRunningServiceInfoLocked(Lcom/android/server/am/ServiceRecord;)Landroid/app/ActivityManager$RunningServiceInfo;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2573
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2571
    .end local v7    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 2579
    .end local v0    # "alls":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v12, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v1, v12, :cond_5

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v12, p1, :cond_5

    .line 2580
    iget-object v12, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ServiceRecord;

    .line 2581
    .local v5, "r":Lcom/android/server/am/ServiceRecord;
    invoke-virtual {p0, v5}, Lcom/android/server/am/ActiveServices;->makeRunningServiceInfoLocked(Lcom/android/server/am/ServiceRecord;)Landroid/app/ActivityManager$RunningServiceInfo;

    move-result-object v4

    .line 2583
    .local v4, "info":Landroid/app/ActivityManager$RunningServiceInfo;
    iget-wide v12, v5, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    iput-wide v12, v4, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    .line 2584
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2579
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2587
    .end local v1    # "i":I
    .end local v4    # "info":Landroid/app/ActivityManager$RunningServiceInfo;
    .end local v5    # "r":Lcom/android/server/am/ServiceRecord;
    .end local v8    # "ui":I
    .end local v11    # "users":[I
    :cond_2
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    .line 2588
    .local v10, "userId":I
    invoke-virtual {p0, v10}, Lcom/android/server/am/ActiveServices;->getServices(I)Landroid/util/ArrayMap;

    move-result-object v0

    .line 2589
    .restart local v0    # "alls":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v12

    if-ge v1, v12, :cond_3

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v12, p1, :cond_3

    .line 2590
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ServiceRecord;

    .line 2591
    .restart local v7    # "sr":Lcom/android/server/am/ServiceRecord;
    invoke-virtual {p0, v7}, Lcom/android/server/am/ActiveServices;->makeRunningServiceInfoLocked(Lcom/android/server/am/ServiceRecord;)Landroid/app/ActivityManager$RunningServiceInfo;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2589
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2594
    .end local v7    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_3
    const/4 v1, 0x0

    :goto_4
    iget-object v12, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v1, v12, :cond_5

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v12, p1, :cond_5

    .line 2595
    iget-object v12, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ServiceRecord;

    .line 2596
    .restart local v5    # "r":Lcom/android/server/am/ServiceRecord;
    iget v12, v5, Lcom/android/server/am/ServiceRecord;->userId:I

    if-ne v12, v10, :cond_4

    .line 2597
    invoke-virtual {p0, v5}, Lcom/android/server/am/ActiveServices;->makeRunningServiceInfoLocked(Lcom/android/server/am/ServiceRecord;)Landroid/app/ActivityManager$RunningServiceInfo;

    move-result-object v4

    .line 2599
    .restart local v4    # "info":Landroid/app/ActivityManager$RunningServiceInfo;
    iget-wide v12, v5, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    iput-wide v12, v4, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    .line 2600
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2594
    .end local v4    # "info":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2605
    .end local v0    # "alls":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    .end local v5    # "r":Lcom/android/server/am/ServiceRecord;
    .end local v10    # "userId":I
    :cond_5
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2608
    return-object v6

    .line 2605
    .end local v1    # "i":I
    :catchall_0
    move-exception v12

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v12
.end method

.method getServiceByName(Landroid/content/ComponentName;I)Lcom/android/server/am/ServiceRecord;
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "callingUser"    # I

    .prologue
    .line 287
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    if-eqz v0, :cond_0

    .line 288
    const-string v0, "ActivityManager_MU"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getServiceByName("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), callingUser = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/am/ActiveServices;->getServiceMap(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ServiceRecord;

    return-object v0
.end method

.method getServices(I)Landroid/util/ArrayMap;
    .locals 1
    .param p1, "callingUser"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 307
    invoke-direct {p0, p1}, Lcom/android/server/am/ActiveServices;->getServiceMap(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    return-object v0
.end method

.method hasBackgroundServices(I)Z
    .locals 4
    .param p1, "callingUser"    # I

    .prologue
    const/4 v1, 0x0

    .line 293
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActiveServices$ServiceMap;

    .line 294
    .local v0, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Lcom/android/server/am/ActiveServices;->mMaxStartingBackground:I

    if-lt v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method final killServicesLocked(Lcom/android/server/am/ProcessRecord;Z)V
    .locals 24
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "allowRestart"    # Z

    .prologue
    .line 2357
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/util/ArraySet;->size()I

    move-result v19

    add-int/lit8 v13, v19, -0x1

    .local v13, "i":I
    :goto_0
    if-ltz v13, :cond_0

    .line 2358
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/am/ConnectionRecord;

    .line 2359
    .local v16, "r":Lcom/android/server/am/ConnectionRecord;
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActiveServices;->removeConnectionLocked(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;)V

    .line 2357
    add-int/lit8 v13, v13, -0x1

    goto :goto_0

    .line 2361
    .end local v16    # "r":Lcom/android/server/am/ConnectionRecord;
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->updateServiceConnectionActivitiesLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 2362
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/util/ArraySet;->clear()V

    .line 2365
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/util/ArraySet;->size()I

    move-result v19

    add-int/lit8 v13, v19, -0x1

    :goto_1
    if-ltz v13, :cond_a

    .line 2366
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/am/ServiceRecord;

    .line 2367
    .local v18, "sr":Lcom/android/server/am/ServiceRecord;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v20

    monitor-enter v20

    .line 2368
    :try_start_0
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->stopLaunchedLocked()V

    .line 2369
    monitor-exit v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2370
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    if-eq v0, v1, :cond_1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/server/am/ProcessRecord;->persistent:Z

    move/from16 v19, v0

    if-nez v19, :cond_1

    .line 2371
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 2373
    :cond_1
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 2374
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    .line 2375
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    .line 2376
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/am/ServiceRecord;->forceClearTracker()V

    .line 2377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 2378
    sget-boolean v19, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v19, :cond_2

    const-string v19, "ActivityManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "killServices remove destroying "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2381
    :cond_2
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/util/ArrayMap;->size()I

    move-result v14

    .line 2382
    .local v14, "numClients":I
    add-int/lit8 v7, v14, -0x1

    .local v7, "bindingi":I
    :goto_2
    if-ltz v7, :cond_9

    .line 2383
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/IntentBindRecord;

    .line 2384
    .local v6, "b":Lcom/android/server/am/IntentBindRecord;
    sget-boolean v19, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v19, :cond_3

    const-string v19, "ActivityManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Killing binding "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ": shouldUnbind="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-boolean v0, v6, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2386
    :cond_3
    const/16 v19, 0x0

    move-object/from16 v0, v19

    iput-object v0, v6, Lcom/android/server/am/IntentBindRecord;->binder:Landroid/os/IBinder;

    .line 2387
    const/16 v19, 0x0

    move/from16 v0, v19

    iput-boolean v0, v6, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    move/from16 v0, v19

    iput-boolean v0, v6, Lcom/android/server/am/IntentBindRecord;->received:Z

    move/from16 v0, v19

    iput-boolean v0, v6, Lcom/android/server/am/IntentBindRecord;->requested:Z

    .line 2392
    iget-object v0, v6, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/util/ArrayMap;->size()I

    move-result v19

    add-int/lit8 v5, v19, -0x1

    .local v5, "appi":I
    :goto_3
    if-ltz v5, :cond_8

    .line 2393
    iget-object v0, v6, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/ProcessRecord;

    .line 2395
    .local v15, "proc":Lcom/android/server/am/ProcessRecord;
    iget-boolean v0, v15, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    move/from16 v19, v0

    if-nez v19, :cond_4

    iget-object v0, v15, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v19, v0

    if-nez v19, :cond_5

    .line 2392
    :cond_4
    :goto_4
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    .line 2369
    .end local v5    # "appi":I
    .end local v6    # "b":Lcom/android/server/am/IntentBindRecord;
    .end local v7    # "bindingi":I
    .end local v14    # "numClients":I
    .end local v15    # "proc":Lcom/android/server/am/ProcessRecord;
    :catchall_0
    move-exception v19

    :try_start_1
    monitor-exit v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v19

    .line 2401
    .restart local v5    # "appi":I
    .restart local v6    # "b":Lcom/android/server/am/IntentBindRecord;
    .restart local v7    # "bindingi":I
    .restart local v14    # "numClients":I
    .restart local v15    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_5
    iget-object v0, v6, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/AppBindRecord;

    .line 2402
    .local v4, "abind":Lcom/android/server/am/AppBindRecord;
    const/4 v12, 0x0

    .line 2403
    .local v12, "hasCreate":Z
    iget-object v0, v4, Lcom/android/server/am/AppBindRecord;->connections:Landroid/util/ArraySet;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/util/ArraySet;->size()I

    move-result v19

    add-int/lit8 v10, v19, -0x1

    .local v10, "conni":I
    :goto_5
    if-ltz v10, :cond_6

    .line 2404
    iget-object v0, v4, Lcom/android/server/am/AppBindRecord;->connections:Landroid/util/ArraySet;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ConnectionRecord;

    .line 2405
    .local v9, "conn":Lcom/android/server/am/ConnectionRecord;
    iget v0, v9, Lcom/android/server/am/ConnectionRecord;->flags:I

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x31

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    .line 2407
    const/4 v12, 0x1

    .line 2411
    .end local v9    # "conn":Lcom/android/server/am/ConnectionRecord;
    :cond_6
    if-nez v12, :cond_4

    goto :goto_4

    .line 2403
    .restart local v9    # "conn":Lcom/android/server/am/ConnectionRecord;
    :cond_7
    add-int/lit8 v10, v10, -0x1

    goto :goto_5

    .line 2382
    .end local v4    # "abind":Lcom/android/server/am/AppBindRecord;
    .end local v9    # "conn":Lcom/android/server/am/ConnectionRecord;
    .end local v10    # "conni":I
    .end local v12    # "hasCreate":Z
    .end local v15    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_8
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_2

    .line 2365
    .end local v5    # "appi":I
    .end local v6    # "b":Lcom/android/server/am/IntentBindRecord;
    :cond_9
    add-int/lit8 v13, v13, -0x1

    goto/16 :goto_1

    .line 2425
    .end local v7    # "bindingi":I
    .end local v14    # "numClients":I
    .end local v18    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_a
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->userId:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/am/ActiveServices;->getServiceMap(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v17

    .line 2428
    .local v17, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/util/ArraySet;->size()I

    move-result v19

    add-int/lit8 v13, v19, -0x1

    :goto_6
    if-ltz v13, :cond_13

    .line 2429
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/am/ServiceRecord;

    .line 2433
    .restart local v18    # "sr":Lcom/android/server/am/ServiceRecord;
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/server/am/ProcessRecord;->persistent:Z

    move/from16 v19, v0

    if-nez v19, :cond_b

    .line 2434
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 2439
    :cond_b
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ServiceRecord;

    .line 2440
    .local v11, "curRec":Lcom/android/server/am/ServiceRecord;
    move-object/from16 v0, v18

    if-eq v11, v0, :cond_d

    .line 2441
    if-eqz v11, :cond_c

    .line 2442
    const-string v19, "ActivityManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Service "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " in process "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " not same as in map: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2428
    :cond_c
    :goto_7
    add-int/lit8 v13, v13, -0x1

    goto :goto_6

    .line 2450
    :cond_d
    if-eqz p2, :cond_e

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ServiceRecord;->crashCount:I

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_e

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x8

    if-nez v19, :cond_e

    .line 2452
    const-string v19, "ActivityManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Service crashed "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ServiceRecord;->crashCount:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " times, stopping: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2454
    const/16 v19, 0x7552

    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ServiceRecord;->userId:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ServiceRecord;->crashCount:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x3

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2456
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    goto/16 :goto_7

    .line 2457
    :cond_e
    if-eqz p2, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ServiceRecord;->userId:I

    move/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Lcom/android/server/am/ActivityManagerService;->isUserRunningLocked(IZ)Z

    move-result v19

    if-nez v19, :cond_10

    .line 2458
    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    goto/16 :goto_7

    .line 2460
    :cond_10
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActiveServices;->scheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;Z)Z

    move-result v8

    .line 2465
    .local v8, "canceled":Z
    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    move/from16 v19, v0

    if-eqz v19, :cond_c

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/server/am/ServiceRecord;->stopIfKilled:Z

    move/from16 v19, v0

    if-nez v19, :cond_11

    if-eqz v8, :cond_c

    .line 2466
    :cond_11
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-nez v19, :cond_c

    .line 2467
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    .line 2468
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    move-object/from16 v19, v0

    if-eqz v19, :cond_12

    .line 2469
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v21

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v22

    invoke-virtual/range {v19 .. v23}, Lcom/android/internal/app/ProcessStats$ServiceState;->setStarted(ZIJ)V

    .line 2472
    :cond_12
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/am/ServiceRecord;->hasAutoCreateConnections()Z

    move-result v19

    if-nez v19, :cond_c

    .line 2474
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    goto/16 :goto_7

    .line 2481
    .end local v8    # "canceled":Z
    .end local v11    # "curRec":Lcom/android/server/am/ServiceRecord;
    .end local v18    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_13
    if-nez p2, :cond_17

    .line 2482
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/util/ArraySet;->clear()V

    .line 2485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    add-int/lit8 v13, v19, -0x1

    :goto_8
    if-ltz v13, :cond_15

    .line 2486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/am/ServiceRecord;

    .line 2487
    .local v16, "r":Lcom/android/server/am/ServiceRecord;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_14

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_14

    .line 2489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2490
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/am/ActiveServices;->clearRestartingIfNeededLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 2485
    :cond_14
    add-int/lit8 v13, v13, -0x1

    goto :goto_8

    .line 2493
    .end local v16    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    add-int/lit8 v13, v19, -0x1

    :goto_9
    if-ltz v13, :cond_17

    .line 2494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/am/ServiceRecord;

    .line 2495
    .restart local v16    # "r":Lcom/android/server/am/ServiceRecord;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_16

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_16

    .line 2497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2493
    :cond_16
    add-int/lit8 v13, v13, -0x1

    goto :goto_9

    .line 2503
    .end local v16    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 2504
    :cond_18
    :goto_a
    if-lez v13, :cond_19

    .line 2505
    add-int/lit8 v13, v13, -0x1

    .line 2506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/am/ServiceRecord;

    .line 2507
    .restart local v18    # "sr":Lcom/android/server/am/ServiceRecord;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_18

    .line 2508
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/am/ServiceRecord;->forceClearTracker()V

    .line 2509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2510
    sget-boolean v19, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v19, :cond_18

    const-string v19, "ActivityManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "killServices remove destroying "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 2514
    .end local v18    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_19
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/util/ArraySet;->clear()V

    .line 2515
    return-void
.end method

.method makeRunningServiceInfoLocked(Lcom/android/server/am/ServiceRecord;)Landroid/app/ActivityManager$RunningServiceInfo;
    .locals 8
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;

    .prologue
    .line 2518
    new-instance v4, Landroid/app/ActivityManager$RunningServiceInfo;

    invoke-direct {v4}, Landroid/app/ActivityManager$RunningServiceInfo;-><init>()V

    .line 2520
    .local v4, "info":Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    iput-object v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    .line 2521
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_0

    .line 2522
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v5, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    iput v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    .line 2524
    :cond_0
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    .line 2525
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    iput-object v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    .line 2526
    iget-boolean v5, p1, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    iput-boolean v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->foreground:Z

    .line 2527
    iget-wide v6, p1, Lcom/android/server/am/ServiceRecord;->createTime:J

    iput-wide v6, v4, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    .line 2528
    iget-boolean v5, p1, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    iput-boolean v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    .line 2529
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    iput v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->clientCount:I

    .line 2530
    iget v5, p1, Lcom/android/server/am/ServiceRecord;->crashCount:I

    iput v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->crashCount:I

    .line 2531
    iget-wide v6, p1, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    iput-wide v6, v4, Landroid/app/ActivityManager$RunningServiceInfo;->lastActivityTime:J

    .line 2532
    iget-boolean v5, p1, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-eqz v5, :cond_1

    .line 2533
    iget v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    or-int/lit8 v5, v5, 0x2

    iput v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    .line 2535
    :cond_1
    iget-boolean v5, p1, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v5, :cond_2

    .line 2536
    iget v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    or-int/lit8 v5, v5, 0x1

    iput v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    .line 2538
    :cond_2
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_3

    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v5, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v6, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-ne v5, v6, :cond_3

    .line 2539
    iget v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    or-int/lit8 v5, v5, 0x4

    iput v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    .line 2541
    :cond_3
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_4

    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v5, v5, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-eqz v5, :cond_4

    .line 2542
    iget v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    or-int/lit8 v5, v5, 0x8

    iput v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    .line 2545
    :cond_4
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "conni":I
    :goto_0
    if-ltz v1, :cond_5

    .line 2546
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 2547
    .local v2, "connl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_7

    .line 2548
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ConnectionRecord;

    .line 2549
    .local v0, "conn":Lcom/android/server/am/ConnectionRecord;
    iget v5, v0, Lcom/android/server/am/ConnectionRecord;->clientLabel:I

    if-eqz v5, :cond_6

    .line 2550
    iget-object v5, v0, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v5, v5, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->clientPackage:Ljava/lang/String;

    .line 2551
    iget v5, v0, Lcom/android/server/am/ConnectionRecord;->clientLabel:I

    iput v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    .line 2556
    .end local v0    # "conn":Lcom/android/server/am/ConnectionRecord;
    .end local v2    # "connl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v3    # "i":I
    :cond_5
    return-object v4

    .line 2547
    .restart local v0    # "conn":Lcom/android/server/am/ConnectionRecord;
    .restart local v2    # "connl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .restart local v3    # "i":I
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2545
    .end local v0    # "conn":Lcom/android/server/am/ConnectionRecord;
    :cond_7
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method peekServiceLocked(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;
    .locals 12
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 538
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/android/server/am/ActiveServices;->retrieveServiceLocked(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;IIIZZ)Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    move-result-object v10

    .line 542
    .local v10, "r":Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    const/4 v11, 0x0

    .line 543
    .local v11, "ret":Landroid/os/IBinder;
    if-eqz v10, :cond_1

    .line 545
    iget-object v0, v10, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    if-nez v0, :cond_0

    .line 546
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: Accessing service from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requires "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v10, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->permission:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 552
    :cond_0
    iget-object v0, v10, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    iget-object v1, v10, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    iget-object v1, v1, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/IntentBindRecord;

    .line 553
    .local v9, "ib":Lcom/android/server/am/IntentBindRecord;
    if-eqz v9, :cond_1

    .line 554
    iget-object v11, v9, Lcom/android/server/am/IntentBindRecord;->binder:Landroid/os/IBinder;

    .line 558
    .end local v9    # "ib":Lcom/android/server/am/IntentBindRecord;
    :cond_1
    return-object v11
.end method

.method final performServiceRestartLocked(Lcom/android/server/am/ServiceRecord;)V
    .locals 6
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1384
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1425
    :goto_0
    return-void

    .line 1387
    :cond_0
    invoke-direct {p0, p1, v5, v5}, Lcom/android/server/am/ActiveServices;->isServiceNeeded(Lcom/android/server/am/ServiceRecord;ZZ)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1393
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Restarting service that is not needed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1397
    :cond_1
    :try_start_0
    sget-boolean v3, Lcom/android/server/am/ActiveServices;->SERVICE_RESCHEDULE:Z

    if-ne v3, v4, :cond_6

    .line 1398
    const/4 v0, 0x0

    .line 1399
    .local v0, "shouldDelay":Z
    const/4 v2, 0x0

    .line 1400
    .local v2, "top_rc":Lcom/android/server/am/ActivityRecord;
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 1401
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v1, :cond_2

    .line 1402
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 1404
    :cond_2
    if-eqz v2, :cond_3

    .line 1405
    iget-boolean v3, v2, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-nez v3, :cond_3

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1406
    const/4 v0, 0x1

    .line 1409
    :cond_3
    if-nez v0, :cond_4

    .line 1410
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v3}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    iget-boolean v4, p1, Lcom/android/server/am/ServiceRecord;->createdFromFg:Z

    const/4 v5, 0x1

    invoke-direct {p0, p1, v3, v4, v5}, Lcom/android/server/am/ActiveServices;->bringUpServiceLocked(Lcom/android/server/am/ServiceRecord;IZZ)Ljava/lang/String;

    goto :goto_0

    .line 1422
    .end local v0    # "shouldDelay":Z
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v2    # "top_rc":Lcom/android/server/am/ActivityRecord;
    :catch_0
    move-exception v3

    goto :goto_0

    .line 1412
    .restart local v0    # "shouldDelay":Z
    .restart local v1    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v2    # "top_rc":Lcom/android/server/am/ActivityRecord;
    :cond_4
    sget-boolean v3, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_SERVICE:Z

    if-eqz v3, :cond_5

    .line 1413
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reschedule service restart due to app launch r.shortName "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " r.app = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1416
    :cond_5
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->resetRestartCounter()V

    .line 1417
    const/4 v3, 0x1

    invoke-direct {p0, p1, v3}, Lcom/android/server/am/ActiveServices;->scheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;Z)Z

    goto/16 :goto_0

    .line 1420
    .end local v0    # "shouldDelay":Z
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v2    # "top_rc":Lcom/android/server/am/ActivityRecord;
    :cond_6
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v3}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    iget-boolean v4, p1, Lcom/android/server/am/ServiceRecord;->createdFromFg:Z

    const/4 v5, 0x1

    invoke-direct {p0, p1, v3, v4, v5}, Lcom/android/server/am/ActiveServices;->bringUpServiceLocked(Lcom/android/server/am/ServiceRecord;IZZ)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/TransactionTooLargeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method

.method processStartTimedOutLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 5
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 2200
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 2201
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ServiceRecord;

    .line 2202
    .local v1, "sr":Lcom/android/server/am/ServiceRecord;
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v3, v1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v2, v3, :cond_0

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, v1, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    if-ne v2, p1, :cond_2

    .line 2205
    :cond_1
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Forcing bringing down service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2206
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    .line 2207
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2208
    add-int/lit8 v0, v0, -0x1

    .line 2209
    invoke-direct {p0, v1}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 2200
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2212
    .end local v1    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_3
    return-void
.end method

.method publishServiceLocked(Lcom/android/server/am/ServiceRecord;Landroid/content/Intent;Landroid/os/IBinder;)V
    .locals 12
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "service"    # Landroid/os/IBinder;

    .prologue
    .line 906
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 908
    .local v8, "origId":J
    :try_start_0
    sget-boolean v7, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v7, :cond_0

    const-string v7, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "PUBLISHING "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    :cond_0
    if-eqz p1, :cond_8

    .line 911
    new-instance v5, Landroid/content/Intent$FilterComparison;

    invoke-direct {v5, p2}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 913
    .local v5, "filter":Landroid/content/Intent$FilterComparison;
    iget-object v7, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IntentBindRecord;

    .line 914
    .local v0, "b":Lcom/android/server/am/IntentBindRecord;
    if-eqz v0, :cond_7

    iget-boolean v7, v0, Lcom/android/server/am/IntentBindRecord;->received:Z

    if-nez v7, :cond_7

    .line 915
    iput-object p3, v0, Lcom/android/server/am/IntentBindRecord;->binder:Landroid/os/IBinder;

    .line 916
    const/4 v7, 0x1

    iput-boolean v7, v0, Lcom/android/server/am/IntentBindRecord;->requested:Z

    .line 917
    const/4 v7, 0x1

    iput-boolean v7, v0, Lcom/android/server/am/IntentBindRecord;->received:Z

    .line 918
    iget-object v7, p1, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    add-int/lit8 v3, v7, -0x1

    .local v3, "conni":I
    :goto_0
    if-ltz v3, :cond_7

    .line 919
    iget-object v7, p1, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v7, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 920
    .local v2, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_6

    .line 921
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ConnectionRecord;

    .line 922
    .local v1, "c":Lcom/android/server/am/ConnectionRecord;
    iget-object v7, v1, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v7, v7, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-object v7, v7, Lcom/android/server/am/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v5, v7}, Landroid/content/Intent$FilterComparison;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 923
    sget-boolean v7, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v7, :cond_1

    const-string v7, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Not publishing to: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    :cond_1
    sget-boolean v7, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v7, :cond_2

    const-string v7, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Bound intent: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v11, v11, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-object v11, v11, Lcom/android/server/am/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    :cond_2
    sget-boolean v7, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v7, :cond_3

    const-string v7, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Published intent: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    :cond_3
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 931
    :cond_4
    sget-boolean v7, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v7, :cond_5

    const-string v7, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Publishing to: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 933
    :cond_5
    :try_start_1
    iget-object v7, v1, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-interface {v7, v10, p3}, Landroid/app/IServiceConnection;->connected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 934
    :catch_0
    move-exception v4

    .line 935
    .local v4, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v7, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failure sending service "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " to connection "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    invoke-interface {v11}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " (in "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v11, v11, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v11, v11, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 946
    .end local v0    # "b":Lcom/android/server/am/IntentBindRecord;
    .end local v1    # "c":Lcom/android/server/am/ConnectionRecord;
    .end local v2    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v3    # "conni":I
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "filter":Landroid/content/Intent$FilterComparison;
    .end local v6    # "i":I
    :catchall_0
    move-exception v7

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7

    .line 918
    .restart local v0    # "b":Lcom/android/server/am/IntentBindRecord;
    .restart local v2    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .restart local v3    # "conni":I
    .restart local v5    # "filter":Landroid/content/Intent$FilterComparison;
    .restart local v6    # "i":I
    :cond_6
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_0

    .line 943
    .end local v2    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v3    # "conni":I
    .end local v6    # "i":I
    :cond_7
    :try_start_3
    iget-object v7, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    const/4 v10, 0x0

    invoke-direct {p0, p1, v7, v10}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 946
    .end local v0    # "b":Lcom/android/server/am/IntentBindRecord;
    .end local v5    # "filter":Landroid/content/Intent$FilterComparison;
    :cond_8
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 948
    return-void
.end method

.method removeConnectionLocked(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;)V
    .locals 12
    .param p1, "c"    # Lcom/android/server/am/ConnectionRecord;
    .param p2, "skipApp"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "skipAct"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 1921
    iget-object v6, p1, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    invoke-interface {v6}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1922
    .local v1, "binder":Landroid/os/IBinder;
    iget-object v0, p1, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    .line 1923
    .local v0, "b":Lcom/android/server/am/AppBindRecord;
    iget-object v5, v0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    .line 1924
    .local v5, "s":Lcom/android/server/am/ServiceRecord;
    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1925
    .local v2, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    if-eqz v2, :cond_0

    .line 1926
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1927
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 1928
    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1931
    :cond_0
    iget-object v6, v0, Lcom/android/server/am/AppBindRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v6, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1932
    iget-object v6, p1, Lcom/android/server/am/ConnectionRecord;->activity:Lcom/android/server/am/ActivityRecord;

    if-eqz v6, :cond_1

    iget-object v6, p1, Lcom/android/server/am/ConnectionRecord;->activity:Lcom/android/server/am/ActivityRecord;

    if-eq v6, p3, :cond_1

    .line 1933
    iget-object v6, p1, Lcom/android/server/am/ConnectionRecord;->activity:Lcom/android/server/am/ActivityRecord;

    iget-object v6, v6, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    if-eqz v6, :cond_1

    .line 1934
    iget-object v6, p1, Lcom/android/server/am/ConnectionRecord;->activity:Lcom/android/server/am/ActivityRecord;

    iget-object v6, v6, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    invoke-virtual {v6, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1937
    :cond_1
    iget-object v6, v0, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    if-eq v6, p2, :cond_3

    .line 1938
    iget-object v6, v0, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v6, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1939
    iget v6, p1, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_2

    .line 1940
    iget-object v6, v0, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v6}, Lcom/android/server/am/ProcessRecord;->updateHasAboveClientLocked()V

    .line 1942
    :cond_2
    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_3

    .line 1943
    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v7, 0x1

    invoke-direct {p0, v6, p1, v7}, Lcom/android/server/am/ActiveServices;->updateServiceClientActivitiesLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ConnectionRecord;Z)Z

    .line 1946
    :cond_3
    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    check-cast v2, Ljava/util/ArrayList;

    .line 1947
    .restart local v2    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    if-eqz v2, :cond_4

    .line 1948
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1949
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_4

    .line 1950
    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1954
    :cond_4
    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v0, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget v7, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v8, v0, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v8, v8, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v9, v5, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v10, v5, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/android/server/am/ActivityManagerService;->stopAssociationLocked(ILjava/lang/String;ILandroid/content/ComponentName;)V

    .line 1956
    iget-object v6, v0, Lcom/android/server/am/AppBindRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v6

    if-nez v6, :cond_5

    .line 1957
    iget-object v6, v0, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-object v6, v6, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    iget-object v7, v0, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1960
    :cond_5
    iget-boolean v6, p1, Lcom/android/server/am/ConnectionRecord;->serviceDead:Z

    if-nez v6, :cond_a

    .line 1961
    sget-boolean v6, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v6, :cond_6

    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Disconnecting binding "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": shouldUnbind="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-boolean v8, v8, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1963
    :cond_6
    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_8

    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v6, :cond_8

    iget-object v6, v0, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-object v6, v6, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-nez v6, :cond_8

    iget-object v6, v0, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-boolean v6, v6, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    if-eqz v6, :cond_8

    .line 1966
    const/4 v6, 0x0

    :try_start_0
    const-string v7, "unbind"

    invoke-direct {p0, v5, v6, v7}, Lcom/android/server/am/ActiveServices;->bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;ZLjava/lang/String;)V

    .line 1967
    iget-object v6, v0, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v7, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eq v6, v7, :cond_7

    iget v6, p1, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v6, v6, 0x20

    if-nez v6, :cond_7

    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v6, v6, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/16 v7, 0xb

    if-gt v6, v7, :cond_7

    .line 1972
    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 1974
    :cond_7
    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v6, v7}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;)Z

    .line 1975
    iget-object v6, v0, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    .line 1978
    iget-object v6, v0, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/android/server/am/IntentBindRecord;->doRebind:Z

    .line 1979
    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v7, v0, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-object v7, v7, Lcom/android/server/am/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v7}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-interface {v6, v5, v7}, Landroid/app/IApplicationThread;->scheduleUnbindService(Landroid/os/IBinder;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1986
    :cond_8
    :goto_0
    iget v6, p1, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_a

    .line 1987
    invoke-virtual {v5}, Lcom/android/server/am/ServiceRecord;->hasAutoCreateConnections()Z

    move-result v4

    .line 1988
    .local v4, "hasAutoCreate":Z
    if-nez v4, :cond_9

    .line 1989
    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    if-eqz v6, :cond_9

    .line 1990
    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    invoke-virtual {v6, v7, v8, v10, v11}, Lcom/android/internal/app/ProcessStats$ServiceState;->setBound(ZIJ)V

    .line 1994
    :cond_9
    const/4 v6, 0x1

    invoke-direct {p0, v5, v6, v4}, Lcom/android/server/am/ActiveServices;->bringDownServiceIfNeededLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    .line 1997
    .end local v4    # "hasAutoCreate":Z
    :cond_a
    return-void

    .line 1980
    :catch_0
    move-exception v3

    .line 1981
    .local v3, "e":Ljava/lang/Exception;
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception when unbinding service "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1982
    invoke-direct {p0, v5}, Lcom/android/server/am/ActiveServices;->serviceProcessGoneLocked(Lcom/android/server/am/ServiceRecord;)V

    goto :goto_0
.end method

.method scheduleServiceTimeoutLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 6
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 2675
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v1, :cond_1

    .line 2684
    :cond_0
    :goto_0
    return-void

    .line 2678
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 2679
    .local v2, "now":J
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v4, 0xc

    invoke-virtual {v1, v4}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2681
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2682
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-boolean v4, p1, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    if-eqz v4, :cond_2

    const-wide/16 v4, 0x4e20

    add-long/2addr v4, v2

    :goto_1
    invoke-virtual {v1, v0, v4, v5}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_2
    const-wide/32 v4, 0x30d40

    add-long/2addr v4, v2

    goto :goto_1
.end method

.method serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;III)V
    .locals 8
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "type"    # I
    .param p3, "startId"    # I
    .param p4, "res"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x1

    .line 2000
    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 2001
    .local v0, "inDestroying":Z
    if-eqz p1, :cond_4

    .line 2002
    if-ne p2, v7, :cond_2

    .line 2005
    iput-boolean v7, p1, Lcom/android/server/am/ServiceRecord;->callStart:Z

    .line 2006
    sparse-switch p4, :sswitch_data_0

    .line 2045
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown service start result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2010
    :sswitch_0
    invoke-virtual {p1, p3, v7}, Lcom/android/server/am/ServiceRecord;->findDeliveredStart(IZ)Lcom/android/server/am/ServiceRecord$StartItem;

    .line 2012
    iput-boolean v5, p1, Lcom/android/server/am/ServiceRecord;->stopIfKilled:Z

    .line 2048
    :cond_0
    :goto_0
    if-nez p4, :cond_1

    .line 2049
    iput-boolean v5, p1, Lcom/android/server/am/ServiceRecord;->callStart:Z

    .line 2073
    :cond_1
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2074
    .local v2, "origId":J
    invoke-direct {p0, p1, v0, v0}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    .line 2075
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2080
    .end local v2    # "origId":J
    :goto_2
    return-void

    .line 2017
    :sswitch_1
    invoke-virtual {p1, p3, v7}, Lcom/android/server/am/ServiceRecord;->findDeliveredStart(IZ)Lcom/android/server/am/ServiceRecord$StartItem;

    .line 2018
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->getLastStartId()I

    move-result v4

    if-ne v4, p3, :cond_0

    .line 2021
    iput-boolean v7, p1, Lcom/android/server/am/ServiceRecord;->stopIfKilled:Z

    goto :goto_0

    .line 2029
    :sswitch_2
    invoke-virtual {p1, p3, v5}, Lcom/android/server/am/ServiceRecord;->findDeliveredStart(IZ)Lcom/android/server/am/ServiceRecord$StartItem;

    move-result-object v1

    .line 2030
    .local v1, "si":Lcom/android/server/am/ServiceRecord$StartItem;
    if-eqz v1, :cond_0

    .line 2031
    iput v5, v1, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    .line 2032
    iget v4, v1, Lcom/android/server/am/ServiceRecord$StartItem;->doneExecutingCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v1, Lcom/android/server/am/ServiceRecord$StartItem;->doneExecutingCount:I

    .line 2034
    iput-boolean v7, p1, Lcom/android/server/am/ServiceRecord;->stopIfKilled:Z

    goto :goto_0

    .line 2041
    .end local v1    # "si":Lcom/android/server/am/ServiceRecord$StartItem;
    :sswitch_3
    invoke-virtual {p1, p3, v7}, Lcom/android/server/am/ServiceRecord;->findDeliveredStart(IZ)Lcom/android/server/am/ServiceRecord$StartItem;

    goto :goto_0

    .line 2051
    :cond_2
    const/4 v4, 0x2

    if-ne p2, v4, :cond_1

    .line 2055
    if-nez v0, :cond_3

    .line 2060
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Service done with onDestroy, but not inDestroying: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2063
    :cond_3
    iget v4, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    if-eq v4, v7, :cond_1

    .line 2066
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Service done with onDestroy, but executeNesting="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2070
    iput v7, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    goto :goto_1

    .line 2077
    :cond_4
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Done executing unknown service from pid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2006
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x3e8 -> :sswitch_3
    .end sparse-switch
.end method

.method serviceTimeout(Lcom/android/server/am/ProcessRecord;)V
    .locals 22
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 2628
    const/4 v7, 0x0

    .line 2630
    .local v7, "anrMessage":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 2631
    :try_start_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v2, :cond_2

    .line 2632
    :cond_0
    monitor-exit v4

    .line 2672
    :cond_1
    :goto_0
    return-void

    .line 2634
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    .line 2635
    .local v14, "now":J
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    if-eqz v2, :cond_4

    const/16 v2, 0x4e20

    :goto_1
    int-to-long v2, v2

    sub-long v10, v14, v2

    .line 2637
    .local v10, "maxTime":J
    const/16 v19, 0x0

    .line 2638
    .local v19, "timeout":Lcom/android/server/am/ServiceRecord;
    const-wide/16 v12, 0x0

    .line 2639
    .local v12, "nextTime":J
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/lit8 v8, v2, -0x1

    .local v8, "i":I
    :goto_2
    if-ltz v8, :cond_3

    .line 2640
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v2, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/am/ServiceRecord;

    .line 2641
    .local v17, "sr":Lcom/android/server/am/ServiceRecord;
    move-object/from16 v0, v17

    iget-wide v2, v0, Lcom/android/server/am/ServiceRecord;->executingStart:J

    cmp-long v2, v2, v10

    if-gez v2, :cond_5

    .line 2642
    move-object/from16 v19, v17

    .line 2649
    .end local v17    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_3
    if-eqz v19, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2650
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Timeout executing service: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2651
    new-instance v18, Ljava/io/StringWriter;

    invoke-direct/range {v18 .. v18}, Ljava/io/StringWriter;-><init>()V

    .line 2652
    .local v18, "sw":Ljava/io/StringWriter;
    new-instance v16, Lcom/android/internal/util/FastPrintWriter;

    const/4 v2, 0x0

    const/16 v3, 0x400

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 2653
    .local v16, "pw":Ljava/io/PrintWriter;
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2654
    const-string v2, "    "

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ServiceRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2655
    invoke-virtual/range {v16 .. v16}, Ljava/io/PrintWriter;->close()V

    .line 2656
    invoke-virtual/range {v18 .. v18}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/am/ActiveServices;->mLastAnrDump:Ljava/lang/String;

    .line 2657
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActiveServices;->mLastAnrDumpClearer:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2658
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActiveServices;->mLastAnrDumpClearer:Ljava/lang/Runnable;

    const-wide/32 v20, 0x6ddd00

    move-wide/from16 v0, v20

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2659
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "executing service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2667
    .end local v16    # "pw":Ljava/io/PrintWriter;
    .end local v18    # "sw":Ljava/io/StringWriter;
    :goto_3
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2669
    if-eqz v7, :cond_1

    .line 2670
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityManagerService;->appNotResponding(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 2635
    .end local v8    # "i":I
    .end local v10    # "maxTime":J
    .end local v12    # "nextTime":J
    .end local v19    # "timeout":Lcom/android/server/am/ServiceRecord;
    :cond_4
    const v2, 0x30d40

    goto/16 :goto_1

    .line 2645
    .restart local v8    # "i":I
    .restart local v10    # "maxTime":J
    .restart local v12    # "nextTime":J
    .restart local v17    # "sr":Lcom/android/server/am/ServiceRecord;
    .restart local v19    # "timeout":Lcom/android/server/am/ServiceRecord;
    :cond_5
    :try_start_1
    move-object/from16 v0, v17

    iget-wide v2, v0, Lcom/android/server/am/ServiceRecord;->executingStart:J

    cmp-long v2, v2, v12

    if-lez v2, :cond_6

    .line 2646
    move-object/from16 v0, v17

    iget-wide v12, v0, Lcom/android/server/am/ServiceRecord;->executingStart:J

    .line 2639
    :cond_6
    add-int/lit8 v8, v8, -0x1

    goto/16 :goto_2

    .line 2661
    .end local v17    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 2663
    .local v9, "msg":Landroid/os/Message;
    move-object/from16 v0, p1

    iput-object v0, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2664
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    if-eqz v2, :cond_8

    const-wide/16 v2, 0x4e20

    add-long/2addr v2, v12

    :goto_4
    invoke-virtual {v5, v9, v2, v3}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_3

    .line 2667
    .end local v8    # "i":I
    .end local v9    # "msg":Landroid/os/Message;
    .end local v10    # "maxTime":J
    .end local v12    # "nextTime":J
    .end local v14    # "now":J
    .end local v19    # "timeout":Lcom/android/server/am/ServiceRecord;
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 2664
    .restart local v8    # "i":I
    .restart local v9    # "msg":Landroid/os/Message;
    .restart local v10    # "maxTime":J
    .restart local v12    # "nextTime":J
    .restart local v14    # "now":J
    .restart local v19    # "timeout":Lcom/android/server/am/ServiceRecord;
    :cond_8
    const-wide/32 v2, 0x30d40

    add-long/2addr v2, v12

    goto :goto_4
.end method

.method public setServiceForegroundLocked(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/app/Notification;Z)V
    .locals 8
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "id"    # I
    .param p4, "notification"    # Landroid/app/Notification;
    .param p5, "removeNotification"    # Z

    .prologue
    .line 612
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 613
    .local v3, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 615
    .local v0, "origId":J
    :try_start_0
    invoke-direct {p0, p1, p2, v3}, Lcom/android/server/am/ActiveServices;->findServiceLocked(Landroid/content/ComponentName;Landroid/os/IBinder;I)Lcom/android/server/am/ServiceRecord;

    move-result-object v2

    .line 616
    .local v2, "r":Lcom/android/server/am/ServiceRecord;
    if-eqz v2, :cond_3

    .line 617
    if-eqz p3, :cond_4

    .line 618
    if-nez p4, :cond_0

    .line 619
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "null notification"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 651
    .end local v2    # "r":Lcom/android/server/am/ServiceRecord;
    :catchall_0
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 621
    .restart local v2    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_0
    :try_start_1
    iget v4, v2, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    if-eq v4, p3, :cond_1

    .line 622
    invoke-virtual {v2}, Lcom/android/server/am/ServiceRecord;->cancelNotification()V

    .line 623
    iput p3, v2, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    .line 625
    :cond_1
    iget v4, p4, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x40

    iput v4, p4, Landroid/app/Notification;->flags:I

    .line 626
    iput-object p4, v2, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    .line 627
    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    .line 628
    invoke-virtual {v2}, Lcom/android/server/am/ServiceRecord;->postNotification()V

    .line 629
    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_2

    .line 630
    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/android/server/am/ActiveServices;->updateServiceForegroundLocked(Lcom/android/server/am/ProcessRecord;Z)V

    .line 632
    :cond_2
    iget v4, v2, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-direct {p0, v4}, Lcom/android/server/am/ActiveServices;->getServiceMap(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/server/am/ActiveServices$ServiceMap;->ensureNotStartingBackground(Lcom/android/server/am/ServiceRecord;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 651
    :cond_3
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 653
    return-void

    .line 634
    :cond_4
    :try_start_2
    iget-boolean v4, v2, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-eqz v4, :cond_5

    .line 635
    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    .line 636
    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_5

    .line 637
    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 638
    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/android/server/am/ActiveServices;->updateServiceForegroundLocked(Lcom/android/server/am/ProcessRecord;Z)V

    .line 641
    :cond_5
    if-eqz p5, :cond_6

    .line 642
    invoke-virtual {v2}, Lcom/android/server/am/ServiceRecord;->cancelNotification()V

    .line 643
    const/4 v4, 0x0

    iput v4, v2, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    .line 644
    const/4 v4, 0x0

    iput-object v4, v2, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    goto :goto_0

    .line 645
    :cond_6
    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_3

    .line 646
    invoke-virtual {v2}, Lcom/android/server/am/ServiceRecord;->stripForegroundServiceFlagFromNotification()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method startServiceInnerLocked(Lcom/android/server/am/ActiveServices$ServiceMap;Landroid/content/Intent;Lcom/android/server/am/ServiceRecord;ZZ)Landroid/content/ComponentName;
    .locals 8
    .param p1, "smap"    # Lcom/android/server/am/ActiveServices$ServiceMap;
    .param p2, "service"    # Landroid/content/Intent;
    .param p3, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p4, "callerFg"    # Z
    .param p5, "addToStarting"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/TransactionTooLargeException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 450
    invoke-virtual {p3}, Lcom/android/server/am/ServiceRecord;->getTracker()Lcom/android/internal/app/ProcessStats$ServiceState;

    move-result-object v3

    .line 451
    .local v3, "stracker":Lcom/android/internal/app/ProcessStats$ServiceState;
    if-eqz v3, :cond_0

    .line 452
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v5}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v5

    iget-wide v6, p3, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    invoke-virtual {v3, v1, v5, v6, v7}, Lcom/android/internal/app/ProcessStats$ServiceState;->setStarted(ZIJ)V

    .line 454
    :cond_0
    iput-boolean v4, p3, Lcom/android/server/am/ServiceRecord;->callStart:Z

    .line 455
    iget-object v5, p3, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v5}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v5

    monitor-enter v5

    .line 456
    :try_start_0
    iget-object v6, p3, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v6}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->startRunningLocked()V

    .line 457
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 458
    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result v5

    invoke-direct {p0, p3, v5, p4, v4}, Lcom/android/server/am/ActiveServices;->bringUpServiceLocked(Lcom/android/server/am/ServiceRecord;IZZ)Ljava/lang/String;

    move-result-object v0

    .line 459
    .local v0, "error":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 460
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "!!"

    invoke-direct {v4, v5, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    :goto_0
    return-object v4

    .line 457
    .end local v0    # "error":Ljava/lang/String;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 463
    .restart local v0    # "error":Ljava/lang/String;
    :cond_1
    iget-boolean v5, p3, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v5, :cond_6

    if-eqz p5, :cond_6

    .line 464
    iget-object v5, p1, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_4

    .line 465
    .local v1, "first":Z
    :goto_1
    iget-object v4, p1, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 466
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3a98

    add-long/2addr v4, v6

    iput-wide v4, p3, Lcom/android/server/am/ServiceRecord;->startingBgTimeout:J

    .line 467
    sget-boolean v4, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_SERVICE:Z

    if-eqz v4, :cond_5

    .line 468
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "here"

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 469
    .local v2, "here":Ljava/lang/RuntimeException;
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 470
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Starting background (first="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 474
    .end local v2    # "here":Ljava/lang/RuntimeException;
    :cond_2
    :goto_2
    if-eqz v1, :cond_3

    .line 475
    invoke-virtual {p1}, Lcom/android/server/am/ActiveServices$ServiceMap;->rescheduleDelayedStarts()V

    .line 481
    .end local v1    # "first":Z
    :cond_3
    :goto_3
    iget-object v4, p3, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    goto :goto_0

    :cond_4
    move v1, v4

    .line 464
    goto :goto_1

    .line 471
    .restart local v1    # "first":Z
    :cond_5
    sget-boolean v4, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_STARTS:Z

    if-eqz v4, :cond_2

    .line 472
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Starting background (first="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 477
    .end local v1    # "first":Z
    :cond_6
    if-eqz p4, :cond_3

    .line 478
    invoke-virtual {p1, p3}, Lcom/android/server/am/ActiveServices$ServiceMap;->ensureNotStartingBackground(Lcom/android/server/am/ServiceRecord;)V

    goto :goto_3
.end method

.method startServiceLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;IILjava/lang/String;I)Landroid/content/ComponentName;
    .locals 23
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "service"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "callingPid"    # I
    .param p5, "callingUid"    # I
    .param p6, "callingPackage"    # Ljava/lang/String;
    .param p7, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/TransactionTooLargeException;
        }
    .end annotation

    .prologue
    .line 313
    sget-boolean v2, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_STARTS:Z

    if-eqz v2, :cond_0

    const-string v2, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startService: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " type="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " args="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_0
    const/16 v18, 0x0

    .line 321
    .local v18, "callerApp":Lcom/android/server/am/ProcessRecord;
    if-eqz p1, :cond_3

    .line 324
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v18

    .line 326
    if-nez v18, :cond_1

    .line 327
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to find app for caller "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " (pid="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ") when starting service "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 332
    :cond_1
    move-object/from16 v0, v18

    iget v2, v0, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I

    if-eqz v2, :cond_2

    const/4 v10, 0x1

    .line 338
    .local v10, "callerFg":Z
    :goto_0
    const/4 v9, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p6

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p7

    invoke-direct/range {v2 .. v10}, Lcom/android/server/am/ActiveServices;->retrieveServiceLocked(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;IIIZZ)Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    move-result-object v21

    .line 341
    .local v21, "res":Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    if-nez v21, :cond_4

    .line 342
    const/4 v2, 0x0

    .line 445
    :goto_1
    return-object v2

    .line 332
    .end local v10    # "callerFg":Z
    .end local v21    # "res":Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    :cond_2
    const/4 v10, 0x0

    goto :goto_0

    .line 334
    :cond_3
    const/4 v10, 0x1

    .restart local v10    # "callerFg":Z
    goto :goto_0

    .line 344
    .restart local v21    # "res":Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    :cond_4
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    if-nez v2, :cond_6

    .line 345
    new-instance v4, Landroid/content/ComponentName;

    const-string v6, "!"

    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->permission:Ljava/lang/String;

    if-eqz v2, :cond_5

    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->permission:Ljava/lang/String;

    :goto_2
    invoke-direct {v4, v6, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v4

    goto :goto_1

    :cond_5
    const-string v2, "private to package"

    goto :goto_2

    .line 349
    :cond_6
    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    .line 351
    .local v5, "r":Lcom/android/server/am/ServiceRecord;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getUserManagerLocked()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    iget v4, v5, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v2, v4}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v2

    if-nez v2, :cond_7

    .line 352
    const-string v2, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Trying to start service with non-existent user! "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, v5, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    const/4 v2, 0x0

    goto :goto_1

    .line 358
    :cond_7
    sget-boolean v2, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v2, :cond_8

    .line 359
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " startServiceLocked # callerApp= "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", service = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", resolvedType="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", callingPid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", callingUid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", r="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", callerFg="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 363
    :cond_8
    sget-boolean v2, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-eqz v2, :cond_9

    .line 364
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->getInstance(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/am/OnePlusAppBootManager;

    move-result-object v2

    const/4 v7, 0x0

    move-object/from16 v3, v18

    move-object/from16 v4, p2

    move/from16 v6, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/OnePlusAppBootManager;->canServiceGo(Lcom/android/server/am/ProcessRecord;Landroid/content/Intent;Lcom/android/server/am/ServiceRecord;ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 365
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 370
    :cond_9
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v5, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v15

    const/16 v16, 0x0

    iget v0, v5, Lcom/android/server/am/ServiceRecord;->userId:I

    move/from16 v17, v0

    move/from16 v12, p5

    move-object/from16 v14, p2

    invoke-virtual/range {v11 .. v17}, Lcom/android/server/am/ActivityManagerService;->checkGrantUriPermissionFromIntentLocked(ILjava/lang/String;Landroid/content/Intent;ILcom/android/server/am/ActivityManagerService$NeededUriGrants;I)Lcom/android/server/am/ActivityManagerService$NeededUriGrants;

    move-result-object v9

    .line 372
    .local v9, "neededGrants":Lcom/android/server/am/ActivityManagerService$NeededUriGrants;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v5, v1, v2}, Lcom/android/server/am/ActiveServices;->unscheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;IZ)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 373
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v2, :cond_a

    const-string v2, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "START SERVICE WHILE RESTART PENDING: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :cond_a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    iput-wide v12, v5, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    .line 376
    const/4 v2, 0x1

    iput-boolean v2, v5, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    .line 377
    const/4 v2, 0x0

    iput-boolean v2, v5, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    .line 378
    iget-object v2, v5, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/server/am/ServiceRecord$StartItem;

    const/4 v6, 0x0

    invoke-virtual {v5}, Lcom/android/server/am/ServiceRecord;->makeNextStartId()I

    move-result v7

    move-object/from16 v8, p2

    invoke-direct/range {v4 .. v9}, Lcom/android/server/am/ServiceRecord$StartItem;-><init>(Lcom/android/server/am/ServiceRecord;ZILandroid/content/Intent;Lcom/android/server/am/ActivityManagerService$NeededUriGrants;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    iget v2, v5, Lcom/android/server/am/ServiceRecord;->userId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/am/ActiveServices;->getServiceMap(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v3

    .line 382
    .local v3, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    const/4 v7, 0x0

    .line 383
    .local v7, "addToStarting":Z
    if-nez v10, :cond_15

    iget-object v2, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v2, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStartedUsers:Landroid/util/SparseArray;

    iget v4, v5, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_15

    .line 384
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v5, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v8, 0x0

    invoke-virtual {v2, v4, v6, v8}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v19

    .line 385
    .local v19, "proc":Lcom/android/server/am/ProcessRecord;
    if-eqz v19, :cond_b

    move-object/from16 v0, v19

    iget v2, v0, Lcom/android/server/am/ProcessRecord;->curProcState:I

    const/16 v4, 0xb

    if-le v2, v4, :cond_12

    .line 396
    :cond_b
    sget-boolean v2, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_SERVICE:Z

    if-eqz v2, :cond_c

    const-string v2, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Potential start delay of "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " in "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :cond_c
    iget-boolean v2, v5, Lcom/android/server/am/ServiceRecord;->delayed:Z

    if-eqz v2, :cond_e

    .line 401
    sget-boolean v2, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_STARTS:Z

    if-eqz v2, :cond_d

    const-string v2, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Continuing to delay: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_d
    iget-object v2, v5, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    goto/16 :goto_1

    .line 404
    :cond_e
    iget-object v2, v3, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/am/ActiveServices;->mMaxStartingBackground:I

    if-lt v2, v4, :cond_f

    .line 406
    const-string v2, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Delaying start of: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-object v2, v3, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    const/4 v2, 0x1

    iput-boolean v2, v5, Lcom/android/server/am/ServiceRecord;->delayed:Z

    .line 409
    iget-object v2, v5, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    goto/16 :goto_1

    .line 411
    :cond_f
    sget-boolean v2, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_STARTS:Z

    if-eqz v2, :cond_10

    const-string v2, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not delaying: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :cond_10
    const/4 v7, 0x1

    .end local v19    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_11
    :goto_3
    move-object/from16 v2, p0

    move-object/from16 v4, p2

    move v6, v10

    .line 445
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActiveServices;->startServiceInnerLocked(Lcom/android/server/am/ActiveServices$ServiceMap;Landroid/content/Intent;Lcom/android/server/am/ServiceRecord;ZZ)Landroid/content/ComponentName;

    move-result-object v2

    goto/16 :goto_1

    .line 413
    .restart local v19    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_12
    move-object/from16 v0, v19

    iget v2, v0, Lcom/android/server/am/ProcessRecord;->curProcState:I

    const/16 v4, 0xa

    if-lt v2, v4, :cond_13

    .line 417
    const/4 v7, 0x1

    .line 418
    sget-boolean v2, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_STARTS:Z

    if-eqz v2, :cond_11

    const-string v2, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not delaying, but counting as bg: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 420
    :cond_13
    sget-boolean v2, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_STARTS:Z

    if-eqz v2, :cond_11

    .line 421
    new-instance v22, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 422
    .local v22, "sb":Ljava/lang/StringBuilder;
    const-string v2, "Not potential delay (state="

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    iget v4, v0, Lcom/android/server/am/ProcessRecord;->curProcState:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v4, 0x20

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/am/ProcessRecord;->makeAdjReason()Ljava/lang/String;

    move-result-object v20

    .line 425
    .local v20, "reason":Ljava/lang/String;
    if-eqz v20, :cond_14

    .line 426
    const/16 v2, 0x20

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 427
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    :cond_14
    const-string v2, "): "

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    invoke-virtual {v5}, Lcom/android/server/am/ServiceRecord;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    const-string v2, "ActivityManager"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 433
    .end local v19    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v20    # "reason":Ljava/lang/String;
    .end local v22    # "sb":Ljava/lang/StringBuilder;
    :cond_15
    sget-boolean v2, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_STARTS:Z

    if-eqz v2, :cond_11

    .line 434
    if-eqz v10, :cond_16

    .line 435
    const-string v2, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not potential delay (callerFg="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " uid="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " pid="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "): "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 437
    :cond_16
    iget-object v2, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_17

    .line 438
    const-string v2, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not potential delay (cur app="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "): "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 440
    :cond_17
    const-string v2, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not potential delay (user "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, v5, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " not started): "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method stopServiceLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;I)I
    .locals 15
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "service"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .prologue
    .line 507
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v2, :cond_0

    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stopService: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v11

    .line 511
    .local v11, "callerApp":Lcom/android/server/am/ProcessRecord;
    if-eqz p1, :cond_1

    if-nez v11, :cond_1

    .line 512
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to find app for caller "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") when stopping service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 519
    :cond_1
    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v8, p4

    invoke-direct/range {v2 .. v10}, Lcom/android/server/am/ActiveServices;->retrieveServiceLocked(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;IIIZZ)Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    move-result-object v14

    .line 521
    .local v14, "r":Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    if-eqz v14, :cond_3

    .line 522
    iget-object v2, v14, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    if-eqz v2, :cond_2

    .line 523
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 525
    .local v12, "origId":J
    :try_start_0
    iget-object v2, v14, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    invoke-direct {p0, v2}, Lcom/android/server/am/ActiveServices;->stopServiceLocked(Lcom/android/server/am/ServiceRecord;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 527
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 529
    const/4 v2, 0x1

    .line 534
    .end local v12    # "origId":J
    :goto_0
    return v2

    .line 527
    .restart local v12    # "origId":J
    :catchall_0
    move-exception v2

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 531
    .end local v12    # "origId":J
    :cond_2
    const/4 v2, -0x1

    goto :goto_0

    .line 534
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method stopServiceTokenLocked(Landroid/content/ComponentName;Landroid/os/IBinder;I)Z
    .locals 10
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "startId"    # I

    .prologue
    const/4 v5, 0x0

    .line 563
    sget-boolean v6, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v6, :cond_0

    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "stopServiceToken: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " startId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    invoke-direct {p0, p1, p2, v6}, Lcom/android/server/am/ActiveServices;->findServiceLocked(Landroid/content/ComponentName;Landroid/os/IBinder;I)Lcom/android/server/am/ServiceRecord;

    move-result-object v1

    .line 566
    .local v1, "r":Lcom/android/server/am/ServiceRecord;
    if-eqz v1, :cond_3

    .line 567
    if-ltz p3, :cond_5

    .line 571
    invoke-virtual {v1, p3, v5}, Lcom/android/server/am/ServiceRecord;->findDeliveredStart(IZ)Lcom/android/server/am/ServiceRecord$StartItem;

    move-result-object v4

    .line 572
    .local v4, "si":Lcom/android/server/am/ServiceRecord$StartItem;
    if-eqz v4, :cond_2

    .line 573
    :cond_1
    iget-object v6, v1, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 574
    iget-object v6, v1, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ServiceRecord$StartItem;

    .line 575
    .local v0, "cur":Lcom/android/server/am/ServiceRecord$StartItem;
    invoke-virtual {v0}, Lcom/android/server/am/ServiceRecord$StartItem;->removeUriPermissionsLocked()V

    .line 576
    if-ne v0, v4, :cond_1

    .line 582
    .end local v0    # "cur":Lcom/android/server/am/ServiceRecord$StartItem;
    :cond_2
    invoke-virtual {v1}, Lcom/android/server/am/ServiceRecord;->getLastStartId()I

    move-result v6

    if-eq v6, p3, :cond_4

    .line 607
    .end local v4    # "si":Lcom/android/server/am/ServiceRecord$StartItem;
    :cond_3
    :goto_0
    return v5

    .line 586
    .restart local v4    # "si":Lcom/android/server/am/ServiceRecord$StartItem;
    :cond_4
    iget-object v6, v1, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_5

    .line 587
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "stopServiceToken startId "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is last, but have "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " remaining args"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    .end local v4    # "si":Lcom/android/server/am/ServiceRecord$StartItem;
    :cond_5
    iget-object v6, v1, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v6}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v6

    monitor-enter v6

    .line 594
    :try_start_0
    iget-object v7, v1, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v7}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->stopRunningLocked()V

    .line 595
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 596
    iput-boolean v5, v1, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    .line 597
    iget-object v6, v1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    if-eqz v6, :cond_6

    .line 598
    iget-object v6, v1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    iget-object v7, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v7}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v5, v7, v8, v9}, Lcom/android/internal/app/ProcessStats$ServiceState;->setStarted(ZIJ)V

    .line 601
    :cond_6
    iput-boolean v5, v1, Lcom/android/server/am/ServiceRecord;->callStart:Z

    .line 602
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 603
    .local v2, "origId":J
    invoke-direct {p0, v1, v5, v5}, Lcom/android/server/am/ActiveServices;->bringDownServiceIfNeededLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    .line 604
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 605
    const/4 v5, 0x1

    goto :goto_0

    .line 595
    .end local v2    # "origId":J
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method unbindFinishedLocked(Lcom/android/server/am/ServiceRecord;Landroid/content/Intent;Z)V
    .locals 12
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "doRebind"    # Z

    .prologue
    const/4 v8, 0x0

    .line 990
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 992
    .local v6, "origId":J
    if-eqz p1, :cond_4

    .line 993
    :try_start_0
    new-instance v2, Landroid/content/Intent$FilterComparison;

    invoke-direct {v2, p2}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 995
    .local v2, "filter":Landroid/content/Intent$FilterComparison;
    iget-object v9, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v9, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IntentBindRecord;

    .line 996
    .local v0, "b":Lcom/android/server/am/IntentBindRecord;
    sget-boolean v9, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v9, :cond_1

    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "unbindFinished in "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " at "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": apps="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-eqz v0, :cond_0

    iget-object v8, v0, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    :cond_0
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    :cond_1
    iget-object v8, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 1001
    .local v4, "inDestroying":Z
    if-eqz v0, :cond_3

    .line 1002
    iget-object v8, v0, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    if-lez v8, :cond_6

    if-nez v4, :cond_6

    .line 1005
    const/4 v5, 0x0

    .line 1006
    .local v5, "inFg":Z
    iget-object v8, v0, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_2

    .line 1007
    iget-object v8, v0, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v8, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/AppBindRecord;

    iget-object v1, v8, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    .line 1008
    .local v1, "client":Lcom/android/server/am/ProcessRecord;
    if-eqz v1, :cond_5

    iget v8, v1, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_5

    .line 1010
    const/4 v5, 0x1

    .line 1015
    .end local v1    # "client":Lcom/android/server/am/ProcessRecord;
    :cond_2
    const/4 v8, 0x1

    :try_start_1
    invoke-direct {p0, p1, v0, v5, v8}, Lcom/android/server/am/ActiveServices;->requestServiceBindingLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/IntentBindRecord;ZZ)Z
    :try_end_1
    .catch Landroid/os/TransactionTooLargeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1026
    .end local v3    # "i":I
    .end local v5    # "inFg":Z
    :cond_3
    :goto_1
    const/4 v8, 0x0

    :try_start_2
    invoke-direct {p0, p1, v4, v8}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1029
    .end local v0    # "b":Lcom/android/server/am/IntentBindRecord;
    .end local v2    # "filter":Landroid/content/Intent$FilterComparison;
    .end local v4    # "inDestroying":Z
    :cond_4
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1031
    return-void

    .line 1006
    .restart local v0    # "b":Lcom/android/server/am/IntentBindRecord;
    .restart local v1    # "client":Lcom/android/server/am/ProcessRecord;
    .restart local v2    # "filter":Landroid/content/Intent$FilterComparison;
    .restart local v3    # "i":I
    .restart local v4    # "inDestroying":Z
    .restart local v5    # "inFg":Z
    :cond_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1022
    .end local v1    # "client":Lcom/android/server/am/ProcessRecord;
    .end local v3    # "i":I
    .end local v5    # "inFg":Z
    :cond_6
    const/4 v8, 0x1

    :try_start_3
    iput-boolean v8, v0, Lcom/android/server/am/IntentBindRecord;->doRebind:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1029
    .end local v0    # "b":Lcom/android/server/am/IntentBindRecord;
    .end local v2    # "filter":Landroid/content/Intent$FilterComparison;
    .end local v4    # "inDestroying":Z
    :catchall_0
    move-exception v8

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8

    .line 1016
    .restart local v0    # "b":Lcom/android/server/am/IntentBindRecord;
    .restart local v2    # "filter":Landroid/content/Intent$FilterComparison;
    .restart local v3    # "i":I
    .restart local v4    # "inDestroying":Z
    .restart local v5    # "inFg":Z
    :catch_0
    move-exception v8

    goto :goto_1
.end method

.method unbindServiceLocked(Landroid/app/IServiceConnection;)Z
    .locals 11
    .param p1, "connection"    # Landroid/app/IServiceConnection;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 951
    invoke-interface {p1}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 952
    .local v0, "binder":Landroid/os/IBinder;
    sget-boolean v7, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v7, :cond_0

    const-string v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unbindService: conn="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    :cond_0
    iget-object v7, p0, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    invoke-virtual {v7, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 954
    .local v1, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    if-nez v1, :cond_1

    .line 955
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unbind failed: could not find connection for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p1}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    :goto_0
    return v5

    .line 960
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 962
    .local v2, "origId":J
    :cond_2
    :goto_1
    :try_start_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_7

    .line 963
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ConnectionRecord;

    .line 964
    .local v4, "r":Lcom/android/server/am/ConnectionRecord;
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0, v4, v7, v8}, Lcom/android/server/am/ActiveServices;->removeConnectionLocked(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;)V

    .line 965
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_3

    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v4, :cond_3

    .line 967
    const-string v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Connection "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " not removed for binder "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 971
    :cond_3
    iget-object v7, v4, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v7, v7, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v7, v7, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v7, :cond_2

    .line 973
    iget v7, v4, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v8, 0x8000000

    and-int/2addr v7, v8

    if-eqz v7, :cond_5

    .line 974
    iget-object v7, v4, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v7, v7, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v7, v7, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/android/server/am/ProcessRecord;->treatLikeActivity:Z

    .line 975
    iget-object v8, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v4, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v7, v7, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v9, v7, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v7, v4, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v7, v7, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v7, v7, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v7, v7, Lcom/android/server/am/ProcessRecord;->hasClientActivities:Z

    if-nez v7, :cond_4

    iget-object v7, v4, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v7, v7, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v7, v7, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v7, v7, Lcom/android/server/am/ProcessRecord;->treatLikeActivity:Z

    if-eqz v7, :cond_6

    :cond_4
    move v7, v6

    :goto_2
    const/4 v10, 0x0

    invoke-virtual {v8, v9, v7, v10}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 979
    :cond_5
    iget-object v7, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v4, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v8, v8, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v8, v8, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v7, v8}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    .line 983
    .end local v4    # "r":Lcom/android/server/am/ConnectionRecord;
    :catchall_0
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .restart local v4    # "r":Lcom/android/server/am/ConnectionRecord;
    :cond_6
    move v7, v5

    .line 975
    goto :goto_2

    .line 983
    .end local v4    # "r":Lcom/android/server/am/ConnectionRecord;
    :cond_7
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v5, v6

    .line 986
    goto/16 :goto_0
.end method

.method public updateServiceConnectionActivitiesLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 6
    .param p1, "clientProc"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 668
    const/4 v3, 0x0

    .line 669
    .local v3, "updatedProcesses":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/am/ProcessRecord;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 670
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v4, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ConnectionRecord;

    .line 671
    .local v0, "conn":Lcom/android/server/am/ConnectionRecord;
    iget-object v4, v0, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v4, v4, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v2, v4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 672
    .local v2, "proc":Lcom/android/server/am/ProcessRecord;
    if-eqz v2, :cond_0

    if-ne v2, p1, :cond_1

    .line 669
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 674
    :cond_1
    if-nez v3, :cond_3

    .line 675
    new-instance v3, Landroid/util/ArraySet;

    .end local v3    # "updatedProcesses":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/am/ProcessRecord;>;"
    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 679
    .restart local v3    # "updatedProcesses":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/am/ProcessRecord;>;"
    :cond_2
    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 680
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {p0, v2, v4, v5}, Lcom/android/server/am/ActiveServices;->updateServiceClientActivitiesLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ConnectionRecord;Z)Z

    goto :goto_1

    .line 676
    :cond_3
    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 682
    .end local v0    # "conn":Lcom/android/server/am/ConnectionRecord;
    .end local v2    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_4
    return-void
.end method
