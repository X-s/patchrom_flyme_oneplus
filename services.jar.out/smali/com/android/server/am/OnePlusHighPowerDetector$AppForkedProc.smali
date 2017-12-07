.class public Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;
.super Ljava/lang/Object;
.source "OnePlusHighPowerDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusHighPowerDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppForkedProc"
.end annotation


# instance fields
.field public curCpuTimeBgMonitor:J

.field public flags:I

.field public lastCpuTimeBgMonitor:[J

.field public name:Ljava/lang/String;

.field public final pid:I

.field public pkgName:Ljava/lang/String;

.field public final uid:I


# direct methods
.method constructor <init>(IILjava/lang/String;I)V
    .locals 6
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "increaseTime"    # I

    .prologue
    const/4 v2, 0x0

    .line 2090
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2084
    iput v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->flags:I

    .line 2087
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->curCpuTimeBgMonitor:J

    .line 2088
    const/4 v2, 0x4

    new-array v2, v2, [J

    iput-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->lastCpuTimeBgMonitor:[J

    .line 2091
    iput p1, p0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    .line 2092
    iput p2, p0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pid:I

    .line 2093
    iput-object p3, p0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->name:Ljava/lang/String;

    .line 2094
    iget-wide v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->curCpuTimeBgMonitor:J

    int-to-long v4, p4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->curCpuTimeBgMonitor:J

    .line 2095
    invoke-static {}, Lcom/android/server/am/OnePlusHighPowerDetector;->-get0()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pkgName:Ljava/lang/String;

    .line 2096
    iget-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pkgName:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 2098
    :try_start_0
    invoke-static {}, Lcom/android/server/am/OnePlusHighPowerDetector;->-get0()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pkgName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 2099
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_0

    .line 2100
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    iput v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2090
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    return-void

    .line 2101
    :catch_0
    move-exception v0

    .line 2102
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 2103
    const-string/jumbo v2, "OHPD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[BgDetect]err when get info of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2104
    const-string/jumbo v4, "("

    .line 2103
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2104
    iget-object v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pkgName:Ljava/lang/String;

    .line 2103
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2104
    const-string/jumbo v4, ") uid "

    .line 2103
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2104
    iget v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    .line 2103
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2104
    const-string/jumbo v4, " pid "

    .line 2103
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2104
    iget v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pid:I

    .line 2103
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2107
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    const-string/jumbo v2, "OHPD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[BgDetect] AppForkedProc "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2108
    const-string/jumbo v4, " pid "

    .line 2107
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2108
    iget v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pid:I

    .line 2107
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2108
    const-string/jumbo v4, " uid "

    .line 2107
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2108
    iget v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    .line 2107
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2108
    const-string/jumbo v4, " can\'t find pkgName"

    .line 2107
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method


# virtual methods
.method public addTime(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 2113
    iget-wide v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->curCpuTimeBgMonitor:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->curCpuTimeBgMonitor:J

    .line 2112
    return-void
.end method
