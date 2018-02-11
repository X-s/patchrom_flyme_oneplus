.class public Lcom/oneplus/settings/others/OPOthersSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "OPOthersSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings_ex/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/others/OPOthersSettings$1;
    }
.end annotation


# static fields
.field private static final ANTI_MISOPERATION_SCREEN_TOUCH:Ljava/lang/String; = "anti_misoperation_of_the_screen_touch_enable"

.field private static final KEY_OP_BLUETOOTH_AUDIO_CODEC:Ljava/lang/String; = "op_bluetooth_audio_codec"

.field private static final KEY_OP_MULTITASKING_CLEAN_WAY:Ljava/lang/String; = "op_multitasking_clean_way"

.field private static final KEY_OTG_READ_ENABLE:Ljava/lang/String; = "otg_read_enable"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/BaseSearchIndexProvider;

.field private static final TAG:Ljava/lang/String; = "OPOthersSettings"

.field private static final TIMER_SHUTDOWN_STARTUP_KEY:Ljava/lang/String; = "timer_shutdown_startup_settings"

.field private static final USER_ENJOY_PLAY_KEY:Ljava/lang/String; = "user_enjoy_plan"

.field private static isSupportAptxHdSupport:Z


# instance fields
.field private mAntiMisOperationTouch:Landroid/support/v14/preference/SwitchPreference;

.field private mBluetoothAudioCodec:Landroid/support/v7/preference/ListPreference;

.field private mContext:Landroid/content/Context;

.field private mOPMultitaskingCleanWayPreference:Landroid/support/v7/preference/Preference;

.field private mOTGReadEnableSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

.field private mTimerShutdownPreference:Landroid/support/v7/preference/Preference;

.field private mUserPlanPreference:Landroid/support/v14/preference/SwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 182
    new-instance v0, Lcom/oneplus/settings/others/OPOthersSettings$1;

    invoke-direct {v0}, Lcom/oneplus/settings/others/OPOthersSettings$1;-><init>()V

    sput-object v0, Lcom/oneplus/settings/others/OPOthersSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/BaseSearchIndexProvider;

    .line 47
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private updateView()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 89
    const-string/jumbo v2, "anti_misoperation_of_the_screen_touch_enable"

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/others/OPOthersSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v14/preference/SwitchPreference;

    iput-object v2, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mAntiMisOperationTouch:Landroid/support/v14/preference/SwitchPreference;

    .line 90
    iget-object v2, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mAntiMisOperationTouch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 91
    iget-object v5, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mAntiMisOperationTouch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPOthersSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 92
    const-string/jumbo v6, "oem_acc_anti_misoperation_screen"

    .line 91
    invoke-static {v2, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 94
    const-string/jumbo v2, "user_enjoy_plan"

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/others/OPOthersSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v14/preference/SwitchPreference;

    iput-object v2, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mUserPlanPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 95
    iget-object v2, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mUserPlanPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 96
    const-string/jumbo v2, "timer_shutdown_startup_settings"

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/others/OPOthersSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mTimerShutdownPreference:Landroid/support/v7/preference/Preference;

    .line 97
    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPOthersSettings;->checkIfNeedPasswordToPowerOn()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 98
    iget-object v2, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mTimerShutdownPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 99
    iget-object v2, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mTimerShutdownPreference:Landroid/support/v7/preference/Preference;

    const v5, 0x7f0e030b

    invoke-virtual {v2, v5}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 103
    :goto_1
    const-string/jumbo v2, "op_multitasking_clean_way"

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/others/OPOthersSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mOPMultitaskingCleanWayPreference:Landroid/support/v7/preference/Preference;

    .line 104
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPOthersSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    iget-object v5, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mTimerShutdownPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v2, v5}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 106
    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPOthersSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    iget-object v5, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mAntiMisOperationTouch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v5}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 107
    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPOthersSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    iget-object v5, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mUserPlanPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v5}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 108
    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPOthersSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    iget-object v5, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mOPMultitaskingCleanWayPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v2, v5}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 111
    :cond_0
    const-string/jumbo v2, "otg_read_enable"

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/others/OPOthersSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v14/preference/SwitchPreference;

    iput-object v2, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mOTGReadEnableSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 112
    iget-object v2, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mOTGReadEnableSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 113
    const-string/jumbo v2, "persist.sys.oem.otg_support"

    const-string/jumbo v5, "false"

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "isOTGEnable":Ljava/lang/String;
    const-string/jumbo v2, "true"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 115
    iget-object v2, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mOTGReadEnableSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v4}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 119
    :goto_2
    iget-object v2, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v3, "oem.otg.switch.support"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    .line 120
    .local v1, "isOTGSwitchSupport":Z
    if-nez v1, :cond_1

    .line 121
    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPOthersSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mOTGReadEnableSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 123
    :cond_1
    const-string/jumbo v2, "op_bluetooth_audio_codec"

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/others/OPOthersSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/ListPreference;

    iput-object v2, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mBluetoothAudioCodec:Landroid/support/v7/preference/ListPreference;

    .line 124
    iget-object v2, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mBluetoothAudioCodec:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 125
    sget-object v2, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v3, "oem.aptx.hd.support"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/oneplus/settings/others/OPOthersSettings;->isSupportAptxHdSupport:Z

    .line 126
    sget-boolean v2, Lcom/oneplus/settings/others/OPOthersSettings;->isSupportAptxHdSupport:Z

    if-eqz v2, :cond_2

    .line 127
    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPOthersSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mBluetoothAudioCodec:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 88
    :cond_2
    return-void

    .end local v0    # "isOTGEnable":Ljava/lang/String;
    .end local v1    # "isOTGSwitchSupport":Z
    :cond_3
    move v2, v4

    .line 92
    goto/16 :goto_0

    .line 101
    :cond_4
    iget-object v2, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mTimerShutdownPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v2, v4}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_1

    .line 117
    .restart local v0    # "isOTGEnable":Ljava/lang/String;
    :cond_5
    iget-object v2, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mOTGReadEnableSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_2
