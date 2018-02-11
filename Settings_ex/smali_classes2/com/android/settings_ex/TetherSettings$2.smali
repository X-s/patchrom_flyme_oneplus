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
    .param p1, "this$0"    # Lcom/android/settings_ex/TetherSettings;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/android/settings_ex/TetherSettings$2;->this$0:Lcom/android/settings_ex/TetherSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 204
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v3, "codeaurora.net.conn.TETHER_CONNECT_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 206
    iget-object v2, p0, Lcom/android/settings_ex/TetherSettings$2;->this$0:Lcom/android/settings_ex/TetherSettings;

    invoke-static {v2}, Lcom/android/settings_ex/TetherSettings;->-get4(Lcom/android/settings_ex/TetherSettings;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/TetherSettings$2;->this$0:Lcom/android/settings_ex/TetherSettings;

    invoke-static {v2}, Lcom/android/settings_ex/TetherSettings;->-get5(Lcom/android/settings_ex/TetherSettings;)Landroid/net/ConnectivityManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 207
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/android/settings_ex/TetherSettings$2$1;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/TetherSettings$2$1;-><init>(Lcom/android/settings_ex/TetherSettings$2;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    const-string/jumbo v3, "codeaurora.net.conn.TETHER_AUTO_SHUT_DOWN_SOFTAP"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 216
    iget-object v3, p0, Lcom/android/settings_ex/TetherSettings$2;->this$0:Lcom/android/settings_ex/TetherSettings;

    invoke-static {v3}, Lcom/android/settings_ex/TetherSettings;->-get3(Lcom/android/settings_ex/TetherSettings;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 217
    :cond_2
    const-string/jumbo v3, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 218
    iget-object v3, p0, Lcom/android/settings_ex/TetherSettings$2;->this$0:Lcom/android/settings_ex/TetherSettings;

    invoke-static {v3}, Lcom/android/settings_ex/TetherSettings;->-get11(Lcom/android/settings_ex/TetherSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/settings_ex/TetherSettings$2;->this$0:Lcom/android/settings_ex/TetherSettings;

    invoke-static {v3}, Lcom/android/settings_ex/TetherSettings;->-get11(Lcom/android/settings_ex/TetherSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_5

    .line 219
    iget-object v3, p0, Lcom/android/settings_ex/TetherSettings$2;->this$0:Lcom/android/settings_ex/TetherSettings;

    invoke-virtual {v3}, Lcom/android/settings_ex/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "hotspot_auto_shut_down"

    invoke-static {v3, v4, v1, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_3

    move v1, v2

    .line 220
    .local v1, "mHotspotAutoShutDownValue":Z
    :cond_3
    if-eqz v1, :cond_4

    .line 221
    iget-object v3, p0, Lcom/android/settings_ex/TetherSettings$2;->this$0:Lcom/android/settings_ex/TetherSettings;

    invoke-static {v3}, Lcom/android/settings_ex/TetherSettings;->-get4(Lcom/android/settings_ex/TetherSettings;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    const v4, 0x7f0e02e5

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 225
    :goto_1
    iget-object v3, p0, Lcom/android/settings_ex/TetherSettings$2;->this$0:Lcom/android/settings_ex/TetherSettings;

    invoke-static {v3}, Lcom/android/settings_ex/TetherSettings;->-get0(Lcom/android/settings_ex/TetherSettings;)Landroid/support/v7/preference/PreferenceGroup;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/TetherSettings$2;->this$0:Lcom/android/settings_ex/TetherSettings;

    invoke-static {v4}, Lcom/android/settings_ex/TetherSettings;->-get4(Lcom/android/settings_ex/TetherSettings;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 226
    iget-object v3, p0, Lcom/android/settings_ex/TetherSettings$2;->this$0:Lcom/android/settings_ex/TetherSettings;

    invoke-static {v3}, Lcom/android/settings_ex/TetherSettings;->-get4(Lcom/android/settings_ex/TetherSettings;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 223
    :cond_4
    iget-object v3, p0, Lcom/android/settings_ex/TetherSettings$2;->this$0:Lcom/android/settings_ex/TetherSettings;

    invoke-static {v3}, Lcom/android/settings_ex/TetherSettings;->-get4(Lcom/android/settings_ex/TetherSettings;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    const v4, 0x7f0e03d3

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 228
    .end local v1    # "mHotspotAutoShutDownValue":Z
    :cond_5
    iget-object v2, p0, Lcom/android/settings_ex/TetherSettings$2;->this$0:Lcom/android/settings_ex/TetherSettings;

    invoke-static {v2}, Lcom/android/settings_ex/TetherSettings;->-get4(Lcom/android/settings_ex/TetherSettings;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 229
    iget-object v2, p0, Lcom/android/settings_ex/TetherSettings$2;->this$0:Lcom/android/settings_ex/TetherSettings;

    invoke-static {v2}, Lcom/android/settings_ex/TetherSettings;->-get0(Lcom/android/settings_ex/TetherSettings;)Landroid/support/v7/preference/PreferenceGroup;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/TetherSettings$2;->this$0:Lcom/android/settings_ex/TetherSettings;

    invoke-static {v3}, Lcom/android/settings_ex/TetherSettings;->-get4(Lcom/android/settings_ex/TetherSettings;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_0
.end method
