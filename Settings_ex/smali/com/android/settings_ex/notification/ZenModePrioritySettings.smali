.class public Lcom/android/settings_ex/notification/ZenModePrioritySettings;
.super Lcom/android/settings_ex/notification/ZenModeSettingsBase;
.source "ZenModePrioritySettings.java"

# interfaces
.implements Lcom/android/settings_ex/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/notification/ZenModePrioritySettings$PrefSettingsObserver;
    }
.end annotation


# static fields
.field private static final KEY_CALLS:Ljava/lang/String; = "calls"

.field private static final KEY_EVENTS:Ljava/lang/String; = "events"

.field private static final KEY_FAVOURITE_CONTACTS:Ljava/lang/String; = "favourite_contacts_settings"

.field private static final KEY_LED_SWITCH:Ljava/lang/String; = "led_switch"

.field private static final KEY_MESSAGES:Ljava/lang/String; = "messages"

.field private static final KEY_REMINDERS:Ljava/lang/String; = "reminders"

.field private static final KEY_REPEAT_CALLERS:Ljava/lang/String; = "repeat_callers"

.field private static final KEY_SUSPEND_NOTIFICATION:Ljava/lang/String; = "suspend_notification"

.field private static final OEM_FAVORITES_PEOPLE:Ljava/lang/String; = "com.oneplus.contacts.action.FAVORITES_PEOPLE"

