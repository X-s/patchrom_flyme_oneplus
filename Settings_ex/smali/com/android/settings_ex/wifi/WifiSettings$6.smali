.class Lcom/android/settings_ex/wifi/WifiSettings$6;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/wifi/WifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/WifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/WifiSettings;)V
    .locals 0

    .prologue
    .line 504
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiSettings$6;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 508
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 509
    .local v0, "val":Z
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings$6;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-virtual {v2}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "wifi"

    invoke-static {v2, v3}, Lcom/android/settings_exlib/WirelessUtils;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 512
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings$6;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-virtual {v2}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c04d5

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 515
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings$6;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mEnableWifi:Landroid/preference/SwitchPreference;
    invoke-static {v2}, Lcom/android/settings_ex/wifi/WifiSettings;->access$300(Lcom/android/settings_ex/wifi/WifiSettings;)Landroid/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 519
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings$6;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    iget-object v2, v2, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    .line 520
    .local v1, "wifiApState":I
    if-eqz v0, :cond_2

    const/16 v2, 0xc

    if-eq v1, v2, :cond_1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_2

    .line 522
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings$6;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    iget-object v2, v2, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 535
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings$6;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mWifiDisableRunnable:Lcom/android/settings_ex/wifi/WifiSettings$WifiDisableRunnable;
    invoke-static {v2}, Lcom/android/settings_ex/wifi/WifiSettings;->access$400(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/WifiSettings$WifiDisableRunnable;

    move-result-object v2

    if-nez v2, :cond_3

    .line 536
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings$6;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    new-instance v3, Lcom/android/settings_ex/wifi/WifiSettings$WifiDisableRunnable;

    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettings$6;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-direct {v3, v4}, Lcom/android/settings_ex/wifi/WifiSettings$WifiDisableRunnable;-><init>(Lcom/android/settings_ex/wifi/WifiSettings;)V

    # setter for: Lcom/android/settings_ex/wifi/WifiSettings;->mWifiDisableRunnable:Lcom/android/settings_ex/wifi/WifiSettings$WifiDisableRunnable;
    invoke-static {v2, v3}, Lcom/android/settings_ex/wifi/WifiSettings;->access$402(Lcom/android/settings_ex/wifi/WifiSettings;Lcom/android/settings_ex/wifi/WifiSettings$WifiDisableRunnable;)Lcom/android/settings_ex/wifi/WifiSettings$WifiDisableRunnable;

    .line 538
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings$6;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # setter for: Lcom/android/settings_ex/wifi/WifiSettings;->mToggleByClick:Z
    invoke-static {v2, v6}, Lcom/android/settings_ex/wifi/WifiSettings;->access$502(Lcom/android/settings_ex/wifi/WifiSettings;Z)Z

    .line 539
    if-eqz v0, :cond_7

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings$6;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    iget-object v2, v2, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings$6;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    iget-object v2, v2, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings$6;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    iget-object v2, v2, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    if-eq v2, v7, :cond_7

    .line 541
    :cond_4
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings$6;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # setter for: Lcom/android/settings_ex/wifi/WifiSettings;->mTurnOn:Z
    invoke-static {v2, v6}, Lcom/android/settings_ex/wifi/WifiSettings;->access$602(Lcom/android/settings_ex/wifi/WifiSettings;Z)Z

    .line 542
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings$6;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/settings_ex/wifi/WifiSettings;->access$700(Lcom/android/settings_ex/wifi/WifiSettings;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings$6;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mWifiDisableRunnable:Lcom/android/settings_ex/wifi/WifiSettings$WifiDisableRunnable;
    invoke-static {v3}, Lcom/android/settings_ex/wifi/WifiSettings;->access$400(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/WifiSettings$WifiDisableRunnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 545
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings$6;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    iget-object v2, v2, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    if-ne v2, v7, :cond_6

    .line 546
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings$6;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mEnableWifi:Landroid/preference/SwitchPreference;
    invoke-static {v2}, Lcom/android/settings_ex/wifi/WifiSettings;->access$300(Lcom/android/settings_ex/wifi/WifiSettings;)Landroid/preference/SwitchPreference;

    move-result-object v2

    const v3, 0x7f0c0144

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 551
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings$6;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    iget-object v2, v2, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings$6;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    iget-object v2, v2, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v2

    if-nez v2, :cond_5

    .line 553
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings$6;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mEnableWifi:Landroid/preference/SwitchPreference;
    invoke-static {v2}, Lcom/android/settings_ex/wifi/WifiSettings;->access$300(Lcom/android/settings_ex/wifi/WifiSettings;)Landroid/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 554
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings$6;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-virtual {v2}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c04d3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 567
    :cond_5
    :goto_1
    return v6

    .line 549
    :cond_6
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings$6;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mEnableWifi:Landroid/preference/SwitchPreference;
    invoke-static {v2}, Lcom/android/settings_ex/wifi/WifiSettings;->access$300(Lcom/android/settings_ex/wifi/WifiSettings;)Landroid/preference/SwitchPreference;

    move-result-object v2

    const v3, 0x7f0c04d1

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_0

    .line 557
    :cond_7
    if-nez v0, :cond_5

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings$6;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    iget-object v2, v2, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings$6;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    iget-object v2, v2, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings$6;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    iget-object v2, v2, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    if-eq v2, v6, :cond_5

    .line 559
    :cond_8
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings$6;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # setter for: Lcom/android/settings_ex/wifi/WifiSettings;->mTurnOn:Z
    invoke-static {v2, v5}, Lcom/android/settings_ex/wifi/WifiSettings;->access$602(Lcom/android/settings_ex/wifi/WifiSettings;Z)Z

    .line 560
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings$6;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/settings_ex/wifi/WifiSettings;->access$700(Lcom/android/settings_ex/wifi/WifiSettings;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings$6;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mWifiDisableRunnable:Lcom/android/settings_ex/wifi/WifiSettings$WifiDisableRunnable;
    invoke-static {v3}, Lcom/android/settings_ex/wifi/WifiSettings;->access$400(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/WifiSettings$WifiDisableRunnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 561
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings$6;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mWifiDisableRunnable:Lcom/android/settings_ex/wifi/WifiSettings$WifiDisableRunnable;
    invoke-static {v2}, Lcom/android/settings_ex/wifi/WifiSettings;->access$400(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/WifiSettings$WifiDisableRunnable;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/settings_ex/wifi/WifiSettings$WifiDisableRunnable;->setValue(Z)V

    .line 562
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings$6;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/settings_ex/wifi/WifiSettings;->access$700(Lcom/android/settings_ex/wifi/WifiSettings;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings$6;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mWifiDisableRunnable:Lcom/android/settings_ex/wifi/WifiSettings$WifiDisableRunnable;
    invoke-static {v3}, Lcom/android/settings_ex/wifi/WifiSettings;->access$400(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/WifiSettings$WifiDisableRunnable;

    move-result-object v3

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method