.end method


# virtual methods
.method public checkIfNeedPasswordToPowerOn()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 178
    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPOthersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "require_password_to_decrypt"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 174
    const/16 v0, 0x270f

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const v0, 0x7f080052

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/others/OPOthersSettings;->addPreferencesFromResource(I)V

    .line 71
    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPOthersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mContext:Landroid/content/Context;

    .line 72
    invoke-direct {p0}, Lcom/oneplus/settings/others/OPOthersSettings;->updateView()V

    .line 68
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 152
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "anti_misoperation_of_the_screen_touch_enable"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 153
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 154
    .local v0, "enable":Z
    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPOthersSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 155
    const-string/jumbo v6, "oem_acc_anti_misoperation_screen"

    if-eqz v0, :cond_0

    move v3, v4

    .line 154
    :cond_0
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 156
    return v4

    .line 157
    .end local v0    # "enable":Z
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "otg_read_enable"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 158
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 159
    .restart local v0    # "enable":Z
    const-string/jumbo v5, "persist.sys.oem.otg_support"

    if-eqz v0, :cond_2

    const-string/jumbo v3, "true"

    :goto_0
    invoke-static {v5, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    return v4

    .line 159
    :cond_2
    const-string/jumbo v3, "false"

    goto :goto_0

    .line 161
    .end local v0    # "enable":Z
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_3
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "op_bluetooth_audio_codec"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 162
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 163
    .local v2, "value":I
    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPOthersSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v5, "bluetooth_aptx_hd"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 164
    iget-object v3, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mBluetoothAudioCodec:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v3}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 165
    .local v1, "entries":[Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mBluetoothAudioCodec:Landroid/support/v7/preference/ListPreference;

    aget-object v5, v1, v2

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 166
    return v4

    .line 168
    .end local v1    # "entries":[Ljava/lang/CharSequence;
    .end local v2    # "value":I
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_4
    return v3
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 7
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 133
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "user_enjoy_plan"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 134
    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPOthersSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "oem_join_user_plan_settings"

    .line 135
    iget-object v5, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mUserPlanPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v5}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-nez v5, :cond_0

    .line 134
    :goto_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 136
    iget-object v1, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mUserPlanPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 137
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 138
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "INTENT_START_ODM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPOthersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0, v6}, Landroid/app/Activity;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 145
    :goto_1
    return v2

    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    move v1, v2

    .line 135
    goto :goto_0

    .line 141
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 142
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string/jumbo v1, "INTENT_STOP_ODM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPOthersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0, v6}, Landroid/app/Activity;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_1

    .line 147
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    return v1
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 77
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 78
    iget-object v4, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mUserPlanPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPOthersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 79
    const-string/jumbo v6, "oem_join_user_plan_settings"

    .line 78
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_1

    :goto_0
    invoke-virtual {v4, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 80
    iget-object v2, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mBluetoothAudioCodec:Landroid/support/v7/preference/ListPreference;

    if-eqz v2, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPOthersSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "bluetooth_aptx_hd"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 82
    .local v1, "value":I
    iget-object v2, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mBluetoothAudioCodec:Landroid/support/v7/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 83
    iget-object v2, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mBluetoothAudioCodec:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v2}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 84
    .local v0, "entries":[Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mBluetoothAudioCodec:Landroid/support/v7/preference/ListPreference;

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 76
    .end local v0    # "entries":[Ljava/lang/CharSequence;
    .end local v1    # "value":I
    :cond_0
    return-void

    :cond_1
    move v2, v3

    .line 79
    goto :goto_0
.end method
