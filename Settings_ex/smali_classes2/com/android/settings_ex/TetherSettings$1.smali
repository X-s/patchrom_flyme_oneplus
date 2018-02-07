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
    .param p1, "this$0"    # Lcom/android/settings_ex/TetherSettings;
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/settings_ex/TetherSettings$1;->this$0:Lcom/android/settings_ex/TetherSettings;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 180
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 181
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 178
    :goto_0
    return-void

    .line 184
    :pswitch_0
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings$1;->this$0:Lcom/android/settings_ex/TetherSettings;

    invoke-static {v1}, Lcom/android/settings_ex/TetherSettings;->-get6(Lcom/android/settings_ex/TetherSettings;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 185
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings$1;->this$0:Lcom/android/settings_ex/TetherSettings;

    invoke-virtual {v1}, Lcom/android/settings_ex/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_exlib/TetherUtil;->isProvisioningNeeded(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings$1;->this$0:Lcom/android/settings_ex/TetherSettings;

    invoke-virtual {v1}, Lcom/android/settings_ex/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/settings_ex/TetherService;->cancelRecheckAlarmIfNecessary(Landroid/content/Context;I)V

    .line 188
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings$1;->this$0:Lcom/android/settings_ex/TetherSettings;

    invoke-static {v1}, Lcom/android/settings_ex/TetherSettings;->-get9(Lcom/android/settings_ex/TetherSettings;)Lcom/android/settings_ex/wifi/WifiApEnabler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/wifi/WifiApEnabler;->setSoftapEnabled(Z)V

    .line 189
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings$1;->this$0:Lcom/android/settings_ex/TetherSettings;

    invoke-static {v1}, Lcom/android/settings_ex/TetherSettings;->-get4(Lcom/android/settings_ex/TetherSettings;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 190
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings$1;->this$0:Lcom/android/settings_ex/TetherSettings;

    invoke-static {v1}, Lcom/android/settings_ex/TetherSettings;->-get0(Lcom/android/settings_ex/TetherSettings;)Landroid/support/v7/preference/PreferenceGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/TetherSettings$1;->this$0:Lcom/android/settings_ex/TetherSettings;

    invoke-static {v2}, Lcom/android/settings_ex/TetherSettings;->-get4(Lcom/android/settings_ex/TetherSettings;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 191
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/NullPointerException;
    goto :goto_0

    .line 181
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