.field private static final PREFS:[Lcom/android/settings_ex/notification/SettingPref;

.field private static final PREF_LED_LIGHT_SETTING:Lcom/android/settings_ex/notification/SettingPref;

.field private static final PREF_SUSPEND_SETTING:Lcom/android/settings_ex/notification/SettingPref;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/BaseSearchIndexProvider;

.field private static final SOURCE_NONE:I = -0x1


# instance fields
.field private mCalls:Lcom/android/settings_ex/DropDownPreference;

.field private mDisableListeners:Z

.field private mEvents:Landroid/preference/SwitchPreference;

.field private mFavouritePreference:Landroid/preference/Preference;

.field private mLedSwitch:Landroid/preference/SwitchPreference;

.field private mMessages:Lcom/android/settings_ex/DropDownPreference;

.field private mNotifyLightEnable:I

.field private mPrefSettingsObserver:Lcom/android/settings_ex/notification/ZenModePrioritySettings$PrefSettingsObserver;

.field private mReminders:Landroid/preference/SwitchPreference;

.field private mRepeatCallers:Landroid/preference/SwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v1, 0x2

    const/4 v4, 0x0

    .line 72
    new-instance v0, Lcom/android/settings_ex/notification/SettingPref;

    const-string v2, "suspend_notification"

    const-string v3, "oem_allow_suspend_notification"

    new-array v5, v4, [I

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/notification/SettingPref;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->PREF_SUSPEND_SETTING:Lcom/android/settings_ex/notification/SettingPref;

    .line 75
    new-instance v0, Lcom/android/settings_ex/notification/SettingPref;

    const-string v2, "led_switch"

    const-string v3, "oem_allow_led_light"

    new-array v5, v4, [I

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/notification/SettingPref;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->PREF_LED_LIGHT_SETTING:Lcom/android/settings_ex/notification/SettingPref;

    .line 78
    new-array v0, v1, [Lcom/android/settings_ex/notification/SettingPref;

    sget-object v1, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->PREF_SUSPEND_SETTING:Lcom/android/settings_ex/notification/SettingPref;

    aput-object v1, v0, v4

    const/4 v1, 0x1

    sget-object v2, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->PREF_LED_LIGHT_SETTING:Lcom/android/settings_ex/notification/SettingPref;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->PREFS:[Lcom/android/settings_ex/notification/SettingPref;

    .line 293
    new-instance v0, Lcom/android/settings_ex/notification/ZenModePrioritySettings$7;

    invoke-direct {v0}, Lcom/android/settings_ex/notification/ZenModePrioritySettings$7;-><init>()V

    sput-object v0, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/settings_ex/notification/ZenModeSettingsBase;-><init>()V

    .line 71
    new-instance v0, Lcom/android/settings_ex/notification/ZenModePrioritySettings$PrefSettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/notification/ZenModePrioritySettings$PrefSettingsObserver;-><init>(Lcom/android/settings_ex/notification/ZenModePrioritySettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->mPrefSettingsObserver:Lcom/android/settings_ex/notification/ZenModePrioritySettings$PrefSettingsObserver;

    .line 264
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/notification/ZenModePrioritySettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/ZenModePrioritySettings;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->mDisableListeners:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/notification/ZenModePrioritySettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/ZenModePrioritySettings;

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()[Lcom/android/settings_ex/notification/SettingPref;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->PREFS:[Lcom/android/settings_ex/notification/SettingPref;

    return-object v0
.end method

.method private static addSources(Lcom/android/settings_ex/DropDownPreference;)V
    .locals 2
    .param p0, "pref"    # Lcom/android/settings_ex/DropDownPreference;

    .prologue
    .line 243
    const v0, 0x7f0c0c8b

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 244
    const v0, 0x7f0c0c8c

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 245
    const v0, 0x7f0c0c8d

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 246
    const v0, 0x7f0c0c8e

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 247
    return-void
.end method

.method private updateControls()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 224
    iput-boolean v3, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->mDisableListeners:Z

    .line 225
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->mCalls:Lcom/android/settings_ex/DropDownPreference;

    if-eqz v0, :cond_0

    .line 226
    iget-object v4, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->mCalls:Lcom/android/settings_ex/DropDownPreference;

    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v0, v0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/android/settings_ex/DropDownPreference;->setSelectedValue(Ljava/lang/Object;)V

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->mMessages:Lcom/android/settings_ex/DropDownPreference;

    iget-object v4, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v4, v4, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    if-eqz v4, :cond_1

    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v1, v1, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DropDownPreference;->setSelectedValue(Ljava/lang/Object;)V

    .line 229
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->mReminders:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v1, v1, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 230
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->mEvents:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v1, v1, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 231
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->mRepeatCallers:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v1, v1, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 232
    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->mRepeatCallers:Landroid/preference/SwitchPreference;

    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v0, v0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    if-eqz v0, :cond_4

    :cond_2
    move v0, v3

    :goto_1
    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 234
    iput-boolean v2, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->mDisableListeners:Z

    .line 235
    return-void

    :cond_3
    move v0, v1

    .line 226
    goto :goto_0

    :cond_4
    move v0, v2

    .line 232
    goto :goto_1
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 239
    const/16 v0, 0x8d

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 85
    invoke-super {p0, p1}, Lcom/android/settings_ex/notification/ZenModeSettingsBase;->onCreate(Landroid/os/Bundle;)V

    .line 86
    const v1, 0x7f080079

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->addPreferencesFromResource(I)V

    .line 87
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 89
    .local v0, "root":Landroid/preference/PreferenceScreen;
    const-string v1, "reminders"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->mReminders:Landroid/preference/SwitchPreference;

    .line 90
    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->mReminders:Landroid/preference/SwitchPreference;

    new-instance v4, Lcom/android/settings_ex/notification/ZenModePrioritySettings$1;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/notification/ZenModePrioritySettings$1;-><init>(Lcom/android/settings_ex/notification/ZenModePrioritySettings;)V

    invoke-virtual {v1, v4}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 104
    const-string v1, "events"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->mEvents:Landroid/preference/SwitchPreference;

    .line 105
    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->mEvents:Landroid/preference/SwitchPreference;

    new-instance v4, Lcom/android/settings_ex/notification/ZenModePrioritySettings$2;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/notification/ZenModePrioritySettings$2;-><init>(Lcom/android/settings_ex/notification/ZenModePrioritySettings;)V

    invoke-virtual {v1, v4}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 119
    const-string v1, "favourite_contacts_settings"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->mFavouritePreference:Landroid/preference/Preference;

    .line 120
    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->mFavouritePreference:Landroid/preference/Preference;

    new-instance v4, Lcom/android/settings_ex/notification/ZenModePrioritySettings$3;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/notification/ZenModePrioritySettings$3;-><init>(Lcom/android/settings_ex/notification/ZenModePrioritySettings;)V

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 137
    const-string v1, "messages"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/DropDownPreference;

    iput-object v1, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->mMessages:Lcom/android/settings_ex/DropDownPreference;

    .line 138
    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->mMessages:Lcom/android/settings_ex/DropDownPreference;

    invoke-static {v1}, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->addSources(Lcom/android/settings_ex/DropDownPreference;)V

    .line 139
    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->mMessages:Lcom/android/settings_ex/DropDownPreference;

    new-instance v4, Lcom/android/settings_ex/notification/ZenModePrioritySettings$4;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/notification/ZenModePrioritySettings$4;-><init>(Lcom/android/settings_ex/notification/ZenModePrioritySettings;)V

    invoke-virtual {v1, v4}, Lcom/android/settings_ex/DropDownPreference;->setCallback(Lcom/android/settings_ex/DropDownPreference$Callback;)V

    .line 160
    const-string v1, "calls"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/DropDownPreference;

    iput-object v1, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->mCalls:Lcom/android/settings_ex/DropDownPreference;

    .line 161
    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->mCalls:Lcom/android/settings_ex/DropDownPreference;

    invoke-static {v1}, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->addSources(Lcom/android/settings_ex/DropDownPreference;)V

    .line 162
    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->mCalls:Lcom/android/settings_ex/DropDownPreference;

    new-instance v4, Lcom/android/settings_ex/notification/ZenModePrioritySettings$5;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/notification/ZenModePrioritySettings$5;-><init>(Lcom/android/settings_ex/notification/ZenModePrioritySettings;)V

    invoke-virtual {v1, v4}, Lcom/android/settings_ex/DropDownPreference;->setCallback(Lcom/android/settings_ex/DropDownPreference$Callback;)V

    .line 183
    const-string v1, "repeat_callers"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->mRepeatCallers:Landroid/preference/SwitchPreference;

    .line 184
    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->mRepeatCallers:Landroid/preference/SwitchPreference;

    iget-object v4, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->mContext:Landroid/content/Context;

    const v5, 0x7f0c0c94

    new-array v6, v2, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10e0093

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->mRepeatCallers:Landroid/preference/SwitchPreference;

    new-instance v4, Lcom/android/settings_ex/notification/ZenModePrioritySettings$6;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/notification/ZenModePrioritySettings$6;-><init>(Lcom/android/settings_ex/notification/ZenModePrioritySettings;)V

    invoke-virtual {v1, v4}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 203
    const-string v1, "suspend_notification"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->removePreference(Ljava/lang/String;)V

    .line 205
    invoke-direct {p0}, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->updateControls()V

    .line 206
    const-string v1, "led_switch"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->mLedSwitch:Landroid/preference/SwitchPreference;

    .line 207
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "oem_acc_breath_light"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->mNotifyLightEnable:I

    .line 208
    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->mLedSwitch:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_0

    .line 209
    iget-object v4, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->mLedSwitch:Landroid/preference/SwitchPreference;

    iget v1, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->mNotifyLightEnable:I

    if-ne v1, v2, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 211
    :cond_0
    return-void

    :cond_1
    move v1, v3

    .line 209
    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->mPrefSettingsObserver:Lcom/android/settings_ex/notification/ZenModePrioritySettings$PrefSettingsObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/notification/ZenModePrioritySettings$PrefSettingsObserver;->register(Z)V

    .line 261
    invoke-super {p0}, Lcom/android/settings_ex/notification/ZenModeSettingsBase;->onPause()V

    .line 262
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    .line 251
    invoke-super {p0}, Lcom/android/settings_ex/notification/ZenModeSettingsBase;->onResume()V

    .line 252
    sget-object v0, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->PREFS:[Lcom/android/settings_ex/notification/SettingPref;

    .local v0, "arr$":[Lcom/android/settings_ex/notification/SettingPref;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 253
    .local v3, "pref":Lcom/android/settings_ex/notification/SettingPref;
    invoke-virtual {v3, p0}, Lcom/android/settings_ex/notification/SettingPref;->init(Lcom/android/settings_ex/SettingsPreferenceFragment;)Landroid/preference/Preference;

    .line 252
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 255
    .end local v3    # "pref":Lcom/android/settings_ex/notification/SettingPref;
    :cond_0
    iget-object v4, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->mPrefSettingsObserver:Lcom/android/settings_ex/notification/ZenModePrioritySettings$PrefSettingsObserver;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/settings_ex/notification/ZenModePrioritySettings$PrefSettingsObserver;->register(Z)V

    .line 256
    return-void
.end method

.method protected onZenModeChanged()V
    .locals 0

    .prologue
    .line 216
    return-void
.end method

.method protected onZenModeConfigChanged()V
    .locals 0

    .prologue
    .line 220
    invoke-direct {p0}, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->updateControls()V

    .line 221
    return-void
.end method
