.class final Lcom/android/server/am/Uterus$BirthRunnable;
.super Ljava/lang/Object;
.source "Uterus.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Uterus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BirthRunnable"
.end annotation


# instance fields
.field private checkProcess:Z

.field private final info:Landroid/content/pm/ApplicationInfo;

.field private supervisor:Lcom/android/server/am/EmbryoSupervisor;

.field final synthetic this$0:Lcom/android/server/am/Uterus;


# direct methods
.method private constructor <init>(Lcom/android/server/am/Uterus;Lcom/android/server/am/EmbryoSupervisor;Landroid/content/pm/ApplicationInfo;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/am/Uterus;
    .param p2, "s"    # Lcom/android/server/am/EmbryoSupervisor;
    .param p3, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 544
    iput-object p1, p0, Lcom/android/server/am/Uterus$BirthRunnable;->this$0:Lcom/android/server/am/Uterus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 541
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/Uterus$BirthRunnable;->checkProcess:Z

    .line 545
    iput-object p2, p0, Lcom/android/server/am/Uterus$BirthRunnable;->supervisor:Lcom/android/server/am/EmbryoSupervisor;

    .line 546
    iput-object p3, p0, Lcom/android/server/am/Uterus$BirthRunnable;->info:Landroid/content/pm/ApplicationInfo;

    .line 544
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/Uterus;Lcom/android/server/am/EmbryoSupervisor;Landroid/content/pm/ApplicationInfo;Lcom/android/server/am/Uterus$BirthRunnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/Uterus;
    .param p2, "s"    # Lcom/android/server/am/EmbryoSupervisor;
    .param p3, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/Uterus$BirthRunnable;-><init>(Lcom/android/server/am/Uterus;Lcom/android/server/am/EmbryoSupervisor;Landroid/content/pm/ApplicationInfo;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 555
    iget-boolean v3, p0, Lcom/android/server/am/Uterus$BirthRunnable;->checkProcess:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/am/Uterus$BirthRunnable;->this$0:Lcom/android/server/am/Uterus;

    invoke-static {v3}, Lcom/android/server/am/Uterus;->-get1(Lcom/android/server/am/Uterus;)Lcom/android/server/am/EmbryoHelper;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/Uterus$BirthRunnable;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v4}, Lcom/android/server/am/EmbryoHelper;->checkIfProcessExist(Landroid/content/pm/ApplicationInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 556
    iget-object v4, p0, Lcom/android/server/am/Uterus$BirthRunnable;->supervisor:Lcom/android/server/am/EmbryoSupervisor;

    monitor-enter v4

    .line 557
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/Uterus$BirthRunnable;->supervisor:Lcom/android/server/am/EmbryoSupervisor;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/server/am/EmbryoSupervisor;->setWaitingForFork(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 558
    return-void

    .line 556
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 564
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/server/am/ProcessRecord;

    iget-object v3, p0, Lcom/android/server/am/Uterus$BirthRunnable;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, p0, Lcom/android/server/am/Uterus$BirthRunnable;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/am/Uterus$BirthRunnable;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v6, 0x0

    invoke-direct {v0, v6, v3, v4, v5}, Lcom/android/server/am/ProcessRecord;-><init>(Lcom/android/internal/os/BatteryStatsImpl;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)V

    .line 565
    .local v0, "app":Lcom/android/server/am/ProcessRecord;
    iget-object v3, p0, Lcom/android/server/am/Uterus$BirthRunnable;->this$0:Lcom/android/server/am/Uterus;

    invoke-static {v3}, Lcom/android/server/am/Uterus;->-get1(Lcom/android/server/am/Uterus;)Lcom/android/server/am/EmbryoHelper;

    move-result-object v3

    const-string/jumbo v4, "embryo"

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/server/am/EmbryoHelper;->startProcessLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    iget v3, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    if-nez v3, :cond_1

    .line 570
    const-string/jumbo v3, "Embryo_Uterus"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Create Embryo failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/Uterus$BirthRunnable;->supervisor:Lcom/android/server/am/EmbryoSupervisor;

    invoke-virtual {v5}, Lcom/android/server/am/EmbryoSupervisor;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", pid=0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    iget-object v4, p0, Lcom/android/server/am/Uterus$BirthRunnable;->supervisor:Lcom/android/server/am/EmbryoSupervisor;

    monitor-enter v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 572
    :try_start_2
    iget-object v3, p0, Lcom/android/server/am/Uterus$BirthRunnable;->supervisor:Lcom/android/server/am/EmbryoSupervisor;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/server/am/EmbryoSupervisor;->setWaitingForFork(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    monitor-exit v4

    .line 573
    return-void

    .line 571
    :catchall_1
    move-exception v3

    monitor-exit v4

    throw v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 585
    .end local v0    # "app":Lcom/android/server/am/ProcessRecord;
    :catch_0
    move-exception v1

    .line 586
    .local v1, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/android/server/am/Uterus$BirthRunnable;->supervisor:Lcom/android/server/am/EmbryoSupervisor;

    monitor-enter v4

    .line 587
    :try_start_4
    iget-object v3, p0, Lcom/android/server/am/Uterus$BirthRunnable;->supervisor:Lcom/android/server/am/EmbryoSupervisor;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/server/am/EmbryoSupervisor;->setWaitingForFork(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    monitor-exit v4

    .line 589
    const-string/jumbo v3, "Embryo_Uterus"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Create Embryo failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/Uterus$BirthRunnable;->supervisor:Lcom/android/server/am/EmbryoSupervisor;

    invoke-virtual {v5}, Lcom/android/server/am/EmbryoSupervisor;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 554
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 577
    .restart local v0    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_1
    :try_start_5
    new-instance v2, Lcom/android/server/am/Embryo;

    iget-object v3, p0, Lcom/android/server/am/Uterus$BirthRunnable;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/am/Uterus$BirthRunnable;->info:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v2, v3, v4}, Lcom/android/server/am/Embryo;-><init>(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)V

    .line 578
    .local v2, "newbie":Lcom/android/server/am/Embryo;
    iget v3, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v2, v3}, Lcom/android/server/am/Embryo;->setPid(I)V

    .line 580
    iget-object v3, p0, Lcom/android/server/am/Uterus$BirthRunnable;->this$0:Lcom/android/server/am/Uterus;

    invoke-static {v3}, Lcom/android/server/am/Uterus;->-get4(Lcom/android/server/am/Uterus;)Ljava/util/Map;

    move-result-object v4

    monitor-enter v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 581
    :try_start_6
    iget-object v3, p0, Lcom/android/server/am/Uterus$BirthRunnable;->this$0:Lcom/android/server/am/Uterus;

    invoke-static {v3}, Lcom/android/server/am/Uterus;->-get4(Lcom/android/server/am/Uterus;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/server/am/Embryo;->getPid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    monitor-exit v4

    .line 584
    const-string/jumbo v3, "Embryo_Uterus"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Embryo created."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/Uterus$BirthRunnable;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/server/am/Embryo;->getPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 580
    :catchall_2
    move-exception v3

    monitor-exit v4

    throw v3
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 586
    .end local v0    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v2    # "newbie":Lcom/android/server/am/Embryo;
    .restart local v1    # "e":Ljava/lang/Exception;
    :catchall_3
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method setCheckProcess(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 550
    iput-boolean p1, p0, Lcom/android/server/am/Uterus$BirthRunnable;->checkProcess:Z

    .line 549
    return-void
.end method
