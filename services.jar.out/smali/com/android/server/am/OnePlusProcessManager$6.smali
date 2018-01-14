.class Lcom/android/server/am/OnePlusProcessManager$6;
.super Ljava/lang/Object;
.source "OnePlusProcessManager.java"

# interfaces
.implements Landroid/os/PowerManagerInternal$LowPowerModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/OnePlusProcessManager;-><init>(Lcom/android/server/am/ActivityManagerService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusProcessManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/OnePlusProcessManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/OnePlusProcessManager;

    .prologue
    .line 420
    iput-object p1, p0, Lcom/android/server/am/OnePlusProcessManager$6;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLowPowerModeChanged(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 424
    const-string/jumbo v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "# onLowPowerModeChanged # mPowerSaveModeEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 425
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager$6;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-boolean v2, v2, Lcom/android/server/am/OnePlusProcessManager;->mPowerSaveModeEnabled:Z

    .line 424
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 425
    const-string/jumbo v2, ", enabled="

    .line 424
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    monitor-enter p0

    .line 427
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager$6;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iput-boolean p1, v0, Lcom/android/server/am/OnePlusProcessManager;->mPowerSaveModeEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 422
    return-void

    .line 426
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
