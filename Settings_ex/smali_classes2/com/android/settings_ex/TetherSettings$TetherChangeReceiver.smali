.class Lcom/android/settings_ex/TetherSettings$TetherChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TetherSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/TetherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TetherChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/TetherSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/TetherSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/TetherSettings;

    .prologue
    .line 460
    iput-object p1, p0, Lcom/android/settings_ex/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings_ex/TetherSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/TetherSettings;Lcom/android/settings_ex/TetherSettings$TetherChangeReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/TetherSettings;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/TetherSettings$TetherChangeReceiver;-><init>(Lcom/android/settings_ex/TetherSettings;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "content"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v10, 0xb

    const/4 v9, 0x0

    .line 463
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 464
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v5, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 467
    const-string/jumbo v5, "availableArray"

    .line 466
    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 469
    .local v2, "available":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v5, "activeArray"

    .line 468
    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 471
    .local v1, "active":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v5, "erroredArray"

    .line 470
    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 472
    .local v3, "errored":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/android/settings_ex/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings_ex/TetherSettings;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 473
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    .line 474
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    .line 472
    invoke-static {v8, v5, v6, v7}, Lcom/android/settings_ex/TetherSettings;->-wrap5(Lcom/android/settings_ex/TetherSettings;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 475
    iget-object v5, p0, Lcom/android/settings_ex/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings_ex/TetherSettings;

    invoke-static {v5}, Lcom/android/settings_ex/TetherSettings;->-get11(Lcom/android/settings_ex/TetherSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v5

    if-ne v5, v10, :cond_0

    .line 476
    iget-object v5, p0, Lcom/android/settings_ex/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings_ex/TetherSettings;

    invoke-static {v5}, Lcom/android/settings_ex/TetherSettings;->-get7(Lcom/android/settings_ex/TetherSettings;)Z

    move-result v5

    .line 475
    if-eqz v5, :cond_0

    .line 477
    iget-object v5, p0, Lcom/android/settings_ex/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings_ex/TetherSettings;

    invoke-static {v5, v9}, Lcom/android/settings_ex/TetherSettings;->-set2(Lcom/android/settings_ex/TetherSettings;Z)Z

    .line 479
    iget-object v5, p0, Lcom/android/settings_ex/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings_ex/TetherSettings;

    invoke-static {v5, p1}, Lcom/android/settings_ex/TetherSettings;->-wrap1(Lcom/android/settings_ex/TetherSettings;Landroid/content/Context;)V

    .line 480
    iget-object v5, p0, Lcom/android/settings_ex/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings_ex/TetherSettings;

    invoke-static {v5}, Lcom/android/settings_ex/TetherSettings;->-get11(Lcom/android/settings_ex/TetherSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings_ex/TetherSettings;

    invoke-static {v6}, Lcom/android/settings_ex/TetherSettings;->-get10(Lcom/android/settings_ex/TetherSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    .line 482
    const-string/jumbo v5, "TetheringSettings"

    const-string/jumbo v6, "Restarting WifiAp due to prior config change."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    iget-object v5, p0, Lcom/android/settings_ex/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings_ex/TetherSettings;

    invoke-static {v5, v9}, Lcom/android/settings_ex/TetherSettings;->-wrap2(Lcom/android/settings_ex/TetherSettings;I)V

    .line 462
    .end local v1    # "active":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "available":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "errored":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-void

    .line 485
    :cond_1
    const-string/jumbo v5, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 486
    const-string/jumbo v5, "wifi_state"

    invoke-virtual {p2, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 487
    .local v4, "state":I
    if-ne v4, v10, :cond_0

    .line 488
    iget-object v5, p0, Lcom/android/settings_ex/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings_ex/TetherSettings;

    invoke-static {v5}, Lcom/android/settings_ex/TetherSettings;->-get7(Lcom/android/settings_ex/TetherSettings;)Z

    move-result v5

    .line 487
    if-eqz v5, :cond_0

    .line 489
    iget-object v5, p0, Lcom/android/settings_ex/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings_ex/TetherSettings;

    invoke-static {v5, v9}, Lcom/android/settings_ex/TetherSettings;->-set2(Lcom/android/settings_ex/TetherSettings;Z)Z

    .line 491
    iget-object v5, p0, Lcom/android/settings_ex/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings_ex/TetherSettings;

    invoke-static {v5, p1}, Lcom/android/settings_ex/TetherSettings;->-wrap1(Lcom/android/settings_ex/TetherSettings;Landroid/content/Context;)V

    .line 492
    iget-object v5, p0, Lcom/android/settings_ex/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings_ex/TetherSettings;

    invoke-static {v5}, Lcom/android/settings_ex/TetherSettings;->-get11(Lcom/android/settings_ex/TetherSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings_ex/TetherSettings;

    invoke-static {v6}, Lcom/android/settings_ex/TetherSettings;->-get10(Lcom/android/settings_ex/TetherSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    .line 494
    const-string/jumbo v5, "TetheringSettings"

    const-string/jumbo v6, "Restarting WifiAp due to prior config change."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    iget-object v5, p0, Lcom/android/settings_ex/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings_ex/TetherSettings;

    invoke-static {v5, v9}, Lcom/android/settings_ex/TetherSettings;->-wrap2(Lcom/android/settings_ex/TetherSettings;I)V

    goto :goto_0

    .line 497
    .end local v4    # "state":I
    :cond_2
    const-string/jumbo v5, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 498
    iget-object v5, p0, Lcom/android/settings_ex/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings_ex/TetherSettings;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/android/settings_ex/TetherSettings;->-set1(Lcom/android/settings_ex/TetherSettings;Z)Z

    .line 499
    iget-object v5, p0, Lcom/android/settings_ex/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings_ex/TetherSettings;

    invoke-static {v5}, Lcom/android/settings_ex/TetherSettings;->-wrap4(Lcom/android/settings_ex/TetherSettings;)V

    goto :goto_0

    .line 500
    :cond_3
    const-string/jumbo v5, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 501
    iget-object v5, p0, Lcom/android/settings_ex/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings_ex/TetherSettings;

    invoke-static {v5, v9}, Lcom/android/settings_ex/TetherSettings;->-set1(Lcom/android/settings_ex/TetherSettings;Z)Z

    .line 502
    iget-object v5, p0, Lcom/android/settings_ex/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings_ex/TetherSettings;

    invoke-static {v5}, Lcom/android/settings_ex/TetherSettings;->-wrap4(Lcom/android/settings_ex/TetherSettings;)V

    goto :goto_0

    .line 503
    :cond_4
    const-string/jumbo v5, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 504
    iget-object v5, p0, Lcom/android/settings_ex/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings_ex/TetherSettings;

    const-string/jumbo v6, "connected"

    invoke-virtual {p2, v6, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    invoke-static {v5, v6}, Lcom/android/settings_ex/TetherSettings;->-set3(Lcom/android/settings_ex/TetherSettings;Z)Z

    .line 505
    iget-object v5, p0, Lcom/android/settings_ex/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings_ex/TetherSettings;

    invoke-static {v5}, Lcom/android/settings_ex/TetherSettings;->-wrap4(Lcom/android/settings_ex/TetherSettings;)V

    goto/16 :goto_0

    .line 506
    :cond_5
    const-string/jumbo v5, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 507
    iget-object v5, p0, Lcom/android/settings_ex/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings_ex/TetherSettings;

    invoke-static {v5}, Lcom/android/settings_ex/TetherSettings;->-get1(Lcom/android/settings_ex/TetherSettings;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 509
    const-string/jumbo v5, "android.bluetooth.adapter.extra.STATE"

    const/high16 v6, -0x80000000

    .line 508
    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 524
    :cond_6
    :goto_1
    iget-object v5, p0, Lcom/android/settings_ex/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings_ex/TetherSettings;

    invoke-static {v5}, Lcom/android/settings_ex/TetherSettings;->-wrap4(Lcom/android/settings_ex/TetherSettings;)V

    goto/16 :goto_0

    .line 511
    :sswitch_0
    iget-object v5, p0, Lcom/android/settings_ex/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings_ex/TetherSettings;

    const/4 v6, 0x2

    invoke-static {v5, v6}, Lcom/android/settings_ex/TetherSettings;->-wrap2(Lcom/android/settings_ex/TetherSettings;I)V

    .line 512
    iget-object v5, p0, Lcom/android/settings_ex/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings_ex/TetherSettings;

    invoke-static {v5, v9}, Lcom/android/settings_ex/TetherSettings;->-set0(Lcom/android/settings_ex/TetherSettings;Z)Z

    goto :goto_1

    .line 517
    :sswitch_1
    iget-object v5, p0, Lcom/android/settings_ex/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings_ex/TetherSettings;

    invoke-static {v5, v9}, Lcom/android/settings_ex/TetherSettings;->-set0(Lcom/android/settings_ex/TetherSettings;Z)Z

    goto :goto_1

    .line 508
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_0
    .end sparse-switch
.end method
