.class Lcom/qti/dpm/DpmService$1;
.super Landroid/content/BroadcastReceiver;
.source "DpmService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/dpm/DpmService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qti/dpm/DpmService;


# direct methods
.method constructor <init>(Lcom/qti/dpm/DpmService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qti/dpm/DpmService;

    .prologue
    .line 467
    iput-object p1, p0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 33
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 469
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 470
    .local v3, "action":Ljava/lang/String;
    const-string/jumbo v29, "SERVICE"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "DPM received action "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/qti/dpm/DpmService;->-wrap7(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    const-string/jumbo v29, "android.intent.action.SCREEN_ON"

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_1

    .line 473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-boolean v0, v0, Lcom/qti/dpm/DpmService;->DPM_EVENT_STATE_ON:Z

    move/from16 v30, v0

    invoke-static/range {v29 .. v30}, Lcom/qti/dpm/DpmService;->-wrap15(Lcom/qti/dpm/DpmService;Z)V

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    invoke-static/range {v29 .. v30}, Lcom/qti/dpm/DpmService;->-set1(Lcom/qti/dpm/DpmService;Z)Z

    .line 468
    :cond_0
    :goto_0
    return-void

    .line 475
    :cond_1
    const-string/jumbo v29, "android.intent.action.SCREEN_OFF"

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_2

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-boolean v0, v0, Lcom/qti/dpm/DpmService;->DPM_EVENT_STATE_OFF:Z

    move/from16 v30, v0

    invoke-static/range {v29 .. v30}, Lcom/qti/dpm/DpmService;->-wrap15(Lcom/qti/dpm/DpmService;Z)V

    .line 477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-static/range {v29 .. v30}, Lcom/qti/dpm/DpmService;->-set1(Lcom/qti/dpm/DpmService;Z)Z

    goto :goto_0

    .line 478
    :cond_2
    const-string/jumbo v29, "android.net.wifi.STATE_CHANGE"

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_3

    .line 479
    const-string/jumbo v29, "android.net.wifi.WIFI_STATE_CHANGED"

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    .line 478
    if-eqz v29, :cond_5

    .line 480
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/qti/dpm/DpmService;->-get2(Lcom/qti/dpm/DpmService;)Landroid/net/wifi/WifiManager;

    move-result-object v29

    if-eqz v29, :cond_4

    .line 481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/qti/dpm/DpmService;->-wrap20(Lcom/qti/dpm/DpmService;Landroid/content/Intent;)V

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/qti/dpm/DpmService;->getWlanInfo()Lcom/qti/dpm/DpmService$DpmWifiInfo;

    move-result-object v8

    .line 483
    .local v8, "dpmWifiInfo":Lcom/qti/dpm/DpmService$DpmWifiInfo;
    if-eqz v8, :cond_0

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-static {v0, v8}, Lcom/qti/dpm/DpmService;->-wrap18(Lcom/qti/dpm/DpmService;Lcom/qti/dpm/DpmService$DpmWifiInfo;)V

    goto :goto_0

    .line 487
    .end local v8    # "dpmWifiInfo":Lcom/qti/dpm/DpmService$DpmWifiInfo;
    :cond_4
    const-string/jumbo v29, "SERVICE"

    const-string/jumbo v30, "DPM received action Network State Changed, null WifiManager"

    invoke-static/range {v29 .. v30}, Lcom/qti/dpm/DpmService;->-wrap9(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 489
    :cond_5
    const-string/jumbo v29, "android.intent.action.ANY_DATA_STATE"

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_8

    .line 490
    const-string/jumbo v29, "apnType"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 492
    .local v5, "apnType":Ljava/lang/String;
    const-string/jumbo v29, "SERVICE"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "DPM received ACTION_ANY_DATA_CONNECTION_STATE_CHANGED"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/qti/dpm/DpmService;->-wrap9(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    if-nez v5, :cond_6

    .line 494
    const-string/jumbo v29, "SERVICE"

    const-string/jumbo v30, "DPM error getting apnType"

    invoke-static/range {v29 .. v30}, Lcom/qti/dpm/DpmService;->-wrap8(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    return-void

    .line 498
    :cond_6
    const-string/jumbo v29, "default"

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_7

    .line 500
    const-string/jumbo v29, "SERVICE"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "If apn type is default ->"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/qti/dpm/DpmService;->-wrap9(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/qti/dpm/DpmService;->-wrap21(Lcom/qti/dpm/DpmService;Landroid/content/Intent;)V

    .line 502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/qti/dpm/DpmService;->getWwanInfo()Lcom/qti/dpm/DpmService$DpmWwanInfo;

    move-result-object v9

    .line 503
    .local v9, "dpmWwanInfo":Lcom/qti/dpm/DpmService$DpmWwanInfo;
    if-eqz v9, :cond_0

    .line 504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-static {v0, v9}, Lcom/qti/dpm/DpmService;->-wrap19(Lcom/qti/dpm/DpmService;Lcom/qti/dpm/DpmService$DpmWwanInfo;)V

    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/qti/dpm/DpmService;->mNsrm:Lcom/qti/dpm/DpmNsrm;

    move-object/from16 v29, v0

    if-eqz v29, :cond_0

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/qti/dpm/DpmService;->mNsrm:Lcom/qti/dpm/DpmNsrm;

    move-object/from16 v29, v0

    iget v0, v9, Lcom/qti/dpm/DpmService$DpmWwanInfo;->networkState:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Lcom/qti/dpm/DpmNsrm;->handleUpdateWwanNetworkState(I)V

    goto/16 :goto_0

    .line 510
    .end local v9    # "dpmWwanInfo":Lcom/qti/dpm/DpmService$DpmWwanInfo;
    :cond_7
    const-string/jumbo v29, "SERVICE"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "DPM currently does not support this apnType="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/qti/dpm/DpmService;->-wrap5(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 512
    .end local v5    # "apnType":Ljava/lang/String;
    :cond_8
    const-string/jumbo v29, "android.net.conn.TETHER_STATE_CHANGED"

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_15

    .line 514
    const-string/jumbo v29, "availableArray"

    .line 513
    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 516
    .local v6, "available":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v29, "activeArray"

    .line 515
    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 518
    .local v4, "active":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v29, "erroredArray"

    .line 517
    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 520
    .local v10, "errored":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v29, "SERVICE"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "available = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, " active = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    .line 521
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v31

    .line 520
    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    .line 521
    const-string/jumbo v31, " errored = "

    .line 520
    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    .line 521
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v31

    .line 520
    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/qti/dpm/DpmService;->-wrap7(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/qti/dpm/DpmService;->-get1(Lcom/qti/dpm/DpmService;)Landroid/content/Context;

    move-result-object v29

    const-string/jumbo v30, "connectivity"

    invoke-virtual/range {v29 .. v30}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/ConnectivityManager;

    .line 525
    .local v13, "mCm":Landroid/net/ConnectivityManager;
    invoke-virtual {v13}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v15

    .line 526
    .local v15, "mWifiRegexs":[Ljava/lang/String;
    invoke-virtual {v13}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v14

    .line 527
    .local v14, "mUsbRegexs":[Ljava/lang/String;
    invoke-virtual {v13}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v12

    .line 529
    .local v12, "mBluetoothRegexs":[Ljava/lang/String;
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "o$iterator":Ljava/util/Iterator;
    :cond_9
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_b

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    .local v17, "o":Ljava/lang/Object;
    move-object/from16 v26, v17

    .line 530
    check-cast v26, Ljava/lang/String;

    .line 531
    .local v26, "s":Ljava/lang/String;
    const/16 v29, 0x0

    array-length v0, v15

    move/from16 v30, v0

    :goto_1
    move/from16 v0, v29

    move/from16 v1, v30

    if-ge v0, v1, :cond_9

    aget-object v23, v15, v29

    .line 532
    .local v23, "regex":Ljava/lang/String;
    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_a

    .line 533
    const-string/jumbo v31, "SERVICE"

    const-string/jumbo v32, "wifi tethered"

    invoke-static/range {v31 .. v32}, Lcom/qti/dpm/DpmService;->-wrap7(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    invoke-static/range {v31 .. v32}, Lcom/qti/dpm/DpmService;->-set3(Lcom/qti/dpm/DpmService;Z)Z

    .line 531
    :cond_a
    add-int/lit8 v29, v29, 0x1

    goto :goto_1

    .line 539
    .end local v17    # "o":Ljava/lang/Object;
    .end local v23    # "regex":Ljava/lang/String;
    .end local v26    # "s":Ljava/lang/String;
    :cond_b
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, "ousb$iterator":Ljava/util/Iterator;
    :cond_c
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_e

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    .local v21, "ousb":Ljava/lang/Object;
    move-object/from16 v28, v21

    .line 540
    check-cast v28, Ljava/lang/String;

    .line 541
    .local v28, "susb":Ljava/lang/String;
    const/16 v29, 0x0

    array-length v0, v14

    move/from16 v30, v0

    :goto_2
    move/from16 v0, v29

    move/from16 v1, v30

    if-ge v0, v1, :cond_c

    aget-object v25, v14, v29

    .line 542
    .local v25, "regexusb":Ljava/lang/String;
    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_d

    .line 543
    const-string/jumbo v31, "SERVICE"

    const-string/jumbo v32, "usb tethered"

    invoke-static/range {v31 .. v32}, Lcom/qti/dpm/DpmService;->-wrap7(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    invoke-static/range {v31 .. v32}, Lcom/qti/dpm/DpmService;->-set2(Lcom/qti/dpm/DpmService;Z)Z

    .line 541
    :cond_d
    add-int/lit8 v29, v29, 0x1

    goto :goto_2

    .line 549
    .end local v21    # "ousb":Ljava/lang/Object;
    .end local v25    # "regexusb":Ljava/lang/String;
    .end local v28    # "susb":Ljava/lang/String;
    :cond_e
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, "obt$iterator":Ljava/util/Iterator;
    :cond_f
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_11

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    .local v19, "obt":Ljava/lang/Object;
    move-object/from16 v27, v19

    .line 550
    check-cast v27, Ljava/lang/String;

    .line 551
    .local v27, "sbt":Ljava/lang/String;
    const/16 v29, 0x0

    array-length v0, v12

    move/from16 v30, v0

    :goto_3
    move/from16 v0, v29

    move/from16 v1, v30

    if-ge v0, v1, :cond_f

    aget-object v24, v12, v29

    .line 552
    .local v24, "regexbt":Ljava/lang/String;
    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_10

    .line 553
    const-string/jumbo v31, "SERVICE"

    const-string/jumbo v32, "bluetooth tethered"

    invoke-static/range {v31 .. v32}, Lcom/qti/dpm/DpmService;->-wrap7(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    invoke-static/range {v31 .. v32}, Lcom/qti/dpm/DpmService;->-set0(Lcom/qti/dpm/DpmService;Z)Z

    .line 551
    :cond_10
    add-int/lit8 v29, v29, 0x1

    goto :goto_3

    .line 559
    .end local v19    # "obt":Ljava/lang/Object;
    .end local v24    # "regexbt":Ljava/lang/String;
    .end local v27    # "sbt":Ljava/lang/String;
    :cond_11
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v29

    if-nez v29, :cond_12

    .line 560
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-static/range {v29 .. v30}, Lcom/qti/dpm/DpmService;->-set3(Lcom/qti/dpm/DpmService;Z)Z

    .line 561
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-static/range {v29 .. v30}, Lcom/qti/dpm/DpmService;->-set2(Lcom/qti/dpm/DpmService;Z)Z

    .line 562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-static/range {v29 .. v30}, Lcom/qti/dpm/DpmService;->-set0(Lcom/qti/dpm/DpmService;Z)Z

    .line 563
    const-string/jumbo v29, "SERVICE"

    const-string/jumbo v30, "Tethering disabled"

    invoke-static/range {v29 .. v30}, Lcom/qti/dpm/DpmService;->-wrap7(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/qti/dpm/DpmService;->-get4(Lcom/qti/dpm/DpmService;)Z

    move-result v29

    if-nez v29, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/qti/dpm/DpmService;->-get3(Lcom/qti/dpm/DpmService;)Z

    move-result v29

    if-nez v29, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/qti/dpm/DpmService;->-get0(Lcom/qti/dpm/DpmService;)Z

    move-result v29

    if-eqz v29, :cond_14

    .line 567
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-boolean v0, v0, Lcom/qti/dpm/DpmService;->DPM_EVENT_STATE_ON:Z

    move/from16 v30, v0

    invoke-static/range {v29 .. v30}, Lcom/qti/dpm/DpmService;->-wrap17(Lcom/qti/dpm/DpmService;Z)V

    goto/16 :goto_0

    .line 569
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-boolean v0, v0, Lcom/qti/dpm/DpmService;->DPM_EVENT_STATE_OFF:Z

    move/from16 v30, v0

    invoke-static/range {v29 .. v30}, Lcom/qti/dpm/DpmService;->-wrap17(Lcom/qti/dpm/DpmService;Z)V

    goto/16 :goto_0

    .line 572
    .end local v4    # "active":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "available":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10    # "errored":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v12    # "mBluetoothRegexs":[Ljava/lang/String;
    .end local v13    # "mCm":Landroid/net/ConnectivityManager;
    .end local v14    # "mUsbRegexs":[Ljava/lang/String;
    .end local v15    # "mWifiRegexs":[Ljava/lang/String;
    .end local v18    # "o$iterator":Ljava/util/Iterator;
    .end local v20    # "obt$iterator":Ljava/util/Iterator;
    .end local v22    # "ousb$iterator":Ljava/util/Iterator;
    :cond_15
    const-string/jumbo v29, "android.net.conn.CONNECTIVITY_CHANGE_SUPL"

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_17

    .line 575
    const-string/jumbo v29, "networkInfo"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Landroid/net/NetworkInfo;

    .line 577
    .local v11, "info":Landroid/net/NetworkInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/qti/dpm/DpmService;->-get1(Lcom/qti/dpm/DpmService;)Landroid/content/Context;

    move-result-object v29

    const-string/jumbo v30, "connectivity"

    invoke-virtual/range {v29 .. v30}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 576
    check-cast v7, Landroid/net/ConnectivityManager;

    .line 578
    .local v7, "connManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getType()I

    move-result v29

    move/from16 v0, v29

    invoke-virtual {v7, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v11

    .line 580
    const-string/jumbo v29, "noConnectivity"

    const/16 v30, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v29

    if-nez v29, :cond_16

    .line 581
    invoke-virtual {v11}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v29

    if-eqz v29, :cond_16

    .line 587
    const/16 v16, 0x1

    .line 589
    .local v16, "networkState":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/qti/dpm/DpmService;->-wrap16(Lcom/qti/dpm/DpmService;Z)V

    goto/16 :goto_0

    .line 583
    .end local v16    # "networkState":Z
    :cond_16
    const/16 v16, 0x0

    .line 582
    .restart local v16    # "networkState":Z
    goto :goto_4

    .line 591
    .end local v7    # "connManager":Landroid/net/ConnectivityManager;
    .end local v11    # "info":Landroid/net/NetworkInfo;
    .end local v16    # "networkState":Z
    :cond_17
    const-string/jumbo v29, "com.qti.dpmframework.DPM_INTERNET_CONNECTED"

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_18

    .line 592
    const-string/jumbo v29, "SERVICE"

    const-string/jumbo v30, "Received DPM_INTERNET_CONNECTED_ACTION"

    invoke-static/range {v29 .. v30}, Lcom/qti/dpm/DpmService;->-wrap7(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/qti/dpm/DpmService;->-wrap21(Lcom/qti/dpm/DpmService;Landroid/content/Intent;)V

    .line 594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/qti/dpm/DpmService;->getWwanInfo()Lcom/qti/dpm/DpmService$DpmWwanInfo;

    move-result-object v9

    .line 595
    .restart local v9    # "dpmWwanInfo":Lcom/qti/dpm/DpmService$DpmWwanInfo;
    if-eqz v9, :cond_0

    .line 596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-static {v0, v9}, Lcom/qti/dpm/DpmService;->-wrap19(Lcom/qti/dpm/DpmService;Lcom/qti/dpm/DpmService$DpmWwanInfo;)V

    goto/16 :goto_0

    .line 601
    .end local v9    # "dpmWwanInfo":Lcom/qti/dpm/DpmService$DpmWwanInfo;
    :cond_18
    const-string/jumbo v29, "SERVICE"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "DPM received unexpected action: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/qti/dpm/DpmService;->-wrap9(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
