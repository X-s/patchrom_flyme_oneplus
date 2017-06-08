.class public Lcom/android/settings_ex/WifiCallingSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "WifiCallingSettings.java"

# interfaces
.implements Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final BUTTON_WFC_MODE:Ljava/lang/String; = "wifi_calling_mode"

.field private static final TAG:Ljava/lang/String; = "WifiCallingSettings"


# instance fields
.field private mButtonWfcMode:Landroid/preference/ListPreference;

.field private mEmptyView:Landroid/widget/TextView;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

.field private mValidListener:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/WifiCallingSettings;->mValidListener:Z

    .line 62
    new-instance v0, Lcom/android/settings_ex/WifiCallingSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/WifiCallingSettings$1;-><init>(Lcom/android/settings_ex/WifiCallingSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/WifiCallingSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 127
    new-instance v0, Lcom/android/settings_ex/WifiCallingSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/WifiCallingSettings$2;-><init>(Lcom/android/settings_ex/WifiCallingSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/WifiCallingSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/WifiCallingSettings;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/WifiCallingSettings;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings_ex/WifiCallingSettings;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/WifiCallingSettings;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/WifiCallingSettings;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/settings_ex/WifiCallingSettings;->showAlert(Landroid/content/Intent;)V

    return-void
.end method

.method static getWfcModeSummary(Landroid/content/Context;I)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wfcMode"    # I

    .prologue
    .line 269
    const v0, 0x10400dd

    .line 270
    .local v0, "resId":I
    invoke-static {p0}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 271
    packed-switch p1, :pswitch_data_0

    .line 282
    const-string v1, "WifiCallingSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected WFC mode value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_0
    :goto_0
    return v0

    .line 273
    :pswitch_0
    const v0, 0x10400e0

    .line 274
    goto :goto_0

    .line 276
    :pswitch_1
    const v0, 0x10400df

    .line 277
    goto :goto_0

    .line 279
    :pswitch_2
    const v0, 0x10400de

    .line 280
    goto :goto_0

    .line 271
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private isWfcModeSupported()Z
    .locals 2

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/android/settings_ex/WifiCallingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private showAlert(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/android/settings_ex/WifiCallingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 113
    .local v1, "context":Landroid/content/Context;
    const-string v5, "alertTitle"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 114
    .local v4, "title":Ljava/lang/CharSequence;
    const-string v5, "alertMessage"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 116
    .local v3, "message":Ljava/lang/CharSequence;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 117
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x1080027

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x104000a

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 121
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 122
    .local v2, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 123
    return-void
.end method

.method private updateButtonWfcMode(Landroid/content/Context;ZI)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wfcEnabled"    # Z
    .param p3, "wfcMode"    # I

    .prologue
    .line 240
    iget-object v1, p0, Lcom/android/settings_ex/WifiCallingSettings;->mButtonWfcMode:Landroid/preference/ListPreference;

    invoke-static {p1, p3}, Lcom/android/settings_ex/WifiCallingSettings;->getWfcModeSummary(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 242
    iget-object v1, p0, Lcom/android/settings_ex/WifiCallingSettings;->mButtonWfcMode:Landroid/preference/ListPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 244
    invoke-virtual {p0}, Lcom/android/settings_ex/WifiCallingSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 245
    .local v0, "preferenceScreen":Landroid/preference/PreferenceScreen;
    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/android/settings_ex/WifiCallingSettings;->isWfcModeSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 246
    iget-object v1, p0, Lcom/android/settings_ex/WifiCallingSettings;->mButtonWfcMode:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 250
    :goto_0
    return-void

    .line 248
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/WifiCallingSettings;->mButtonWfcMode:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 150
    const/16 v0, 0x69

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 93
    invoke-virtual {p0}, Lcom/android/settings_ex/WifiCallingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    .line 95
    .local v0, "activity":Lcom/android/settings_ex/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/settings_ex/SettingsActivity;->getSwitchBar()Lcom/android/settings_ex/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/WifiCallingSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    .line 96
    iget-object v1, p0, Lcom/android/settings_ex/WifiCallingSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings_ex/widget/SwitchBar;->getSwitch()Lcom/android/settings_ex/widget/ToggleSwitch;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/WifiCallingSettings;->mSwitch:Landroid/widget/Switch;

    .line 97
    iget-object v1, p0, Lcom/android/settings_ex/WifiCallingSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings_ex/widget/SwitchBar;->show()V

    .line 99
    invoke-virtual {p0}, Lcom/android/settings_ex/WifiCallingSettings;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020004

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings_ex/WifiCallingSettings;->mEmptyView:Landroid/widget/TextView;

    .line 100
    invoke-virtual {p0}, Lcom/android/settings_ex/WifiCallingSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/WifiCallingSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 101
    iget-object v1, p0, Lcom/android/settings_ex/WifiCallingSettings;->mEmptyView:Landroid/widget/TextView;

    const v2, 0x7f0c0579

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 102
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 155
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 157
    const v0, 0x7f080070

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/WifiCallingSettings;->addPreferencesFromResource(I)V

    .line 159
    const-string v0, "wifi_calling_mode"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/WifiCallingSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings_ex/WifiCallingSettings;->mButtonWfcMode:Landroid/preference/ListPreference;

    .line 160
    iget-object v0, p0, Lcom/android/settings_ex/WifiCallingSettings;->mButtonWfcMode:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 162
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/WifiCallingSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 163
    iget-object v0, p0, Lcom/android/settings_ex/WifiCallingSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.android.ims.REGISTRATION_ERROR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 106
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDestroyView()V

    .line 107
    iget-object v0, p0, Lcom/android/settings_ex/WifiCallingSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/SwitchBar;->hide()V

    .line 108
    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 205
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 207
    invoke-virtual {p0}, Lcom/android/settings_ex/WifiCallingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 209
    .local v0, "context":Landroid/content/Context;
    iget-boolean v2, p0, Lcom/android/settings_ex/WifiCallingSettings;->mValidListener:Z

    if-eqz v2, :cond_0

    .line 210
    iput-boolean v3, p0, Lcom/android/settings_ex/WifiCallingSettings;->mValidListener:Z

    .line 212
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/WifiCallingSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 213
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    iget-object v2, p0, Lcom/android/settings_ex/WifiCallingSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 215
    iget-object v2, p0, Lcom/android/settings_ex/WifiCallingSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v2, p0}, Lcom/android/settings_ex/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 218
    .end local v1    # "tm":Landroid/telephony/TelephonyManager;
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/WifiCallingSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 219
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/android/settings_ex/WifiCallingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 255
    .local v1, "context":Landroid/content/Context;
    iget-object v3, p0, Lcom/android/settings_ex/WifiCallingSettings;->mButtonWfcMode:Landroid/preference/ListPreference;

    if-ne p1, v3, :cond_0

    .line 256
    iget-object v4, p0, Lcom/android/settings_ex/WifiCallingSettings;->mButtonWfcMode:Landroid/preference/ListPreference;

    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 257
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 258
    .local v0, "buttonMode":I
    invoke-static {v1}, Lcom/android/ims/ImsManager;->getWfcMode(Landroid/content/Context;)I

    move-result v2

    .line 259
    .local v2, "currentMode":I
    if-eq v0, v2, :cond_0

    .line 260
    invoke-static {v1, v0}, Lcom/android/ims/ImsManager;->setWfcMode(Landroid/content/Context;I)V

    .line 261
    iget-object v3, p0, Lcom/android/settings_ex/WifiCallingSettings;->mButtonWfcMode:Landroid/preference/ListPreference;

    invoke-static {v1, v0}, Lcom/android/settings_ex/WifiCallingSettings;->getWfcModeSummary(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 262
    invoke-virtual {p0}, Lcom/android/settings_ex/WifiCallingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings_ex/WifiCallingSettings;->getMetricsCategory()I

    move-result v4

    invoke-static {v3, v4, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 265
    .end local v0    # "buttonMode":I
    .end local v2    # "currentMode":I
    :cond_0
    const/4 v3, 0x1

    return v3
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 168
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 170
    invoke-virtual {p0}, Lcom/android/settings_ex/WifiCallingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 172
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 173
    const-string v6, "phone"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/WifiCallingSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 174
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    iget-object v6, p0, Lcom/android/settings_ex/WifiCallingSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v7, 0x20

    invoke-virtual {v2, v6, v7}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 176
    iget-object v6, p0, Lcom/android/settings_ex/WifiCallingSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v6, p0}, Lcom/android/settings_ex/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 178
    iput-boolean v3, p0, Lcom/android/settings_ex/WifiCallingSettings;->mValidListener:Z

    .line 181
    .end local v2    # "tm":Landroid/telephony/TelephonyManager;
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/WifiCallingSettings;->isWfcModeSupported()Z

    move-result v6

    if-nez v6, :cond_1

    .line 182
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "wfc_ims_mode"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 188
    :cond_1
    invoke-static {v0}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v0}, Lcom/android/ims/ImsManager;->isNonTtyOrTtyOnVolteEnabled(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 190
    .local v3, "wfcEnabled":Z
    :goto_0
    iget-object v6, p0, Lcom/android/settings_ex/WifiCallingSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v6, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 191
    invoke-static {v0}, Lcom/android/ims/ImsManager;->getWfcMode(Landroid/content/Context;)I

    move-result v4

    .line 192
    .local v4, "wfcMode":I
    iget-object v6, p0, Lcom/android/settings_ex/WifiCallingSettings;->mButtonWfcMode:Landroid/preference/ListPreference;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 193
    invoke-direct {p0, v0, v3, v4}, Lcom/android/settings_ex/WifiCallingSettings;->updateButtonWfcMode(Landroid/content/Context;ZI)V

    .line 195
    iget-object v6, p0, Lcom/android/settings_ex/WifiCallingSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v7, p0, Lcom/android/settings_ex/WifiCallingSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 197
    invoke-virtual {p0}, Lcom/android/settings_ex/WifiCallingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 198
    .local v1, "intent":Landroid/content/Intent;
    const-string v6, "alertShow"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 199
    invoke-direct {p0, v1}, Lcom/android/settings_ex/WifiCallingSettings;->showAlert(Landroid/content/Intent;)V

    .line 201
    :cond_2
    return-void

    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "wfcEnabled":Z
    .end local v4    # "wfcMode":I
    :cond_3
    move v3, v5

    .line 188
    goto :goto_0
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 5
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/android/settings_ex/WifiCallingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 228
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0, p2}, Lcom/android/ims/ImsManager;->setWfcSetting(Landroid/content/Context;Z)V

    .line 230
    invoke-static {v0}, Lcom/android/ims/ImsManager;->getWfcMode(Landroid/content/Context;)I

    move-result v1

    .line 231
    .local v1, "wfcMode":I
    invoke-direct {p0, v0, p2, v1}, Lcom/android/settings_ex/WifiCallingSettings;->updateButtonWfcMode(Landroid/content/Context;ZI)V

    .line 232
    if-eqz p2, :cond_0

    .line 233
    invoke-virtual {p0}, Lcom/android/settings_ex/WifiCallingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings_ex/WifiCallingSettings;->getMetricsCategory()I

    move-result v3

    invoke-static {v2, v3, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 237
    :goto_0
    return-void

    .line 235
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/WifiCallingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings_ex/WifiCallingSettings;->getMetricsCategory()I

    move-result v3

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    goto :goto_0
.end method
