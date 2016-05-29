.class Lcom/android/settings_ex/wifi/WifiSettings$5$3;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/WifiSettings$5;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/wifi/WifiSettings$5;

.field final synthetic val$val:Z


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/WifiSettings$5;Z)V
    .locals 0

    .prologue
    .line 475
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiSettings$5$3;->this$1:Lcom/android/settings_ex/wifi/WifiSettings$5;

    iput-boolean p2, p0, Lcom/android/settings_ex/wifi/WifiSettings$5$3;->val$val:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 478
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings$5$3;->this$1:Lcom/android/settings_ex/wifi/WifiSettings$5;

    iget-object v1, v1, Lcom/android/settings_ex/wifi/WifiSettings$5;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # setter for: Lcom/android/settings_ex/wifi/WifiSettings;->isAlertMark:Z
    invoke-static {v1, v4}, Lcom/android/settings_ex/wifi/WifiSettings;->access$302(Lcom/android/settings_ex/wifi/WifiSettings;Z)Z

    .line 481
    iget-boolean v1, p0, Lcom/android/settings_ex/wifi/WifiSettings$5$3;->val$val:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings$5$3;->this$1:Lcom/android/settings_ex/wifi/WifiSettings$5;

    iget-object v1, v1, Lcom/android/settings_ex/wifi/WifiSettings$5;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "wifi"

    invoke-static {v1, v2}, Lcom/android/settings_ex/WirelessSettings;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 482
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings$5$3;->this$1:Lcom/android/settings_ex/wifi/WifiSettings$5;

    iget-object v1, v1, Lcom/android/settings_ex/wifi/WifiSettings$5;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f09034d

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 484
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings$5$3;->this$1:Lcom/android/settings_ex/wifi/WifiSettings$5;

    iget-object v1, v1, Lcom/android/settings_ex/wifi/WifiSettings$5;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mEnableWifi:Landroid/preference/SwitchPreference;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/WifiSettings;->access$100(Lcom/android/settings_ex/wifi/WifiSettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 488
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings$5$3;->this$1:Lcom/android/settings_ex/wifi/WifiSettings$5;

    iget-object v1, v1, Lcom/android/settings_ex/wifi/WifiSettings$5;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    iget-object v1, v1, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    .line 489
    .local v0, "wifiApState":I
    iget-boolean v1, p0, Lcom/android/settings_ex/wifi/WifiSettings$5$3;->val$val:Z

    if-eqz v1, :cond_2

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    .line 491
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings$5$3;->this$1:Lcom/android/settings_ex/wifi/WifiSettings$5;

    iget-object v1, v1, Lcom/android/settings_ex/wifi/WifiSettings$5;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    iget-object v1, v1, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 494
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings$5$3;->this$1:Lcom/android/settings_ex/wifi/WifiSettings$5;

    iget-object v1, v1, Lcom/android/settings_ex/wifi/WifiSettings$5;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    iget-object v1, v1, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-boolean v2, p0, Lcom/android/settings_ex/wifi/WifiSettings$5$3;->val$val:Z

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v1

    if-nez v1, :cond_3

    .line 496
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings$5$3;->this$1:Lcom/android/settings_ex/wifi/WifiSettings$5;

    iget-object v1, v1, Lcom/android/settings_ex/wifi/WifiSettings$5;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mEnableWifi:Landroid/preference/SwitchPreference;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/WifiSettings;->access$100(Lcom/android/settings_ex/wifi/WifiSettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 497
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings$5$3;->this$1:Lcom/android/settings_ex/wifi/WifiSettings$5;

    iget-object v1, v1, Lcom/android/settings_ex/wifi/WifiSettings$5;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f09034c

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 500
    :cond_3
    return-void
.end method
