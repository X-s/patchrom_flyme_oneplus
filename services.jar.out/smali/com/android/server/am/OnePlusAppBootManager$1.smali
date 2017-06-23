.class Lcom/android/server/am/OnePlusAppBootManager$1;
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
    .line 1350
    iput-object p1, p0, Lcom/android/server/am/OnePlusAppBootManager$1;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v6, 0x3e8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1352
    sget-boolean v2, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-nez v2, :cond_1

    .line 1389
    :cond_0
    :goto_0
    return-void

    .line 1356
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1357
    .local v0, "action":Ljava/lang/String;
    sget-boolean v2, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "# mGeneralReceiver # onReceive # action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1359
    :cond_2
    const-string v2, "com.haha.action.test"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1360
    const-string v2, "code"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1361
    .local v1, "code":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "# mGeneralReceiver # onReceive # code = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1362
    const-string v2, "persist"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1363
    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager$1;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    # invokes: Lcom/android/server/am/OnePlusAppBootManager;->schedulePersistAppBootInfo(J)V
    invoke-static {v2, v6, v7}, Lcom/android/server/am/OnePlusAppBootManager;->access$100(Lcom/android/server/am/OnePlusAppBootManager;J)V

    goto :goto_0

    .line 1364
    :cond_3
    const-string v2, "prop_using_on"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1365
    sput-boolean v5, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    .line 1366
    const-string v2, "persist.sys.appboot.using"

    const-string v3, "true"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1367
    :cond_4
    const-string v2, "prop_using_off"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1368
    sput-boolean v4, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    .line 1369
    const-string v2, "persist.sys.appboot.using"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1370
    :cond_5
    const-string v2, "prop_debug_on"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1371
    sput-boolean v5, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    .line 1372
    const-string v2, "persist.sys.appboot.debug"

    const-string v3, "true"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1373
    :cond_6
    const-string v2, "prop_debug_off"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1374
    sput-boolean v4, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    .line 1375
    const-string v2, "persist.sys.appboot.debug"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1376
    :cond_7
    const-string v2, "prop_blacklist_on"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1377
    sput-boolean v5, Lcom/android/server/am/OnePlusAppBootManager;->BLACKLIST_ENABLE:Z

    .line 1378
    const-string v2, "persist.sys.appboot.blacklist"

    const-string v3, "true"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1379
    :cond_8
    const-string v2, "prop_blacklist_off"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1380
    sput-boolean v4, Lcom/android/server/am/OnePlusAppBootManager;->BLACKLIST_ENABLE:Z

    .line 1381
    const-string v2, "persist.sys.appboot.blacklist"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1382
    :cond_9
    const-string v2, "dump"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1383
    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager$1;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    # invokes: Lcom/android/server/am/OnePlusAppBootManager;->dumpInfo()V
    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->access$200(Lcom/android/server/am/OnePlusAppBootManager;)V

    .line 1384
    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager$1;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    # invokes: Lcom/android/server/am/OnePlusAppBootManager;->dumpPkgMapInfos()V
    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->access$300(Lcom/android/server/am/OnePlusAppBootManager;)V

    goto/16 :goto_0

    .line 1386
    .end local v1    # "code":Ljava/lang/String;
    :cond_a
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1387
    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager$1;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    # invokes: Lcom/android/server/am/OnePlusAppBootManager;->schedulePersistAppBootInfo(J)V
    invoke-static {v2, v6, v7}, Lcom/android/server/am/OnePlusAppBootManager;->access$100(Lcom/android/server/am/OnePlusAppBootManager;J)V

    goto/16 :goto_0
.end method
