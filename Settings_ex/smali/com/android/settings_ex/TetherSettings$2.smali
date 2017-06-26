.class Lcom/android/settings_ex/TetherSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "TetherSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/TetherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/TetherSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/TetherSettings;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/settings_ex/TetherSettings$2;->this$0:Lcom/android/settings_ex/TetherSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    .line 160
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "action":Ljava/lang/String;
    const-string v1, "codeaurora.net.conn.TETHER_CONNECT_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 162
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings$2;->this$0:Lcom/android/settings_ex/TetherSettings;

    # getter for: Lcom/android/settings_ex/TetherSettings;->mConnectedDeviceManagerPreference:Lcom/oneplus/widget/preference/OPPreference;
    invoke-static {v1}, Lcom/android/settings_ex/TetherSettings;->access$200(Lcom/android/settings_ex/TetherSettings;)Lcom/oneplus/widget/preference/OPPreference;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings$2;->this$0:Lcom/android/settings_ex/TetherSettings;

    # getter for: Lcom/android/settings_ex/TetherSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;
    invoke-static {v1}, Lcom/android/settings_ex/TetherSettings;->access$300(Lcom/android/settings_ex/TetherSettings;)Landroid/net/ConnectivityManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 163
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/settings_ex/TetherSettings$2$1;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/TetherSettings$2$1;-><init>(Lcom/android/settings_ex/TetherSettings$2;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    const-string v1, "com.android.server.WifiManager.action.SHUT_DOWN_HOTSPOT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 172
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings$2;->this$0:Lcom/android/settings_ex/TetherSettings;

    # getter for: Lcom/android/settings_ex/TetherSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings_ex/TetherSettings;->access$500(Lcom/android/settings_ex/TetherSettings;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 173
    :cond_2
    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings$2;->this$0:Lcom/android/settings_ex/TetherSettings;

    # getter for: Lcom/android/settings_ex/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/settings_ex/TetherSettings;->access$600(Lcom/android/settings_ex/TetherSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings$2;->this$0:Lcom/android/settings_ex/TetherSettings;

    # getter for: Lcom/android/settings_ex/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/settings_ex/TetherSettings;->access$600(Lcom/android/settings_ex/TetherSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    .line 175
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings$2;->this$0:Lcom/android/settings_ex/TetherSettings;

    # getter for: Lcom/android/settings_ex/TetherSettings;->mConnectedDeviceManagerPreference:Lcom/oneplus/widget/preference/OPPreference;
    invoke-static {v1}, Lcom/android/settings_ex/TetherSettings;->access$200(Lcom/android/settings_ex/TetherSettings;)Lcom/oneplus/widget/preference/OPPreference;

    move-result-object v1

    const v2, 0x7f0c027b

    invoke-virtual {v1, v2}, Lcom/oneplus/widget/preference/OPPreference;->setSummary(I)V

    .line 176
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings$2;->this$0:Lcom/android/settings_ex/TetherSettings;

    invoke-virtual {v1}, Lcom/android/settings_ex/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/TetherSettings$2;->this$0:Lcom/android/settings_ex/TetherSettings;

    # getter for: Lcom/android/settings_ex/TetherSettings;->mConnectedDeviceManagerPreference:Lcom/oneplus/widget/preference/OPPreference;
    invoke-static {v2}, Lcom/android/settings_ex/TetherSettings;->access$200(Lcom/android/settings_ex/TetherSettings;)Lcom/oneplus/widget/preference/OPPreference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 177
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings$2;->this$0:Lcom/android/settings_ex/TetherSettings;

    # getter for: Lcom/android/settings_ex/TetherSettings;->mConnectedDeviceManagerPreference:Lcom/oneplus/widget/preference/OPPreference;
    invoke-static {v1}, Lcom/android/settings_ex/TetherSettings;->access$200(Lcom/android/settings_ex/TetherSettings;)Lcom/oneplus/widget/preference/OPPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/oneplus/widget/preference/OPPreference;->setEnabled(Z)V

    goto :goto_0
.end method
