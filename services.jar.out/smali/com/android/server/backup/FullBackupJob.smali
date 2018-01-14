.class public Lcom/android/server/backup/FullBackupJob;
.super Landroid/app/job/JobService;
.source "FullBackupJob.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final JOB_ID:I = 0x5038

.field private static final TAG:Ljava/lang/String; = "FullBackupJob"

.field private static sIdleService:Landroid/content/ComponentName;


# instance fields
.field mParams:Landroid/app/job/JobParameters;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v1, "android"

    const-class v2, Lcom/android/server/backup/FullBackupJob;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    sput-object v0, Lcom/android/server/backup/FullBackupJob;->sIdleService:Landroid/content/ComponentName;

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method public static schedule(Landroid/content/Context;J)V
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "minDelay"    # J

    .prologue
    const/4 v6, 0x1

    .line 38
    const-string/jumbo v3, "jobscheduler"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/job/JobScheduler;

    .line 39
    .local v2, "js":Landroid/app/job/JobScheduler;
    new-instance v3, Landroid/app/job/JobInfo$Builder;

    sget-object v4, Lcom/android/server/backup/FullBackupJob;->sIdleService:Landroid/content/ComponentName;

    const/16 v5, 0x5038

    invoke-direct {v3, v5, v4}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    invoke-virtual {v3, v6}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v3

    .line 41
    const/4 v4, 0x2

    .line 39
    invoke-virtual {v3, v4}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    .line 43
    .local v0, "builder":Landroid/app/job/JobInfo$Builder;
    const-wide/16 v4, 0x0

    cmp-long v3, p1, v4

    if-lez v3, :cond_0

    .line 44
    invoke-virtual {v0, p1, p2}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    .line 52
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v1

    .line 54
    .local v1, "iae":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v3, "FullBackupJob"

    const-string/jumbo v4, "Error while scheduling FullBackupJob:"

    .line 55
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v5

    .line 54
    invoke-static {v3, v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public finishBackupPass()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 63
    iget-object v0, p0, Lcom/android/server/backup/FullBackupJob;->mParams:Landroid/app/job/JobParameters;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/android/server/backup/FullBackupJob;->mParams:Landroid/app/job/JobParameters;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/FullBackupJob;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 65
    iput-object v2, p0, Lcom/android/server/backup/FullBackupJob;->mParams:Landroid/app/job/JobParameters;

    .line 62
    :cond_0
    return-void
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 2
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/server/backup/FullBackupJob;->mParams:Landroid/app/job/JobParameters;

    .line 74
    invoke-static {}, Lcom/android/server/backup/BackupManagerService;->getInstance()Lcom/android/server/backup/Trampoline;

    move-result-object v0

    .line 75
    .local v0, "service":Lcom/android/server/backup/Trampoline;
    invoke-virtual {v0, p0}, Lcom/android/server/backup/Trampoline;->beginFullBackup(Lcom/android/server/backup/FullBackupJob;)Z

    move-result v1

    return v1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 3
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .prologue
    const/4 v2, 0x0

    .line 80
    iget-object v1, p0, Lcom/android/server/backup/FullBackupJob;->mParams:Landroid/app/job/JobParameters;

    if-eqz v1, :cond_0

    .line 81
    iput-object v2, p0, Lcom/android/server/backup/FullBackupJob;->mParams:Landroid/app/job/JobParameters;

    .line 82
    invoke-static {}, Lcom/android/server/backup/BackupManagerService;->getInstance()Lcom/android/server/backup/Trampoline;

    move-result-object v0

    .line 83
    .local v0, "service":Lcom/android/server/backup/Trampoline;
    invoke-virtual {v0}, Lcom/android/server/backup/Trampoline;->endFullBackup()V

    .line 85
    .end local v0    # "service":Lcom/android/server/backup/Trampoline;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method
