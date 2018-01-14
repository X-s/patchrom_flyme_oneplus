.class Lcom/android/server/pm/BackgroundDexOptService$2;
.super Ljava/lang/Thread;
.source "BackgroundDexOptService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/BackgroundDexOptService;->runIdleStorageLowOptimization(Landroid/app/job/JobParameters;Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/BackgroundDexOptService;

.field final synthetic val$jobParams:Landroid/app/job/JobParameters;

.field final synthetic val$pkgs:Landroid/util/ArraySet;

.field final synthetic val$pm:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/BackgroundDexOptService;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/PackageManagerService;Landroid/app/job/JobParameters;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/BackgroundDexOptService;
    .param p2, "$anonymous0"    # Ljava/lang/String;
    .param p4, "val$pm"    # Lcom/android/server/pm/PackageManagerService;
    .param p5, "val$jobParams"    # Landroid/app/job/JobParameters;

    .prologue
    .line 226
    .local p3, "val$pkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/server/pm/BackgroundDexOptService$2;->this$0:Lcom/android/server/pm/BackgroundDexOptService;

    iput-object p3, p0, Lcom/android/server/pm/BackgroundDexOptService$2;->val$pkgs:Landroid/util/ArraySet;

    iput-object p4, p0, Lcom/android/server/pm/BackgroundDexOptService$2;->val$pm:Lcom/android/server/pm/PackageManagerService;

    iput-object p5, p0, Lcom/android/server/pm/BackgroundDexOptService$2;->val$jobParams:Landroid/app/job/JobParameters;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 229
    iget-object v8, p0, Lcom/android/server/pm/BackgroundDexOptService$2;->val$pkgs:Landroid/util/ArraySet;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "pkg$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 230
    .local v1, "pkg":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/pm/BackgroundDexOptService$2;->this$0:Lcom/android/server/pm/BackgroundDexOptService;

    iget-object v8, v8, Lcom/android/server/pm/BackgroundDexOptService;->mAbortIdleOptimization:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 232
    return-void

    .line 234
    :cond_1
    sget-object v8, Lcom/android/server/pm/BackgroundDexOptService;->sFailedPackageNames:Landroid/util/ArraySet;

    invoke-virtual {v8, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 240
    sget-object v9, Lcom/android/server/pm/BackgroundDexOptService;->sFailedPackageNames:Landroid/util/ArraySet;

    monitor-enter v9

    .line 241
    :try_start_0
    sget-object v8, Lcom/android/server/pm/BackgroundDexOptService;->sFailedPackageNames:Landroid/util/ArraySet;

    invoke-virtual {v8, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v9

    .line 244
    iget-object v8, p0, Lcom/android/server/pm/BackgroundDexOptService$2;->val$pm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v8, v1}, Lcom/android/server/pm/PackageManagerService;->getOatFileCompilerFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, "compilerFilter":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 249
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 250
    .local v4, "now":J
    iget-object v8, p0, Lcom/android/server/pm/BackgroundDexOptService$2;->val$pm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v8, v1}, Lcom/android/server/pm/PackageManagerService;->getLastUsedTime(Ljava/lang/String;)J

    move-result-wide v2

    .line 251
    .local v2, "lastUsed":J
    const/4 v7, 0x0

    .line 254
    .local v7, "rarelyUsed":Z
    const-wide v8, 0x9a7ec800L

    sub-long v8, v4, v8

    cmp-long v8, v2, v8

    if-gez v8, :cond_2

    .line 255
    const/4 v7, 0x1

    .line 256
    const-string/jumbo v8, "BackgroundDexOptService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "rarely used: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "lastUsed = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_2
    if-eqz v7, :cond_3

    const-string/jumbo v8, "speed"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 260
    :cond_3
    const-string/jumbo v8, "speed-profile"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 259
    if-eqz v8, :cond_5

    .line 262
    :cond_4
    iget-object v8, p0, Lcom/android/server/pm/BackgroundDexOptService$2;->val$pm:Lcom/android/server/pm/PackageManagerService;

    .line 264
    const/4 v9, 0x2

    .line 262
    invoke-virtual {v8, v1, v12, v9, v11}, Lcom/android/server/pm/PackageManagerService;->performDexOpt(Ljava/lang/String;ZIZ)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 266
    sget-object v9, Lcom/android/server/pm/BackgroundDexOptService;->sFailedPackageNames:Landroid/util/ArraySet;

    monitor-enter v9

    .line 267
    :try_start_1
    sget-object v8, Lcom/android/server/pm/BackgroundDexOptService;->sFailedPackageNames:Landroid/util/ArraySet;

    invoke-virtual {v8, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    monitor-exit v9

    goto/16 :goto_0

    .line 240
    .end local v0    # "compilerFilter":Ljava/lang/String;
    .end local v2    # "lastUsed":J
    .end local v4    # "now":J
    .end local v7    # "rarelyUsed":Z
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8

    .line 266
    .restart local v0    # "compilerFilter":Ljava/lang/String;
    .restart local v2    # "lastUsed":J
    .restart local v4    # "now":J
    .restart local v7    # "rarelyUsed":Z
    :catchall_1
    move-exception v8

    monitor-exit v9

    throw v8

    .line 270
    :cond_5
    const-string/jumbo v8, "speed"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 272
    iget-object v8, p0, Lcom/android/server/pm/BackgroundDexOptService$2;->val$pm:Lcom/android/server/pm/PackageManagerService;

    .line 274
    const/4 v9, 0x3

    .line 272
    invoke-virtual {v8, v1, v11, v9, v11}, Lcom/android/server/pm/PackageManagerService;->performDexOpt(Ljava/lang/String;ZIZ)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 276
    sget-object v9, Lcom/android/server/pm/BackgroundDexOptService;->sFailedPackageNames:Landroid/util/ArraySet;

    monitor-enter v9

    .line 277
    :try_start_2
    sget-object v8, Lcom/android/server/pm/BackgroundDexOptService;->sFailedPackageNames:Landroid/util/ArraySet;

    invoke-virtual {v8, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    .line 276
    :catchall_2
    move-exception v8

    monitor-exit v9

    throw v8

    .line 285
    .end local v0    # "compilerFilter":Ljava/lang/String;
    .end local v1    # "pkg":Ljava/lang/String;
    .end local v2    # "lastUsed":J
    .end local v4    # "now":J
    .end local v7    # "rarelyUsed":Z
    :cond_6
    iget-object v8, p0, Lcom/android/server/pm/BackgroundDexOptService$2;->this$0:Lcom/android/server/pm/BackgroundDexOptService;

    iget-object v9, p0, Lcom/android/server/pm/BackgroundDexOptService$2;->val$jobParams:Landroid/app/job/JobParameters;

    invoke-virtual {v8, v9, v12}, Lcom/android/server/pm/BackgroundDexOptService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 228
    return-void
.end method
