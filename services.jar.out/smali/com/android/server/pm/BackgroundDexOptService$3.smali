.class Lcom/android/server/pm/BackgroundDexOptService$3;
.super Ljava/lang/Thread;
.source "BackgroundDexOptService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/BackgroundDexOptService;->runIdleOptimization(Landroid/app/job/JobParameters;Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/BackgroundDexOptService;

.field final synthetic val$jobParams:Landroid/app/job/JobParameters;

.field final synthetic val$lowThreshold:J

.field final synthetic val$pkgs:Landroid/util/ArraySet;

.field final synthetic val$pm:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/BackgroundDexOptService;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/PackageManagerService;JLandroid/app/job/JobParameters;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/pm/BackgroundDexOptService;
    .param p2, "$anonymous0"    # Ljava/lang/String;
    .param p4, "val$pm"    # Lcom/android/server/pm/PackageManagerService;
    .param p5, "val$lowThreshold"    # J
    .param p7, "val$jobParams"    # Landroid/app/job/JobParameters;

    .prologue
    .line 331
    .local p3, "val$pkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/server/pm/BackgroundDexOptService$3;->this$0:Lcom/android/server/pm/BackgroundDexOptService;

    iput-object p3, p0, Lcom/android/server/pm/BackgroundDexOptService$3;->val$pkgs:Landroid/util/ArraySet;

    iput-object p4, p0, Lcom/android/server/pm/BackgroundDexOptService$3;->val$pm:Lcom/android/server/pm/PackageManagerService;

    iput-wide p5, p0, Lcom/android/server/pm/BackgroundDexOptService$3;->val$lowThreshold:J

    iput-object p7, p0, Lcom/android/server/pm/BackgroundDexOptService$3;->val$jobParams:Landroid/app/job/JobParameters;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 334
    new-instance v4, Lcom/oneplus/config/ConfigGrabber;

    invoke-static {}, Lcom/android/server/pm/BackgroundDexOptService;->-get2()Landroid/content/Context;

    move-result-object v14

    invoke-static {}, Lcom/android/server/pm/BackgroundDexOptService;->-get0()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v4, v14, v15}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 335
    .local v4, "configGrabber":Lcom/oneplus/config/ConfigGrabber;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/BackgroundDexOptService$3;->this$0:Lcom/android/server/pm/BackgroundDexOptService;

    invoke-virtual {v4}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/server/pm/BackgroundDexOptService;->-wrap0(Lcom/android/server/pm/BackgroundDexOptService;Lorg/json/JSONArray;)Landroid/util/ArraySet;

    move-result-object v2

    .line 337
    .local v2, "IgnoreList":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/BackgroundDexOptService$3;->val$pkgs:Landroid/util/ArraySet;

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "pkg$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 338
    .local v5, "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/BackgroundDexOptService$3;->this$0:Lcom/android/server/pm/BackgroundDexOptService;

    iget-object v14, v14, Lcom/android/server/pm/BackgroundDexOptService;->mAbortIdleOptimization:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 340
    return-void

    .line 345
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 347
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/BackgroundDexOptService$3;->val$pm:Lcom/android/server/pm/PackageManagerService;

    .line 348
    const/4 v15, 0x0

    .line 349
    const/16 v16, 0x2

    .line 350
    const/16 v17, 0x1

    .line 347
    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v14, v5, v15, v0, v1}, Lcom/android/server/pm/PackageManagerService;->performDexOpt(Ljava/lang/String;ZIZ)Z

    goto :goto_0

    .line 355
    :cond_2
    sget-object v14, Lcom/android/server/pm/BackgroundDexOptService;->sFailedPackageNames:Landroid/util/ArraySet;

    invoke-virtual {v14, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 360
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/BackgroundDexOptService$3;->this$0:Lcom/android/server/pm/BackgroundDexOptService;

    invoke-static {v14}, Lcom/android/server/pm/BackgroundDexOptService;->-get1(Lcom/android/server/pm/BackgroundDexOptService;)Ljava/io/File;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v12

    .line 361
    .local v12, "usableSpace":J
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/pm/BackgroundDexOptService$3;->val$lowThreshold:J

    cmp-long v14, v12, v14

    if-gez v14, :cond_4

    .line 363
    const-string/jumbo v14, "BackgroundDexOptService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Aborting background dex opt job due to low storage: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    .end local v5    # "pkg":Ljava/lang/String;
    .end local v12    # "usableSpace":J
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/BackgroundDexOptService$3;->this$0:Lcom/android/server/pm/BackgroundDexOptService;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/pm/BackgroundDexOptService$3;->val$jobParams:Landroid/app/job/JobParameters;

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Lcom/android/server/pm/BackgroundDexOptService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 333
    return-void

    .line 370
    .restart local v5    # "pkg":Ljava/lang/String;
    .restart local v12    # "usableSpace":J
    :cond_4
    sget-object v15, Lcom/android/server/pm/BackgroundDexOptService;->sFailedPackageNames:Landroid/util/ArraySet;

    monitor-enter v15

    .line 371
    :try_start_0
    sget-object v14, Lcom/android/server/pm/BackgroundDexOptService;->sFailedPackageNames:Landroid/util/ArraySet;

    invoke-virtual {v14, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v15

    .line 373
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/BackgroundDexOptService$3;->val$pm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v14, v5}, Lcom/android/server/pm/PackageManagerService;->getOatFileCompilerFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 374
    .local v3, "compilerFilter":Ljava/lang/String;
    const-string/jumbo v14, "BackgroundDexOptService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "IdleOptimization run: pkg = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", compilerFilter = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    if-eqz v3, :cond_5

    const-string/jumbo v14, "interpret-only"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 377
    const-string/jumbo v14, "verify-profile"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    .line 376
    if-eqz v14, :cond_6

    .line 378
    :cond_5
    const-string/jumbo v14, "BackgroundDexOptService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "compilerFilter is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", do full oat"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/BackgroundDexOptService$3;->val$pm:Lcom/android/server/pm/PackageManagerService;

    .line 381
    const/4 v15, 0x0

    .line 382
    const/16 v16, 0x7

    .line 383
    const/16 v17, 0x0

    .line 380
    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v14, v5, v15, v0, v1}, Lcom/android/server/pm/PackageManagerService;->performDexOpt(Ljava/lang/String;ZIZ)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 385
    sget-object v15, Lcom/android/server/pm/BackgroundDexOptService;->sFailedPackageNames:Landroid/util/ArraySet;

    monitor-enter v15

    .line 386
    :try_start_1
    sget-object v14, Lcom/android/server/pm/BackgroundDexOptService;->sFailedPackageNames:Landroid/util/ArraySet;

    invoke-virtual {v14, v5}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    monitor-exit v15

    goto/16 :goto_0

    .line 370
    .end local v3    # "compilerFilter":Ljava/lang/String;
    :catchall_0
    move-exception v14

    monitor-exit v15

    throw v14

    .line 385
    .restart local v3    # "compilerFilter":Ljava/lang/String;
    :catchall_1
    move-exception v14

    monitor-exit v15

    throw v14

    .line 390
    :cond_6
    const-string/jumbo v14, "BackgroundDexOptService"

    const-string/jumbo v15, "compilerFilter is profiled or full"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    const/4 v11, 0x0

    .line 393
    .local v11, "rarelyUsed":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 394
    .local v8, "now":J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/BackgroundDexOptService$3;->val$pm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v14, v5}, Lcom/android/server/pm/PackageManagerService;->getLastUsedTime(Ljava/lang/String;)J

    move-result-wide v6

    .line 395
    .local v6, "lastUsed":J
    const-string/jumbo v14, "BackgroundDexOptService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "now = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", lastUsed = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", DAYS = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-wide/32 v16, 0x5265c00

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    const-wide/16 v14, 0x0

    cmp-long v14, v6, v14

    if-lez v14, :cond_7

    const-wide v14, 0x9a7ec800L

    sub-long v14, v8, v14

    cmp-long v14, v6, v14

    if-gez v14, :cond_7

    .line 399
    const/4 v11, 0x1

    .line 400
    const-string/jumbo v14, "BackgroundDexOptService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "rarely used: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", lastUsed = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_7
    const-string/jumbo v14, "speed"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 404
    if-eqz v11, :cond_8

    .line 405
    const-string/jumbo v14, "BackgroundDexOptService"

    const-string/jumbo v15, "speed but rarelyUsed, back to use profile-based"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/BackgroundDexOptService$3;->val$pm:Lcom/android/server/pm/PackageManagerService;

    .line 408
    const/4 v15, 0x1

    .line 409
    const/16 v16, 0x3

    .line 410
    const/16 v17, 0x1

    .line 407
    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v14, v5, v15, v0, v1}, Lcom/android/server/pm/PackageManagerService;->performDexOpt(Ljava/lang/String;ZIZ)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 411
    sget-object v15, Lcom/android/server/pm/BackgroundDexOptService;->sFailedPackageNames:Landroid/util/ArraySet;

    monitor-enter v15

    .line 412
    :try_start_2
    sget-object v14, Lcom/android/server/pm/BackgroundDexOptService;->sFailedPackageNames:Landroid/util/ArraySet;

    invoke-virtual {v14, v5}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto/16 :goto_1

    .line 411
    :catchall_2
    move-exception v14

    monitor-exit v15

    throw v14

    .line 416
    :cond_8
    sget-object v15, Lcom/android/server/pm/BackgroundDexOptService;->sFailedPackageNames:Landroid/util/ArraySet;

    monitor-enter v15

    .line 417
    :try_start_3
    sget-object v14, Lcom/android/server/pm/BackgroundDexOptService;->sFailedPackageNames:Landroid/util/ArraySet;

    invoke-virtual {v14, v5}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto/16 :goto_1

    .line 416
    :catchall_3
    move-exception v14

    monitor-exit v15

    throw v14

    .line 423
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/BackgroundDexOptService$3;->val$pm:Lcom/android/server/pm/PackageManagerService;

    .line 424
    const/4 v15, 0x1

    .line 425
    const/16 v16, 0x3

    .line 426
    const/16 v17, 0x0

    .line 423
    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v14, v5, v15, v0, v1}, Lcom/android/server/pm/PackageManagerService;->performDexOpt(Ljava/lang/String;ZIZ)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 428
    sget-object v15, Lcom/android/server/pm/BackgroundDexOptService;->sFailedPackageNames:Landroid/util/ArraySet;

    monitor-enter v15

    .line 429
    :try_start_4
    sget-object v14, Lcom/android/server/pm/BackgroundDexOptService;->sFailedPackageNames:Landroid/util/ArraySet;

    invoke-virtual {v14, v5}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto/16 :goto_1

    .line 428
    :catchall_4
    move-exception v14

    monitor-exit v15

    throw v14
.end method
