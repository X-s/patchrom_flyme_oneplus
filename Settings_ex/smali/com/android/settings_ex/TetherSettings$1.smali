.class Lcom/android/settings_ex/TetherSettings$1;
.super Landroid/os/Handler;
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
.method constructor <init>(Lcom/android/settings_ex/TetherSettings;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/settings_ex/TetherSettings$1;->this$0:Lcom/android/settings_ex/TetherSettings;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 136
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 137
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 154
    :goto_0
    return-void

    .line 140
    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings$1;->this$0:Lcom/android/settings_ex/TetherSettings;

    # getter for: Lcom/android/settings_ex/TetherSettings;->mEnableWifiAp:Landroid/preference/SwitchPreference;
    invoke-static {v0}, Lcom/android/settings_ex/TetherSettings;->access$000(Lcom/android/settings_ex/TetherSettings;)Landroid/preference/SwitchPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 141
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings$1;->this$0:Lcom/android/settings_ex/TetherSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_exlib/TetherUtil;->isProvisioningNeeded(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings$1;->this$0:Lcom/android/settings_ex/TetherSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings_ex/TetherService;->cancelRecheckAlarmIfNecessary(Landroid/content/Context;I)V

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings$1;->this$0:Lcom/android/settings_ex/TetherSettings;

    # getter for: Lcom/android/settings_ex/TetherSettings;->mWifiApEnabler:Lcom/android/settings_ex/wifi/WifiApEnabler;
    invoke-static {v0}, Lcom/android/settings_ex/TetherSettings;->access$100(Lcom/android/settings_ex/TetherSettings;)Lcom/android/settings_ex/wifi/WifiApEnabler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/wifi/WifiApEnabler;->setSoftapEnabled(Z)V

    .line 145
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings$1;->this$0:Lcom/android/settings_ex/TetherSettings;

    # getter for: Lcom/android/settings_ex/TetherSettings;->mConnectedDeviceManagerPreference:Lcom/oneplus/widget/preference/OPPreference;
    invoke-static {v0}, Lcom/android/settings_ex/TetherSettings;->access$200(Lcom/android/settings_ex/TetherSettings;)Lcom/oneplus/widget/preference/OPPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/widget/preference/OPPreference;->setEnabled(Z)V

    .line 146
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings$1;->this$0:Lcom/android/settings_ex/TetherSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings$1;->this$0:Lcom/android/settings_ex/TetherSettings;

    # getter for: Lcom/android/settings_ex/TetherSettings;->mConnectedDeviceManagerPreference:Lcom/oneplus/widget/preference/OPPreference;
    invoke-static {v1}, Lcom/android/settings_ex/TetherSettings;->access$200(Lcom/android/settings_ex/TetherSettings;)Lcom/oneplus/widget/preference/OPPreference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 147
    :catch_0
    move-exception v0

    goto :goto_0

    .line 137
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
