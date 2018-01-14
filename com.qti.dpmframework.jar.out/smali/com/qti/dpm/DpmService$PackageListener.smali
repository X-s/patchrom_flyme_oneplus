.class Lcom/qti/dpm/DpmService$PackageListener;
.super Ljava/lang/Object;
.source "DpmService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/dpm/DpmService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qti/dpm/DpmService$PackageListener$1;
    }
.end annotation


# static fields
.field static final DPM_PKG_ACTION_ADD:I = 0x0

.field static final DPM_PKG_ACTION_REMOVE:I = 0x1

.field static final DPM_PKG_ACTION_REPLACE:I = 0x2


# instance fields
.field private dataPosNumOfApps:I

.field private isInitialized:Z

.field private mFilter:Landroid/content/IntentFilter;

.field mIntentReceiver:Landroid/content/BroadcastReceiver;

.field final synthetic this$0:Lcom/qti/dpm/DpmService;


# direct methods
.method static synthetic -wrap0(Lcom/qti/dpm/DpmService$PackageListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/qti/dpm/DpmService$PackageListener;->initialize()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/qti/dpm/DpmService$PackageListener;Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/qti/dpm/DpmService$PackageListener;->sendUpdatedPackageInfo(Landroid/content/Intent;)V

    return-void
.end method

.method constructor <init>(Lcom/qti/dpm/DpmService;)V
    .locals 2
    .param p1, "this$0"    # Lcom/qti/dpm/DpmService;

    .prologue
    .line 1350
    iput-object p1, p0, Lcom/qti/dpm/DpmService$PackageListener;->this$0:Lcom/qti/dpm/DpmService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1340
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qti/dpm/DpmService$PackageListener;->isInitialized:Z

    .line 1354
    new-instance v0, Lcom/qti/dpm/DpmService$PackageListener$1;

    invoke-direct {v0, p0}, Lcom/qti/dpm/DpmService$PackageListener$1;-><init>(Lcom/qti/dpm/DpmService$PackageListener;)V

    iput-object v0, p0, Lcom/qti/dpm/DpmService$PackageListener;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1351
    const-string/jumbo v0, "SERVICE"

    const-string/jumbo v1, "PackageListener constructor"

    invoke-static {v0, v1}, Lcom/qti/dpm/DpmMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1350
    return-void
.end method

.method private addPackageInfo(Lcom/qti/dpm/DpmRequest;Ljava/lang/String;I)Z
    .locals 3
    .param p1, "rr"    # Lcom/qti/dpm/DpmRequest;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .prologue
    .line 1379
    if-nez p1, :cond_0

    .line 1380
    const-string/jumbo v0, "SERVICE"

    .line 1381
    const-string/jumbo v1, "addPackageInfo: rr is Nullnot adding package info"

    .line 1380
    invoke-static {v0, v1}, Lcom/qti/dpm/DpmMsg;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 1383
    const/4 v0, 0x0

    return v0

    .line 1387
    :cond_0
    const-string/jumbo v0, "SERVICE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "addPackageInfo: appname:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1389
    const-string/jumbo v2, " uid:"

    .line 1387
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qti/dpm/DpmMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1399
    iget-object v0, p1, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1400
    iget-object v0, p1, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1401
    const/4 v0, 0x1

    return v0
.end method

.method private initRequest(Lcom/qti/dpm/DpmRequest;II)Z
    .locals 3
    .param p1, "rr"    # Lcom/qti/dpm/DpmRequest;
    .param p2, "action"    # I
    .param p3, "numOfApps"    # I

    .prologue
    .line 1406
    if-nez p1, :cond_0

    .line 1407
    const/4 v0, 0x0

    return v0

    .line 1414
    :cond_0
    iget-object v0, p1, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1416
    iget-object v0, p1, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    iput v0, p0, Lcom/qti/dpm/DpmService$PackageListener;->dataPosNumOfApps:I

    .line 1417
    iget-object v0, p1, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1418
    const-string/jumbo v0, "SERVICE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "initRequest: numApps:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qti/dpm/DpmService;->-wrap6(Ljava/lang/String;Ljava/lang/String;)V

    .line 1419
    const/4 v0, 0x1

    return v0
.end method

.method private initialize()V
    .locals 3

    .prologue
    .line 1488
    const-string/jumbo v0, "SERVICE"

    const-string/jumbo v1, "PackageListener initialize"

    invoke-static {v0, v1}, Lcom/qti/dpm/DpmMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1490
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/qti/dpm/DpmService$PackageListener;->mFilter:Landroid/content/IntentFilter;

    .line 1491
    iget-object v0, p0, Lcom/qti/dpm/DpmService$PackageListener;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1492
    iget-object v0, p0, Lcom/qti/dpm/DpmService$PackageListener;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1493
    iget-object v0, p0, Lcom/qti/dpm/DpmService$PackageListener;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1494
    iget-object v0, p0, Lcom/qti/dpm/DpmService$PackageListener;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1495
    iget-object v0, p0, Lcom/qti/dpm/DpmService$PackageListener;->this$0:Lcom/qti/dpm/DpmService;

    invoke-static {v0}, Lcom/qti/dpm/DpmService;->-get1(Lcom/qti/dpm/DpmService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/qti/dpm/DpmService$PackageListener;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/qti/dpm/DpmService$PackageListener;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1497
    invoke-virtual {p0}, Lcom/qti/dpm/DpmService$PackageListener;->sendInstalledPackageInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1498
    const-string/jumbo v0, "SERVICE"

    const-string/jumbo v1, "PackageListener: send installed package info to dpmd"

    invoke-static {v0, v1}, Lcom/qti/dpm/DpmMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1504
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qti/dpm/DpmService$PackageListener;->isInitialized:Z

    .line 1487
    return-void

    .line 1501
    :cond_0
    const-string/jumbo v0, "SERVICE"

    const-string/jumbo v1, "PackageListener: Failed to send installed package info to dpmd"

    invoke-static {v0, v1}, Lcom/qti/dpm/DpmMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendUpdatedPackageInfo(Landroid/content/Intent;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1508
    const-string/jumbo v7, "SERVICE"

    const-string/jumbo v8, "PackageListener sendUpdatedPackageInfo"

    invoke-static {v7, v8}, Lcom/qti/dpm/DpmMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1509
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1511
    .local v0, "action":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 1512
    .local v4, "extras":Landroid/os/Bundle;
    if-nez v4, :cond_0

    .line 1513
    const-string/jumbo v7, "SERVICE"

    const-string/jumbo v8, "sendUpdatedPackageInfo: no extra info "

    invoke-static {v7, v8}, Lcom/qti/dpm/DpmMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1516
    return-void

    .line 1519
    :cond_0
    const-string/jumbo v7, "android.intent.extra.UID"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 1520
    .local v6, "uid":I
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 1521
    .local v2, "appNameUri":Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 1523
    .local v1, "appName":Ljava/lang/String;
    const-string/jumbo v7, "SERVICE"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Intent sendUpdatedPackageInfo: uid:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1524
    const-string/jumbo v9, "  appName:"

    .line 1523
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/qti/dpm/DpmMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1527
    const/16 v7, 0xd

    invoke-static {v7}, Lcom/qti/dpm/DpmRequest;->obtain(I)Lcom/qti/dpm/DpmRequest;

    move-result-object v5

    .line 1529
    .local v5, "rr":Lcom/qti/dpm/DpmRequest;
    const-string/jumbo v7, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1530
    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-direct {p0, v5, v7, v8}, Lcom/qti/dpm/DpmService$PackageListener;->initRequest(Lcom/qti/dpm/DpmRequest;II)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1531
    return-void

    .line 1534
    :cond_1
    const-string/jumbo v7, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1535
    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct {p0, v5, v7, v8}, Lcom/qti/dpm/DpmService$PackageListener;->initRequest(Lcom/qti/dpm/DpmRequest;II)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1536
    return-void

    .line 1538
    :cond_2
    const-string/jumbo v7, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1539
    const/4 v7, 0x2

    const/4 v8, 0x1

    invoke-direct {p0, v5, v7, v8}, Lcom/qti/dpm/DpmService$PackageListener;->initRequest(Lcom/qti/dpm/DpmRequest;II)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1540
    return-void

    .line 1543
    :cond_3
    invoke-direct {p0, v5, v1, v6}, Lcom/qti/dpm/DpmService$PackageListener;->addPackageInfo(Lcom/qti/dpm/DpmRequest;Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_4

    .line 1544
    const-string/jumbo v7, "SERVICE"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "sendUpdatedPackageInfo: appname:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1546
    const-string/jumbo v9, " uid:"

    .line 1544
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1546
    const-string/jumbo v9, " failed"

    .line 1544
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/qti/dpm/DpmMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1547
    return-void

    .line 1549
    :cond_4
    iget-object v7, p0, Lcom/qti/dpm/DpmService$PackageListener;->this$0:Lcom/qti/dpm/DpmService;

    invoke-static {v7, v5}, Lcom/qti/dpm/DpmService;->-wrap14(Lcom/qti/dpm/DpmService;Lcom/qti/dpm/DpmRequest;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1507
    .end local v1    # "appName":Ljava/lang/String;
    .end local v2    # "appNameUri":Landroid/net/Uri;
    .end local v4    # "extras":Landroid/os/Bundle;
    .end local v5    # "rr":Lcom/qti/dpm/DpmRequest;
    .end local v6    # "uid":I
    :goto_0
    return-void

    .line 1550
    :catch_0
    move-exception v3

    .line 1551
    .local v3, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v7, "SERVICE"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Can\'t update package Exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/qti/dpm/DpmMsg;->logw(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1557
    :try_start_0
    const-string/jumbo v0, "SERVICE"

    const-string/jumbo v1, "Finalize...."

    invoke-static {v0, v1}, Lcom/qti/dpm/DpmMsg;->logw(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1560
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1555
    return-void

    .line 1559
    :catchall_0
    move-exception v0

    .line 1560
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1559
    throw v0
.end method

.method protected sendInstalledPackageInfo()Z
    .locals 13

    .prologue
    const/16 v10, 0xd

    const/4 v12, 0x0

    .line 1423
    const-string/jumbo v8, "SERVICE"

    const-string/jumbo v9, "initPackageInfo"

    invoke-static {v8, v9}, Lcom/qti/dpm/DpmMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1425
    iget-object v8, p0, Lcom/qti/dpm/DpmService$PackageListener;->this$0:Lcom/qti/dpm/DpmService;

    invoke-static {v8}, Lcom/qti/dpm/DpmService;->-get1(Lcom/qti/dpm/DpmService;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/16 v9, 0x40

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    .line 1426
    .local v3, "pkgList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-static {v10}, Lcom/qti/dpm/DpmRequest;->obtain(I)Lcom/qti/dpm/DpmRequest;

    move-result-object v5

    .line 1427
    .local v5, "rr":Lcom/qti/dpm/DpmRequest;
    const/4 v2, 0x0

    .line 1428
    .local v2, "numPkgsCopied":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {p0, v5, v12, v8}, Lcom/qti/dpm/DpmService$PackageListener;->initRequest(Lcom/qti/dpm/DpmRequest;II)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1429
    return v12

    .line 1434
    :cond_0
    :try_start_0
    const-string/jumbo v8, "SERVICE"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "initPackageInfo: size:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qti/dpm/DpmMsg;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1435
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-ge v1, v8, :cond_3

    .line 1436
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PackageInfo;

    iget-object v8, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v8, :cond_1

    .line 1437
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PackageInfo;

    iget-object v8, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v8, v8, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 1436
    if-eqz v8, :cond_1

    .line 1440
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PackageInfo;

    iget-object v6, v8, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 1441
    .local v6, "sigs":[Landroid/content/pm/Signature;
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PackageInfo;

    iget-object v4, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1442
    .local v4, "pkgName":Ljava/lang/String;
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PackageInfo;

    iget-object v8, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1444
    .local v7, "uid":I
    invoke-direct {p0, v5, v4, v7}, Lcom/qti/dpm/DpmService$PackageListener;->addPackageInfo(Lcom/qti/dpm/DpmRequest;Ljava/lang/String;I)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1445
    const-string/jumbo v8, "SERVICE"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "initPackageInfo: appname:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1447
    const-string/jumbo v10, " uid:"

    .line 1445
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1447
    const-string/jumbo v10, " failed"

    .line 1445
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qti/dpm/DpmMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1435
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v6    # "sigs":[Landroid/content/pm/Signature;
    .end local v7    # "uid":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1451
    .restart local v4    # "pkgName":Ljava/lang/String;
    .restart local v6    # "sigs":[Landroid/content/pm/Signature;
    .restart local v7    # "uid":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 1462
    iget-object v8, v5, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v8}, Landroid/os/Parcel;->dataSize()I

    move-result v8

    int-to-double v8, v8

    const-wide v10, 0x40b999999999999aL    # 6553.6

    cmpl-double v8, v8, v10

    if-ltz v8, :cond_1

    .line 1465
    iget-object v8, v5, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    iget v9, p0, Lcom/qti/dpm/DpmService$PackageListener;->dataPosNumOfApps:I

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1466
    iget-object v8, v5, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1467
    const-string/jumbo v8, "SERVICE"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "numPkgsCopied ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qti/dpm/DpmService;->-wrap6(Ljava/lang/String;Ljava/lang/String;)V

    .line 1468
    iget-object v8, p0, Lcom/qti/dpm/DpmService$PackageListener;->this$0:Lcom/qti/dpm/DpmService;

    invoke-static {v8, v5}, Lcom/qti/dpm/DpmService;->-wrap14(Lcom/qti/dpm/DpmService;Lcom/qti/dpm/DpmRequest;)V

    .line 1470
    const/4 v2, 0x0

    .line 1471
    const/16 v8, 0xd

    invoke-static {v8}, Lcom/qti/dpm/DpmRequest;->obtain(I)Lcom/qti/dpm/DpmRequest;

    move-result-object v5

    .line 1473
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v9, v1, 0x1

    sub-int/2addr v8, v9

    const/4 v9, 0x0

    invoke-direct {p0, v5, v9, v8}, Lcom/qti/dpm/DpmService$PackageListener;->initRequest(Lcom/qti/dpm/DpmRequest;II)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1474
    return v12

    .line 1480
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v6    # "sigs":[Landroid/content/pm/Signature;
    .end local v7    # "uid":I
    :cond_3
    iget-object v8, p0, Lcom/qti/dpm/DpmService$PackageListener;->this$0:Lcom/qti/dpm/DpmService;

    invoke-static {v8, v5}, Lcom/qti/dpm/DpmService;->-wrap14(Lcom/qti/dpm/DpmService;Lcom/qti/dpm/DpmRequest;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1484
    .end local v1    # "i":I
    :goto_1
    const/4 v8, 0x1

    return v8

    .line 1481
    :catch_0
    move-exception v0

    .line 1482
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v8, "SERVICE"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "initPackageInfo got exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qti/dpm/DpmMsg;->logw(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
