.class Lcom/android/server/LocationManagerService$7;
.super Landroid/content/BroadcastReceiver;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/LocationManagerService;->systemRunning()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/LocationManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/LocationManagerService;

    .prologue
    .line 386
    iput-object p1, p0, Lcom/android/server/LocationManagerService$7;->this$0:Lcom/android/server/LocationManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 389
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 390
    .local v2, "action":Ljava/lang/String;
    const-string/jumbo v8, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 391
    iget-object v8, p0, Lcom/android/server/LocationManagerService$7;->this$0:Lcom/android/server/LocationManagerService;

    const-string/jumbo v9, "android.intent.extra.user_handle"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    invoke-static {v8, v9}, Lcom/android/server/LocationManagerService;->-wrap8(Lcom/android/server/LocationManagerService;I)V

    .line 404
    :cond_0
    :goto_0
    const-string/jumbo v8, "sys.cgroup.active"

    const-string/jumbo v9, "0"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "0"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 405
    const-string/jumbo v8, "android.os.action.LIGHT_DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 406
    iget-object v8, p0, Lcom/android/server/LocationManagerService$7;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v8}, Lcom/android/server/LocationManagerService;->-get5(Lcom/android/server/LocationManagerService;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 407
    const/4 v5, 0x0

    .line 408
    .local v5, "needUpdate":Z
    :try_start_0
    iget-object v8, p0, Lcom/android/server/LocationManagerService$7;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v8}, Lcom/android/server/LocationManagerService;->-get6(Lcom/android/server/LocationManagerService;)Landroid/os/PowerManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/PowerManager;->isLightDeviceIdleMode()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 409
    sget-boolean v8, Lcom/android/server/LocationManagerService;->DEBUG_ONEPLUS:Z

    if-eqz v8, :cond_1

    const-string/jumbo v8, "LocationManagerService"

    const-string/jumbo v10, "in light idle mode, and remove update records in the blacklist"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :cond_1
    iget-object v8, p0, Lcom/android/server/LocationManagerService$7;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v8}, Lcom/android/server/LocationManagerService;->-get9(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;

    move-result-object v8

    const-string/jumbo v10, "gps"

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 411
    .local v7, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    if-eqz v7, :cond_f

    .line 412
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 413
    .local v1, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_8

    .line 414
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 415
    .local v6, "record":Lcom/android/server/LocationManagerService$UpdateRecord;
    iget-object v8, v6, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    if-eqz v8, :cond_3

    .line 416
    iget-object v8, v6, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v8, v8, Lcom/android/server/LocationManagerService$Receiver;->mPackageName:Ljava/lang/String;

    if-eqz v8, :cond_3

    .line 417
    iget-object v8, v6, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v8, v8, Lcom/android/server/LocationManagerService$Receiver;->mPackageName:Ljava/lang/String;

    const-string/jumbo v10, "com.voonik.android"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 418
    iget-object v8, v6, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v8, v8, Lcom/android/server/LocationManagerService$Receiver;->mPackageName:Ljava/lang/String;

    const-string/jumbo v10, "com.yahoo.mobile.client.android.yahoo"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 417
    if-nez v8, :cond_2

    .line 419
    iget-object v8, v6, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v8, v8, Lcom/android/server/LocationManagerService$Receiver;->mPackageName:Ljava/lang/String;

    const-string/jumbo v10, "com.triggerteam.ninjafighting2"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 417
    if-nez v8, :cond_2

    .line 420
    iget-object v8, v6, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v8, v8, Lcom/android/server/LocationManagerService$Receiver;->mPackageName:Ljava/lang/String;

    const-string/jumbo v10, "com.vodafone.vodafoneplay"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 417
    if-eqz v8, :cond_3

    .line 421
    :cond_2
    iget-object v8, p0, Lcom/android/server/LocationManagerService$7;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v8}, Lcom/android/server/LocationManagerService;->-get3(Lcom/android/server/LocationManagerService;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 422
    const/4 v5, 0x1

    .line 413
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 392
    .end local v1    # "N":I
    .end local v3    # "i":I
    .end local v5    # "needUpdate":Z
    .end local v6    # "record":Lcom/android/server/LocationManagerService$UpdateRecord;
    .end local v7    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    :cond_4
    const-string/jumbo v8, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 393
    const-string/jumbo v8, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 392
    if-eqz v8, :cond_6

    .line 394
    :cond_5
    iget-object v8, p0, Lcom/android/server/LocationManagerService$7;->this$0:Lcom/android/server/LocationManagerService;

    iget-object v9, p0, Lcom/android/server/LocationManagerService$7;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v9}, Lcom/android/server/LocationManagerService;->-get2(Lcom/android/server/LocationManagerService;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/server/LocationManagerService;->updateUserProfiles(I)V

    goto/16 :goto_0

    .line 395
    :cond_6
    const-string/jumbo v8, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 397
    sget-boolean v8, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v8, :cond_7

    const-string/jumbo v8, "LocationManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Shutdown received with UserId: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/server/LocationManagerService$7;->getSendingUserId()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/LocationManagerService$7;->getSendingUserId()I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_0

    .line 399
    iget-object v8, p0, Lcom/android/server/LocationManagerService$7;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v8}, Lcom/android/server/LocationManagerService;->-wrap7(Lcom/android/server/LocationManagerService;)V

    goto/16 :goto_0

    .line 428
    .restart local v1    # "N":I
    .restart local v3    # "i":I
    .restart local v5    # "needUpdate":Z
    .restart local v7    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    :cond_8
    :try_start_1
    iget-object v8, p0, Lcom/android/server/LocationManagerService$7;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v8}, Lcom/android/server/LocationManagerService;->-get3(Lcom/android/server/LocationManagerService;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 429
    .local v0, "M":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    if-ge v4, v0, :cond_f

    .line 430
    iget-object v8, p0, Lcom/android/server/LocationManagerService$7;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v8}, Lcom/android/server/LocationManagerService;->-get3(Lcom/android/server/LocationManagerService;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 431
    .restart local v6    # "record":Lcom/android/server/LocationManagerService$UpdateRecord;
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 432
    sget-boolean v8, Lcom/android/server/LocationManagerService;->DEBUG_ONEPLUS:Z

    if-eqz v8, :cond_9

    const-string/jumbo v8, "LocationManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Remove updaterecord: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 436
    .end local v0    # "M":I
    .end local v1    # "N":I
    .end local v3    # "i":I
    .end local v4    # "j":I
    .end local v6    # "record":Lcom/android/server/LocationManagerService$UpdateRecord;
    .end local v7    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    :cond_a
    sget-boolean v8, Lcom/android/server/LocationManagerService;->DEBUG_ONEPLUS:Z

    if-eqz v8, :cond_b

    const-string/jumbo v8, "LocationManagerService"

    const-string/jumbo v10, "leaves light idle mode, and restore update records in the blacklist."

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :cond_b
    iget-object v8, p0, Lcom/android/server/LocationManagerService$7;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v8}, Lcom/android/server/LocationManagerService;->-get9(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;

    move-result-object v8

    const-string/jumbo v10, "gps"

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 438
    .restart local v7    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    if-eqz v7, :cond_f

    .line 439
    iget-object v8, p0, Lcom/android/server/LocationManagerService$7;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v8}, Lcom/android/server/LocationManagerService;->-get3(Lcom/android/server/LocationManagerService;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 440
    .restart local v1    # "N":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    if-ge v3, v1, :cond_e

    .line 441
    iget-object v8, p0, Lcom/android/server/LocationManagerService$7;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v8}, Lcom/android/server/LocationManagerService;->-get3(Lcom/android/server/LocationManagerService;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 443
    .restart local v6    # "record":Lcom/android/server/LocationManagerService$UpdateRecord;
    iget-object v8, v6, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    if-eqz v8, :cond_d

    .line 444
    sget-boolean v8, Lcom/android/server/LocationManagerService;->DEBUG_ONEPLUS:Z

    if-eqz v8, :cond_c

    const-string/jumbo v8, "LocationManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Restore updaterecord: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    :cond_c
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 447
    :cond_d
    const/4 v5, 0x1

    .line 440
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 450
    .end local v6    # "record":Lcom/android/server/LocationManagerService$UpdateRecord;
    :cond_e
    iget-object v8, p0, Lcom/android/server/LocationManagerService$7;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v8}, Lcom/android/server/LocationManagerService;->-get3(Lcom/android/server/LocationManagerService;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 453
    .end local v1    # "N":I
    .end local v3    # "i":I
    :cond_f
    if-eqz v5, :cond_10

    .line 454
    iget-object v8, p0, Lcom/android/server/LocationManagerService$7;->this$0:Lcom/android/server/LocationManagerService;

    const-string/jumbo v10, "gps"

    invoke-static {v8, v10}, Lcom/android/server/LocationManagerService;->-wrap4(Lcom/android/server/LocationManagerService;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_10
    monitor-exit v9

    .line 388
    .end local v5    # "needUpdate":Z
    .end local v7    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    :cond_11
    return-void

    .line 406
    .restart local v5    # "needUpdate":Z
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8
.end method
