.class Lcom/android/settings_ex/WifiCallingSettings$1;
.super Landroid/telephony/PhoneStateListener;
.source "WifiCallingSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/WifiCallingSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/WifiCallingSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/WifiCallingSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/WifiCallingSettings;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/settings_ex/WifiCallingSettings$1;->this$0:Lcom/android/settings_ex/WifiCallingSettings;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 8
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 75
    iget-object v6, p0, Lcom/android/settings_ex/WifiCallingSettings$1;->this$0:Lcom/android/settings_ex/WifiCallingSettings;

    invoke-virtual {v6}, Lcom/android/settings_ex/WifiCallingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    .line 76
    .local v0, "activity":Lcom/android/settings_ex/SettingsActivity;
    invoke-static {v0}, Lcom/android/ims/ImsManager;->isNonTtyOrTtyOnVolteEnabled(Landroid/content/Context;)Z

    move-result v1

    .line 78
    .local v1, "isNonTtyOrTtyOnVolteEnabled":Z
    invoke-virtual {v0}, Lcom/android/settings_ex/SettingsActivity;->getSwitchBar()Lcom/android/settings_ex/widget/SwitchBar;

    move-result-object v4

    .line 79
    .local v4, "switchBar":Lcom/android/settings_ex/widget/SwitchBar;
    invoke-virtual {v4}, Lcom/android/settings_ex/widget/SwitchBar;->getSwitch()Lcom/android/settings_ex/widget/ToggleSwitch;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/settings_ex/widget/ToggleSwitch;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 80
    move v2, v1

    .line 82
    :goto_0
    if-nez p1, :cond_3

    .end local v1    # "isNonTtyOrTtyOnVolteEnabled":Z
    :goto_1
    invoke-virtual {v4, v1}, Lcom/android/settings_ex/widget/SwitchBar;->setEnabled(Z)V

    .line 85
    iget-object v6, p0, Lcom/android/settings_ex/WifiCallingSettings$1;->this$0:Lcom/android/settings_ex/WifiCallingSettings;

    invoke-virtual {v6}, Lcom/android/settings_ex/WifiCallingSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v6

    const-string/jumbo v7, "wifi_calling_mode"

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    .line 86
    .local v3, "pref":Landroid/support/v7/preference/Preference;
    if-eqz v3, :cond_1

    .line 87
    if-eqz v2, :cond_0

    .line 88
    if-nez p1, :cond_0

    const/4 v5, 0x1

    .line 87
    :cond_0
    invoke-virtual {v3, v5}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 74
    :cond_1
    return-void

    .line 79
    .end local v3    # "pref":Landroid/support/v7/preference/Preference;
    .restart local v1    # "isNonTtyOrTtyOnVolteEnabled":Z
    :cond_2
    const/4 v2, 0x0

    .local v2, "isWfcEnabled":Z
    goto :goto_0

    .end local v2    # "isWfcEnabled":Z
    :cond_3
    move v1, v5

    .line 82
    goto :goto_1
.end method
