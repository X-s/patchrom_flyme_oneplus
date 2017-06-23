.class Lcom/oem/debug/ProcessCpuTrackerRunnable$1;
.super Ljava/lang/Object;
.source "ProcessCpuTrackerRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oem/debug/ProcessCpuTrackerRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oem/debug/ProcessCpuTrackerRunnable;


# direct methods
.method constructor <init>(Lcom/oem/debug/ProcessCpuTrackerRunnable;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/oem/debug/ProcessCpuTrackerRunnable$1;->this$0:Lcom/oem/debug/ProcessCpuTrackerRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 35
    new-instance v2, Lcom/android/internal/os/ProcessCpuTracker;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/android/internal/os/ProcessCpuTracker;-><init>(Z)V

    .line 36
    .local v2, "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    invoke-virtual {v2}, Lcom/android/internal/os/ProcessCpuTracker;->init()V

    .line 37
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 38
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 39
    .local v0, "now":J
    invoke-virtual {v2}, Lcom/android/internal/os/ProcessCpuTracker;->update()V

    .line 41
    :try_start_0
    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    const-wide/16 v4, 0x1f4

    :try_start_1
    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 43
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    :goto_0
    invoke-virtual {v2}, Lcom/android/internal/os/ProcessCpuTracker;->update()V

    .line 47
    const-string v3, "ProcessCpuTracker"

    const/4 v4, 0x6

    invoke-virtual {v2, v0, v1, v4}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentState(JI)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    return-void

    .line 43
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 44
    :catch_0
    move-exception v3

    goto :goto_0
.end method
