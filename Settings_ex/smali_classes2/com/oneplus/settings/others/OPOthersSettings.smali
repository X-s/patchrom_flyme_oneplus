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
        Lcom/oneplus/settings/others/OPOthersSettings$1;,
        Lcom/oneplus/settings/others/OPOthersSettings$2;
    }
.end annotation


# static fields
.field private static final ACTION_OTG_AUTO_SHUTDOWN:Ljava/lang/String; = "oneplus.intent.action.otg_auto_shutdown"

.field private static final ANTI_MISOPERATION_SCREEN_TOUCH:Ljava/lang/String; = "anti_misoperation_of_the_screen_touch_enable"

.field private static final KEY_OP_BLUETOOTH_AUDIO_CODEC:Ljava/lang/String; = "op_bluetooth_audio_codec"

.field private static final KEY_OP_MULTITASKING_CLEAN_WAY:Ljava/lang/String; = "op_multitasking_clean_way"

.field private static final KEY_OTG_READ_ENABLE:Ljava/lang/String; = "otg_read_enable"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/BaseSearchIndexProvider;

.field private static final TAG:Ljava/lang/String; = "OPOthersSettings"

.field private static final TIMER_SHUTDOWN_STARTUP_KEY:Ljava/lang/String; = "timer_shutdown_startup_settings"

.field private static final USER_ENJOY_PLAY_KEY:Ljava/lang/String; = "user_enjoy_plan"

.field private static isOTGSwitchSupport:Z


# instance fields
.field private mAntiMisOperationTouch:Landroid/support/v14/preference/SwitchPreference;

.field private mBluetoothAudioCodec:Landroid/support/v7/preference/ListPreference;

.field private mContext:Landroid/content/Context;

.field private mOPMultitaskingCleanWayPreference:Landroid/support/v7/preference/Preference;

.field private mOTGContentObserver:Landroid/database/ContentObserver;

.field private mOTGReadEnableSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

.field private mTimerShutdownPreference:Landroid/support/v7/preference/Preference;

.field private mUserPlanPreference:Landroid/support/v14/preference/SwitchPreference;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/oneplus/settings/others/OPOthersSettings;->isOTGSwitchSupport:Z

    return v0
.end method

