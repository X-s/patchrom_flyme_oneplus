.class public Lcom/android/settings_ex/notification/ZenModePrioritySettings;
.super Lcom/android/settings_ex/notification/ZenModeSettingsBase;
.source "ZenModePrioritySettings.java"

# interfaces
.implements Lcom/android/settings_ex/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/notification/ZenModePrioritySettings$1;,
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

.field private static final OEM_FAVORITES_PEOPLE:Ljava/lang/String; = "com.oneplus.contacts.action.FAVORITES_PEOPLE"

.field private static final PREFS:[Lcom/android/settings_ex/notification/SettingPref;

.field private static final PREF_LED_LIGHT_SETTING:Lcom/android/settings_ex/notification/SettingPref;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

.field private static final SOURCE_NONE:I = -0x1


# instance fields
.field private mCalls:Landroid/support/v7/preference/DropDownPreference;

.field private mDisableListeners:Z

.field private mEvents:Landroid/support/v14/preference/SwitchPreference;

.field private mFavouritePreference:Landroid/support/v7/preference/Preference;

.field private mLedSwitch:Landroid/support/v14/preference/SwitchPreference;

.field private mMessages:Landroid/support/v7/preference/DropDownPreference;

.field private mNotifyLightEnable:I

.field private mPolicy:Landroid/app/NotificationManager$Policy;

.field private mPrefSettingsObserver:Lcom/android/settings_ex/notification/ZenModePrioritySettings$PrefSettingsObserver;

.field private mReminders:Landroid/support/v14/preference/SwitchPreference;

.field private mRepeatCallers:Landroid/support/v14/preference/SwitchPreference;


# direct methods
.method static synthetic -get0()[Lcom/android/settings_ex/notification/SettingPref;
    .locals 1

    sget-object v0, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->PREFS:[Lcom/android/settings_ex/notification/SettingPref;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings_ex/notification/ZenModePrioritySettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->mDisableListeners:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/settings_ex/notification/ZenModePrioritySettings;)Landroid/app/NotificationManager$Policy;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings_ex/notification/ZenModePrioritySettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/settings_ex/notification/ZenModePrioritySettings;ZI)I
    .locals 1
    .param p1, "allow"    # Z
    .param p2, "categoryType"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->getNewPriorityCategories(ZI)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/settings_ex/notification/ZenModePrioritySettings;IIII)V
    .locals 0
    .param p1, "priorityCategories"    # I
    .param p2, "priorityCallSenders"    # I
    .param p3, "priorityMessageSenders"    # I
    .param p4, "suppressedVisualEffects"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->savePolicy(IIII)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 81
    new-instance v0, Lcom/android/settings_ex/notification/SettingPref;

    .line 82
    const-string/jumbo v2, "led_switch"

    const-string/jumbo v3, "oem_allow_led_light"

    .line 81
    new-array v5, v4, [I

    .line 82
    const/4 v1, 0x2

    .line 81
    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/notification/SettingPref;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->PREF_LED_LIGHT_SETTING:Lcom/android/settings_ex/notification/SettingPref;

    .line 83
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/settings_ex/notification/SettingPref;

    .line 84
    sget-object v1, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->PREF_LED_LIGHT_SETTING:Lcom/android/settings_ex/notification/SettingPref;

    aput-object v1, v0, v4

    .line 83
    sput-object v0, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->PREFS:[Lcom/android/settings_ex/notification/SettingPref;

    .line 328
    new-instance v0, Lcom/android/settings_ex/notification/ZenModePrioritySettings$1;

    invoke-direct {v0}, Lcom/android/settings_ex/notification/ZenModePrioritySettings$1;-><init>()V

    sput-object v0, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    .line 55
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/settings_ex/notification/ZenModeSettingsBase;-><init>()V

    .line 79
    new-instance v0, Lcom/android/settings_ex/notification/ZenModePrioritySettings$PrefSettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/notification/ZenModePrioritySettings$PrefSettingsObserver;-><init>(Lcom/android/settings_ex/notification/ZenModePrioritySettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->mPrefSettingsObserver:Lcom/android/settings_ex/notification/ZenModePrioritySettings$PrefSettingsObserver;

    .line 55
    return-void
.end method

.method private static addSources(Landroid/support/v7/preference/DropDownPreference;)V
    .locals 8
    .param p0, "pref"    # Landroid/support/v7/preference/DropDownPreference;

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 292
    new-array v0, v7, [Ljava/lang/CharSequence;

    .line 293
    invoke-virtual {p0}, Landroid/support/v7/preference/DropDownPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0e97

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 294
    invoke-virtual {p0}, Landroid/support/v7/preference/DropDownPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0e98

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 295
    invoke-virtual {p0}, Landroid/support/v7/preference/DropDownPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0e99

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 296
    invoke-virtual {p0}, Landroid/support/v7/preference/DropDownPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0e9a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    .line 292
    invoke-virtual {p0, v0}, Landroid/support/v7/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 298
    new-array v0, v7, [Ljava/lang/CharSequence;

    .line 299
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 300
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 301
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 302
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    .line 298
    invoke-virtual {p0, v0}, Landroid/support/v7/preference/DropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 291
    return-void
.end method

.method private getNewPriorityCategories(ZI)I
    .locals 2
    .param p1, "allow"    # Z
    .param p2, "categoryType"    # I

    .prologue
    .line 311
    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v0, v1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    .line 312
    .local v0, "priorityCategories":I
    if-eqz p1, :cond_0

    .line 313
    or-int/2addr v0, p2

    .line 317
    :goto_0
    return v0

    .line 315
    :cond_0
    not-int v1, p2

    and-int/2addr v0, v1

    goto :goto_0
.end method

.method private isPriorityCategoryEnabled(I)Z
    .locals 2
    .param p1, "categoryType"    # I

    .prologue
    const/4 v0, 0x0

    .line 307
    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v1, v1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private savePolicy(IIII)V
    .locals 2
    .param p1, "priorityCategories"    # I
    .param p2, "priorityCallSenders"    # I
    .param p3, "priorityMessageSenders"    # I
    .param p4, "suppressedVisualEffects"    # I

    .prologue
    .line 322
    new-instance v0, Landroid/app/NotificationManager$Policy;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/app/NotificationManager$Policy;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    .line 324
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->setNotificationPolicy(Landroid/app/NotificationManager$Policy;)V

    .line 321
    return-void
.end method

.method private updateControls()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v1, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 224
    iput-boolean v2, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->mDisableListeners:Z

    .line 225
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->mCalls:Landroid/support/v7/preference/DropDownPreference;

    if-eqz v0, :cond_0

    .line 226
    iget-object v4, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->mCalls:Landroid/support/v7/preference/DropDownPreference;

    .line 227
    invoke-direct {p0, v5}, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->isPriorityCategoryEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 228
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v0, v0, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    .line 226
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/support/v7/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->mMessages:Landroid/support/v7/preference/DropDownPreference;

    .line 231
    const/4 v4, 0x4

    invoke-direct {p0, v4}, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->isPriorityCategoryEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 232
    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v1, v1, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    .line 230
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->mReminders:Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {p0, v2}, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->isPriorityCategoryEnabled(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 234
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->mEvents:Landroid/support/v14/preference/SwitchPreference;

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->isPriorityCategoryEnabled(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 235
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->mRepeatCallers:Landroid/support/v14/preference/SwitchPreference;

    .line 236
    const/16 v1, 0x10

    invoke-direct {p0, v1}, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->isPriorityCategoryEnabled(I)Z

    move-result v1

    .line 235
    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 237
    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->mRepeatCallers:Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {p0, v5}, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->isPriorityCategoryEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 238
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v0, v0, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    if-eqz v0, :cond_4

    move v0, v2

    .line 237
    :goto_1
    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SwitchPreference;->setVisible(Z)V

    .line 239
    iput-boolean v3, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->mDisableListeners:Z

    .line 223
    return-void

    :cond_2
    move v0, v1

    .line 228
    goto :goto_0

    :cond_3
    move v0, v2

    .line 237
    goto :goto_1

    :cond_4
    move v0, v3

    .line 238
    goto :goto_1
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 288
    const/16 v0, 0x8d

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 89
    invoke-super {p0, p1}, Lcom/android/settings_ex/notification/ZenModeSettingsBase;->onCreate(Landroid/os/Bundle;)V

    .line 90
    const v1, 0x7f0800ab

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->addPreferencesFromResource(I)V

    .line 91
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    .line 93
    .local v0, "root":Landroid/support/v7/preference/PreferenceScreen;
    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    .line 95
    const-string/jumbo v1, "reminders"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->mReminders:Landroid/support/v14/preference/SwitchPreference;

    .line 96
    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->mReminders:Landroid/support/v14/preference/SwitchPreference;

    new-instance v4, Lcom/android/settings_ex/notification/ZenModePrioritySettings$2;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/notification/ZenModePrioritySettings$2;-><init>(Lcom/android/settings_ex/notification/ZenModePrioritySettings;)V

    invoke-virtual {v1, v4}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 110
    const-string/jumbo v1, "events"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->mEvents:Landroid/support/v14/preference/SwitchPreference;

    .line 111
    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->mEvents:Landroid/support/v14/preference/SwitchPreference;

    new-instance v4, Lcom/android/settings_ex/notification/ZenModePrioritySettings$3;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/notification/ZenModePrioritySettings$3;-><init>(Lcom/android/settings_ex/notification/ZenModePrioritySettings;)V

    invoke-virtual {v1, v4}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 125
    const-string/jumbo v1, "favourite_contacts_settings"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->mFavouritePreference:Landroid/support/v7/preference/Preference;

    .line 126
    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->mFavouritePreference:Landroid/support/v7/preference/Preference;

    .line 127
    new-instance v4, Lcom/android/settings_ex/notification/ZenModePrioritySettings$4;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/notification/ZenModePrioritySettings$4;-><init>(Lcom/android/settings_ex/notification/ZenModePrioritySettings;)V

    .line 126
    invoke-virtual {v1, v4}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 143
    const-string/jumbo v1, "messages"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/DropDownPreference;

    iput-object v1, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->mMessages:Landroid/support/v7/preference/DropDownPreference;

    .line 144
    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->mMessages:Landroid/support/v7/preference/DropDownPreference;

    invoke-static {v1}, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->addSources(Landroid/support/v7/preference/DropDownPreference;)V

    .line 145
    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->mMessages:Landroid/support/v7/preference/DropDownPreference;

    new-instance v4, Lcom/android/settings_ex/notification/ZenModePrioritySettings$5;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/notification/ZenModePrioritySettings$5;-><init>(Lcom/android/settings_ex/notification/ZenModePrioritySettings;)V

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/DropDownPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 164
    const-string/jumbo v1, "calls"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/DropDownPreference;

    iput-object v1, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->mCalls:Landroid/support/v7/preference/DropDownPreference;

    .line 165
    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->mCalls:Landroid/support/v7/preference/DropDownPreference;

    invoke-static {v1}, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->addSources(Landroid/support/v7/preference/DropDownPreference;)V

    .line 166
    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->mCalls:Landroid/support/v7/preference/DropDownPreference;

    new-instance v4, Lcom/android/settings_ex/notification/ZenModePrioritySettings$6;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/notification/ZenModePrioritySettings$6;-><init>(Lcom/android/settings_ex/notification/ZenModePrioritySettings;)V

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/DropDownPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 183
    const-string/jumbo v1, "repeat_callers"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->mRepeatCallers:Landroid/support/v14/preference/SwitchPreference;

    .line 184
    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->mRepeatCallers:Landroid/support/v14/preference/SwitchPreference;

    iget-object v4, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->mContext:Landroid/content/Context;

    new-array v5, v2, [Ljava/lang/Object;

    .line 185
    iget-object v6, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e009a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    .line 184
    const v6, 0x7f0e0ea1

    invoke-virtual {v4, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/support/v14/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->mRepeatCallers:Landroid/support/v14/preference/SwitchPreference;

    new-instance v4, Lcom/android/settings_ex/notification/ZenModePrioritySettings$7;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/notification/ZenModePrioritySettings$7;-><init>(Lcom/android/settings_ex/notification/ZenModePrioritySettings;)V

    invoke-virtual {v1, v4}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 202
    invoke-direct {p0}, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->updateControls()V

    .line 204
    const-string/jumbo v1, "led_switch"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->mLedSwitch:Landroid/support/v14/preference/SwitchPreference;

    .line 205
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "oem_acc_breath_light"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->mNotifyLightEnable:I

    .line 206
    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->mLedSwitch:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v1, :cond_0

    .line 207
    iget-object v4, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->mLedSwitch:Landroid/support/v14/preference/SwitchPreference;

    iget v1, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->mNotifyLightEnable:I

    if-ne v1, v2, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 88
    :cond_0
    return-void

    :cond_1
    move v1, v3

    .line 207
    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->mPrefSettingsObserver:Lcom/android/settings_ex/notification/ZenModePrioritySettings$PrefSettingsObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/notification/ZenModePrioritySettings$PrefSettingsObserver;->register(Z)V

    .line 254
    invoke-super {p0}, Lcom/android/settings_ex/notification/ZenModeSettingsBase;->onPause()V

    .line 252
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 244
    invoke-super {p0}, Lcom/android/settings_ex/notification/ZenModeSettingsBase;->onResume()V

    .line 245
    sget-object v2, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->PREFS:[Lcom/android/settings_ex/notification/SettingPref;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 246
    .local v0, "pref":Lcom/android/settings_ex/notification/SettingPref;
    invoke-virtual {v0, p0}, Lcom/android/settings_ex/notification/SettingPref;->init(Lcom/android/settings_ex/SettingsPreferenceFragment;)Landroid/support/v7/preference/Preference;

    .line 245
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 248
    .end local v0    # "pref":Lcom/android/settings_ex/notification/SettingPref;
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->mPrefSettingsObserver:Lcom/android/settings_ex/notification/ZenModePrioritySettings$PrefSettingsObserver;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/notification/ZenModePrioritySettings$PrefSettingsObserver;->register(Z)V

    .line 243
    return-void
.end method

.method protected onZenModeChanged()V
    .locals 0

    .prologue
    .line 213
    return-void
.end method

.method protected onZenModeConfigChanged()V
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    .line 220
    invoke-direct {p0}, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->updateControls()V

    .line 218
    return-void
.end method
