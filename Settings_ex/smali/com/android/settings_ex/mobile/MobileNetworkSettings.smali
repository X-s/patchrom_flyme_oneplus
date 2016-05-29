.class public Lcom/android/settings_ex/mobile/MobileNetworkSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "MobileNetworkSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings_ex/search/Indexable;


# static fields
.field private static final MOBILE_NETWORK_DATA_ENABLE_KEY:Ljava/lang/String; = "mobile_network_data_enable"

.field private static final MOBILE_NETWORK_SETTINGS_KEY:Ljava/lang/String; = "mobile_network_settings"

.field private static final TAB_SIM:Ljava/lang/String; = "SIM"

.field private static final TAG:Ljava/lang/String; = "MobileNetworkSettings"

.field private static final TETHER_SETTINGS_KEY:Ljava/lang/String; = "tether_settings"


# instance fields
.field private mDataEnabled:Landroid/preference/SwitchPreference;

.field private mHotspotPreference:Landroid/preference/PreferenceScreen;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private root:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private isSIMExist()Z
    .locals 4

    .prologue
    .line 219
    const/4 v0, 0x0

    .line 221
    .local v0, "isExist":Z
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 224
    :goto_0
    const-string v1, "MobileNetworkSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isExist : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    return v0

    .line 221
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private multiSimGetCurrentSub()I
    .locals 2

    .prologue
    .line 209
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 214
    .end local v0    # "i":I
    :goto_0
    return v0

    .restart local v0    # "i":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setMobileDataEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/settings_ex/mobile/MobileNetworkSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 203
    return-void
.end method

.method private updateUIView()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 145
    invoke-direct {p0}, Lcom/android/settings_ex/mobile/MobileNetworkSettings;->isSIMExist()Z

    move-result v2

    if-nez v2, :cond_0

    .line 147
    iget-object v2, p0, Lcom/android/settings_ex/mobile/MobileNetworkSettings;->root:Landroid/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/android/settings_ex/mobile/MobileNetworkSettings;->mDataEnabled:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 168
    :goto_0
    const-string v2, "mobile_network_settings"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/mobile/MobileNetworkSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings_ex/mobile/MobileNetworkSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/mobile/MobileNetworkSettings;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    :goto_1
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 170
    return-void

    .line 151
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/mobile/MobileNetworkSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 153
    const-string v2, "MobileNetworkSettings"

    const-string v3, "under data transfer ."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v2, p0, Lcom/android/settings_ex/mobile/MobileNetworkSettings;->mDataEnabled:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 163
    :goto_2
    iget-object v2, p0, Lcom/android/settings_ex/mobile/MobileNetworkSettings;->mDataEnabled:Landroid/preference/SwitchPreference;

    iget-object v3, p0, Lcom/android/settings_ex/mobile/MobileNetworkSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    .line 158
    :cond_1
    const-string v2, "MobileNetworkSettings"

    const-string v3, "below data transfer ."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v2, p0, Lcom/android/settings_ex/mobile/MobileNetworkSettings;->mDataEnabled:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_2

    :cond_2
    move v0, v1

    .line 168
    goto :goto_1
.end method


# virtual methods
.method public isAirplaneModeOn(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 123
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 240
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 103
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 105
    const v0, 0x7f06002f

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/mobile/MobileNetworkSettings;->addPreferencesFromResource(I)V

    .line 107
    invoke-virtual {p0}, Lcom/android/settings_ex/mobile/MobileNetworkSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/mobile/MobileNetworkSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 109
    invoke-virtual {p0}, Lcom/android/settings_ex/mobile/MobileNetworkSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/mobile/MobileNetworkSettings;->root:Landroid/preference/PreferenceScreen;

    .line 111
    const-string v0, "mobile_network_data_enable"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/mobile/MobileNetworkSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings_ex/mobile/MobileNetworkSettings;->mDataEnabled:Landroid/preference/SwitchPreference;

    .line 112
    iget-object v0, p0, Lcom/android/settings_ex/mobile/MobileNetworkSettings;->mDataEnabled:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 120
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 131
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 234
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "arg0"    # Landroid/preference/Preference;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 88
    iget-object v0, p0, Lcom/android/settings_ex/mobile/MobileNetworkSettings;->mDataEnabled:Landroid/preference/SwitchPreference;

    if-ne p1, v0, :cond_2

    .line 90
    iget-object v0, p0, Lcom/android/settings_ex/mobile/MobileNetworkSettings;->mDataEnabled:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings_ex/mobile/MobileNetworkSettings;->setMobileDataEnabled(Z)V

    .line 92
    const-string v0, "MobileNetworkSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mDataEnabled : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/mobile/MobileNetworkSettings;->mDataEnabled:Landroid/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v1

    :cond_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :goto_1
    return v1

    :cond_1
    move v0, v2

    .line 90
    goto :goto_0

    :cond_2
    move v1, v2

    .line 97
    goto :goto_1
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 137
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 139
    invoke-direct {p0}, Lcom/android/settings_ex/mobile/MobileNetworkSettings;->updateUIView()V

    .line 141
    return-void
.end method
