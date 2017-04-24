.class Lcom/android/server/am/ActivityManagerService$AppForkedProc;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppForkedProc"
.end annotation


# instance fields
.field public curCpuTimeBgMonitor:J

.field public flags:I

.field public lastCpuTimeBgMonitor:[J

.field public name:Ljava/lang/String;

.field public final pid:I

.field public pkgName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field public final uid:I


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;IILjava/lang/String;I)V
    .locals 6
    .param p2, "uid"    # I
    .param p3, "pid"    # I
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "increaseTime"    # I

    .prologue
    const/4 v2, 0x0

    .line 3181
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$AppForkedProc;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3203
    iput v2, p0, Lcom/android/server/am/ActivityManagerService$AppForkedProc;->flags:I

    .line 3206
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/am/ActivityManagerService$AppForkedProc;->curCpuTimeBgMonitor:J

    .line 3207
    const/4 v2, 0x3

    new-array v2, v2, [J

    iput-object v2, p0, Lcom/android/server/am/ActivityManagerService$AppForkedProc;->lastCpuTimeBgMonitor:[J

    .line 3182
    iput p2, p0, Lcom/android/server/am/ActivityManagerService$AppForkedProc;->uid:I

    .line 3183
    iput p3, p0, Lcom/android/server/am/ActivityManagerService$AppForkedProc;->pid:I

    .line 3184
    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$AppForkedProc;->name:Ljava/lang/String;

    .line 3185
    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerService$AppForkedProc;->curCpuTimeBgMonitor:J

    int-to-long v4, p5

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/am/ActivityManagerService$AppForkedProc;->curCpuTimeBgMonitor:J

    .line 3186
    iget-object v2, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/ActivityManagerService$AppForkedProc;->pkgName:Ljava/lang/String;

    .line 3187
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$AppForkedProc;->pkgName:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 3189
    :try_start_0
    iget-object v2, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$AppForkedProc;->pkgName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 3190
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_0

    .line 3191
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    iput v2, p0, Lcom/android/server/am/ActivityManagerService$AppForkedProc;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3199
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    return-void

    .line 3192
    :catch_0
    move-exception v0

    .line 3193
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 3194
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BgDetect]err when get info of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$AppForkedProc;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$AppForkedProc;->pkgName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/am/ActivityManagerService$AppForkedProc;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/am/ActivityManagerService$AppForkedProc;->pid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3197
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BgDetect] AppForkedProc "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$AppForkedProc;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/am/ActivityManagerService$AppForkedProc;->pid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/am/ActivityManagerService$AppForkedProc;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " can\'t find pkgName"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public addTime(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 3210
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerService$AppForkedProc;->curCpuTimeBgMonitor:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/am/ActivityManagerService$AppForkedProc;->curCpuTimeBgMonitor:J

    .line 3211
    return-void
.end method
