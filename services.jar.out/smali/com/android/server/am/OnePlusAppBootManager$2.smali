.class Lcom/android/server/am/OnePlusAppBootManager$2;
.super Landroid/content/BroadcastReceiver;
.source "OnePlusAppBootManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusAppBootManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusAppBootManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/OnePlusAppBootManager;)V
    .locals 0

    .prologue
    .line 1427
    iput-object p1, p0, Lcom/android/server/am/OnePlusAppBootManager$2;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v8, 0x3e8

    const/4 v7, 0x0

    .line 1429
    sget-boolean v4, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-nez v4, :cond_1

    .line 1471
    :cond_0
    :goto_0
    return-void

    .line 1432
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1433
    .local v0, "action":Ljava/lang/String;
    sget-boolean v4, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "# mPackageReceiver # onReceive # action="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " intent="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1435
    :cond_2
    const-string v4, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1436
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 1437
    .local v3, "uri":Landroid/net/Uri;
    if-eqz v3, :cond_0

    .line 1440
    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 1441
    .local v2, "pkgName":Ljava/lang/String;
    sget-boolean v4, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "# mPackageReceiver # onReceive # mPkgMap replaced "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1442
    :cond_3
    iget-object v4, p0, Lcom/android/server/am/OnePlusAppBootManager$2;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    iget-object v4, v4, Lcom/android/server/am/OnePlusAppBootManager;->mAppbootHandler:Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1443
    iget-object v4, p0, Lcom/android/server/am/OnePlusAppBootManager$2;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    iget-object v4, v4, Lcom/android/server/am/OnePlusAppBootManager;->mAppbootHandler:Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->removeMessages(I)V

    .line 1445
    :cond_4
    iget-object v4, p0, Lcom/android/server/am/OnePlusAppBootManager$2;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    iget-object v4, v4, Lcom/android/server/am/OnePlusAppBootManager;->mAppbootHandler:Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/16 v6, 0x15

    invoke-static {v4, v5, v6, v7, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1446
    .local v1, "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/server/am/OnePlusAppBootManager$2;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    iget-object v4, v4, Lcom/android/server/am/OnePlusAppBootManager;->mAppbootHandler:Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

    invoke-virtual {v4, v1, v8, v9}, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1470
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "pkgName":Ljava/lang/String;
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_5
    :goto_1
    iget-object v4, p0, Lcom/android/server/am/OnePlusAppBootManager$2;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    const-wide/16 v6, 0x4e20

    # invokes: Lcom/android/server/am/OnePlusAppBootManager;->schedulePersistAppBootInfo(J)V
    invoke-static {v4, v6, v7}, Lcom/android/server/am/OnePlusAppBootManager;->access$100(Lcom/android/server/am/OnePlusAppBootManager;J)V

    goto/16 :goto_0

    .line 1447
    :cond_6
    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1448
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 1449
    .restart local v3    # "uri":Landroid/net/Uri;
    if-eqz v3, :cond_0

    .line 1452
    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 1453
    .restart local v2    # "pkgName":Ljava/lang/String;
    sget-boolean v4, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v4, :cond_7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "# mPackageReceiver # onReceive # mPkgMap removed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1454
    :cond_7
    iget-object v4, p0, Lcom/android/server/am/OnePlusAppBootManager$2;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    iget-object v4, v4, Lcom/android/server/am/OnePlusAppBootManager;->mAppbootHandler:Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/16 v6, 0x16

    invoke-static {v4, v5, v6, v7, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1455
    .restart local v1    # "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/server/am/OnePlusAppBootManager$2;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    iget-object v4, v4, Lcom/android/server/am/OnePlusAppBootManager;->mAppbootHandler:Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

    invoke-virtual {v4, v1, v8, v9}, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 1456
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "pkgName":Ljava/lang/String;
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_8
    const-string v4, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1457
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 1458
    .restart local v3    # "uri":Landroid/net/Uri;
    if-eqz v3, :cond_0

    .line 1461
    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 1462
    .restart local v2    # "pkgName":Ljava/lang/String;
    sget-boolean v4, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v4, :cond_9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "# mPackageReceiver # onReceive # mPkgMap added "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1463
    :cond_9
    iget-object v4, p0, Lcom/android/server/am/OnePlusAppBootManager$2;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    iget-object v4, v4, Lcom/android/server/am/OnePlusAppBootManager;->mAppbootHandler:Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1464
    iget-object v4, p0, Lcom/android/server/am/OnePlusAppBootManager$2;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    iget-object v4, v4, Lcom/android/server/am/OnePlusAppBootManager;->mAppbootHandler:Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->removeMessages(I)V

    .line 1466
    :cond_a
    iget-object v4, p0, Lcom/android/server/am/OnePlusAppBootManager$2;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    iget-object v4, v4, Lcom/android/server/am/OnePlusAppBootManager;->mAppbootHandler:Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/16 v6, 0x17

    invoke-static {v4, v5, v6, v7, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1467
    .restart local v1    # "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/server/am/OnePlusAppBootManager$2;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    iget-object v4, v4, Lcom/android/server/am/OnePlusAppBootManager;->mAppbootHandler:Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

    invoke-virtual {v4, v1, v8, v9}, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_1
.end method