.method static synthetic -get1(Lcom/oneplus/settings/others/OPOthersSettings;)Landroid/support/v14/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mOTGReadEnableSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/oneplus/settings/others/OPOthersSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPOthersSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 205
    new-instance v0, Lcom/oneplus/settings/others/OPOthersSettings$2;

    invoke-direct {v0}, Lcom/oneplus/settings/others/OPOthersSettings$2;-><init>()V

    sput-object v0, Lcom/oneplus/settings/others/OPOthersSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/BaseSearchIndexProvider;

    .line 51
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 72
    new-instance v0, Lcom/oneplus/settings/others/OPOthersSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/others/OPOthersSettings$1;-><init>(Lcom/oneplus/settings/others/OPOthersSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mOTGContentObserver:Landroid/database/ContentObserver;

    .line 51
    return-void
.end method

.method private updateView()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 115
    const-string/jumbo v1, "anti_misoperation_of_the_screen_touch_enable"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/others/OPOthersSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    iput-object v1, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mAntiMisOperationTouch:Landroid/support/v14/preference/SwitchPreference;

    .line 116
    iget-object v1, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mAntiMisOperationTouch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 117
    iget-object v4, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mAntiMisOperationTouch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPOthersSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 118
    const-string/jumbo v5, "oem_acc_anti_misoperation_screen"

    .line 117
    invoke-static {v1, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 120
    const-string/jumbo v1, "user_enjoy_plan"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/others/OPOthersSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    iput-object v1, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mUserPlanPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 121
    iget-object v1, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mUserPlanPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 122
    const-string/jumbo v1, "timer_shutdown_startup_settings"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/others/OPOthersSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mTimerShutdownPreference:Landroid/support/v7/preference/Preference;

    .line 123
    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPOthersSettings;->checkIfNeedPasswordToPowerOn()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 124
    iget-object v1, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mTimerShutdownPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 125
    iget-object v1, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mTimerShutdownPreference:Landroid/support/v7/preference/Preference;

    const v4, 0x7f0e030b

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 129
    :goto_1
    const-string/jumbo v1, "op_multitasking_clean_way"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/others/OPOthersSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mOPMultitaskingCleanWayPreference:Landroid/support/v7/preference/Preference;

    .line 130
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPOthersSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    iget-object v4, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mTimerShutdownPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 132
    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPOthersSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    iget-object v4, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mAntiMisOperationTouch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 133
    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPOthersSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    iget-object v4, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mUserPlanPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 134
    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPOthersSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    iget-object v4, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mOPMultitaskingCleanWayPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 137
    :cond_0
    const-string/jumbo v1, "otg_read_enable"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/others/OPOthersSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    iput-object v1, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mOTGReadEnableSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 138
    iget-object v1, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mOTGReadEnableSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 139
    const-string/jumbo v1, "persist.sys.oem.otg_support"

    const-string/jumbo v4, "false"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "isOTGEnable":Ljava/lang/String;
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 141
    iget-object v1, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mOTGReadEnableSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 145
    :goto_2
    iget-object v1, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "oem.otg.switch.support"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/oneplus/settings/others/OPOthersSettings;->isOTGSwitchSupport:Z

    .line 146
    sget-boolean v1, Lcom/oneplus/settings/others/OPOthersSettings;->isOTGSwitchSupport:Z

    if-nez v1, :cond_1

    .line 147
    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPOthersSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mOTGReadEnableSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 149
    :cond_1
    const-string/jumbo v1, "op_bluetooth_audio_codec"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/others/OPOthersSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/ListPreference;

    iput-object v1, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mBluetoothAudioCodec:Landroid/support/v7/preference/ListPreference;

    .line 150
    iget-object v1, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mBluetoothAudioCodec:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 114
    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPOthersSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    iget-object v4, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mAntiMisOperationTouch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPOthersSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    iget-object v4, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mUserPlanPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPOthersSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    iget-object v4, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mOPMultitaskingCleanWayPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPOthersSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    iget-object v4, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mOTGReadEnableSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    return-void

    .end local v0    # "isOTGEnable":Ljava/lang/String;
    :cond_2
    move v1, v3

    .line 118
    goto/16 :goto_0

    .line 127
    :cond_3
    iget-object v1, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mTimerShutdownPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_1

    .line 143
    .restart local v0    # "isOTGEnable":Ljava/lang/String;
    :cond_4
    iget-object v1, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mOTGReadEnableSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_2
.end method


# virtual methods
.method public checkIfNeedPasswordToPowerOn()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 201
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
    .line 197
    const/16 v0, 0x270f

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 86
    const v0, 0x7f080050

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/others/OPOthersSettings;->addPreferencesFromResource(I)V

    .line 87
    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPOthersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mContext:Landroid/content/Context;

    .line 88
    invoke-direct {p0}, Lcom/oneplus/settings/others/OPOthersSettings;->updateView()V

    .line 89
    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPOthersSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 90
    const-string/jumbo v1, "oneplus_otg_auto_disable"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 91
    iget-object v2, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mOTGContentObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    const/4 v4, -0x1

    .line 89
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 84
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 110
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDestroy()V

    .line 111
    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPOthersSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mOTGContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 108
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 174
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "anti_misoperation_of_the_screen_touch_enable"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 175
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 176
    .local v0, "enable":Z
    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPOthersSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 177
    const-string/jumbo v6, "oem_acc_anti_misoperation_screen"

    if-eqz v0, :cond_0

    move v3, v4

    .line 176
    :cond_0
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 178
    return v4

    .line 179
    .end local v0    # "enable":Z
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "otg_read_enable"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 180
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 181
    .restart local v0    # "enable":Z
    const-string/jumbo v6, "persist.sys.oem.otg_support"

    if-eqz v0, :cond_3

    const-string/jumbo v5, "true"

    :goto_0
    invoke-static {v6, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPOthersSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "oneplus_otg_auto_disable"

    if-eqz v0, :cond_2

    move v3, v4

    :cond_2
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 183
    return v4

    .line 181
    :cond_3
    const-string/jumbo v5, "false"

    goto :goto_0

    .line 184
    .end local v0    # "enable":Z
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_4
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "op_bluetooth_audio_codec"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 185
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 186
    .local v2, "value":I
    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPOthersSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v5, "bluetooth_aptx_hd"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 187
    iget-object v3, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mBluetoothAudioCodec:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v3}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 188
    .local v1, "entries":[Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mBluetoothAudioCodec:Landroid/support/v7/preference/ListPreference;

    aget-object v5, v1, v2

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 189
    return v4

    .line 191
    .end local v1    # "entries":[Ljava/lang/CharSequence;
    .end local v2    # "value":I
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_5
    return v3
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 7
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 155
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "user_enjoy_plan"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 156
    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPOthersSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "oem_join_user_plan_settings"

    .line 157
    iget-object v5, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mUserPlanPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v5}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-nez v5, :cond_0

    .line 156
    :goto_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 158
    iget-object v1, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mUserPlanPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 159
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 160
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "INTENT_START_ODM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPOthersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0, v6}, Landroid/app/Activity;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 167
    :goto_1
    return v2

    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    move v1, v2

    .line 157
    goto :goto_0

    .line 163
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 164
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string/jumbo v1, "INTENT_STOP_ODM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPOthersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0, v6}, Landroid/app/Activity;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_1

    .line 169
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    return v1
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 96
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 97
    iget-object v4, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mUserPlanPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPOthersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 98
    const-string/jumbo v6, "oem_join_user_plan_settings"

    .line 97
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_1

    :goto_0
    invoke-virtual {v4, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 99
    iget-object v2, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mBluetoothAudioCodec:Landroid/support/v7/preference/ListPreference;

    if-eqz v2, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPOthersSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "bluetooth_aptx_hd"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 101
    .local v1, "value":I
    iget-object v2, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mBluetoothAudioCodec:Landroid/support/v7/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 102
    iget-object v2, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mBluetoothAudioCodec:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v2}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 103
    .local v0, "entries":[Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mBluetoothAudioCodec:Landroid/support/v7/preference/ListPreference;

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 95
    .end local v0    # "entries":[Ljava/lang/CharSequence;
    .end local v1    # "value":I
    :cond_0
    return-void

    :cond_1
    move v2, v3

    .line 98
    goto :goto_0
.end method
