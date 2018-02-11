.class public Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "OPNotificationAdvancedSettings.java"

# interfaces
.implements Lcom/android/settings_ex/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings$1;,
        Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings$SettingsObserver;
    }
.end annotation


# static fields
.field private static final KEY_LOCK_SCREEN_NOTIFICATIONS:Ljava/lang/String; = "lock_screen_notifications"

.field private static final KEY_NOTIFICATION_ACCESS:Ljava/lang/String; = "manage_notification_access"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/BaseSearchIndexProvider;

.field private static final TAG:Ljava/lang/String; = "OPNotificationAdvancedSettings"


# instance fields
.field private mLockscreen:Landroid/support/v7/preference/DropDownPreference;

.field private mLockscreenSelectedValue:I

.field private mNotificationAccess:Landroid/support/v7/preference/Preference;

.field private mSecure:Z

.field private final mSettingsObserver:Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings$SettingsObserver;


# direct methods
.method static synthetic -get0(Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;)I
    .locals 1

    iget v0, p0, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;->mLockscreenSelectedValue:I

    return v0
.end method

.method static synthetic -set0(Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;I)I
    .locals 0

    iput p1, p0, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;->mLockscreenSelectedValue:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;->updateLockscreenNotifications()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 210
    new-instance v0, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings$1;

    invoke-direct {v0}, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings$1;-><init>()V

    sput-object v0, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/BaseSearchIndexProvider;

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 44
    new-instance v0, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings$SettingsObserver;-><init>(Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;)V

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;->mSettingsObserver:Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings$SettingsObserver;

    .line 34
    return-void
.end method

.method private getLockscreenAllowPrivateNotifications()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 143
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 144
    const-string/jumbo v2, "lock_screen_allow_private_notifications"

    .line 143
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private getLockscreenNotificationsEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 138
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 139
    const-string/jumbo v2, "lock_screen_show_notifications"

    .line 138
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private initLockscreenNotifications()V
    .locals 10

    .prologue
    const v9, 0x7f0e0e6c

    const v8, 0x7f0e0e6b

    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 62
    const-string/jumbo v2, "lock_screen_notifications"

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/DropDownPreference;

    iput-object v2, p0, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;->mLockscreen:Landroid/support/v7/preference/DropDownPreference;

    .line 63
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;->mLockscreen:Landroid/support/v7/preference/DropDownPreference;

    if-nez v2, :cond_0

    .line 64
    const-string/jumbo v2, "OPNotificationAdvancedSettings"

    const-string/jumbo v3, "Preference not found: lock_screen_notifications"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return-void

    .line 68
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;->isSecureNotificationsDisabled()Z

    move-result v0

    .line 69
    .local v0, "isSecureNotificationsDisabled":Z
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;->isUnredactedNotificationsDisabled()Z

    move-result v1

    .line 70
    .local v1, "isUnredactedNotificationsDisabled":Z
    if-nez v0, :cond_1

    .line 71
    if-eqz v1, :cond_3

    .line 76
    :cond_1
    :goto_0
    iget-boolean v2, p0, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;->mSecure:Z

    if-eqz v2, :cond_2

    if-eqz v0, :cond_4

    .line 81
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;->mLockscreen:Landroid/support/v7/preference/DropDownPreference;

    new-array v3, v5, [Ljava/lang/CharSequence;

    .line 82
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0e6d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 83
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0e6d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    .line 81
    invoke-virtual {v2, v3}, Landroid/support/v7/preference/DropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 84
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;->updateLockscreenNotifications()V

    .line 85
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;->mLockscreen:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v2}, Landroid/support/v7/preference/DropDownPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    array-length v2, v2

    if-le v2, v7, :cond_5

    .line 86
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;->mLockscreen:Landroid/support/v7/preference/DropDownPreference;

    new-instance v3, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings$2;

    invoke-direct {v3, p0}, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings$2;-><init>(Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;)V

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/DropDownPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 61
    :goto_2
    return-void

    .line 72
    :cond_3
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;->mLockscreen:Landroid/support/v7/preference/DropDownPreference;

    new-array v3, v5, [Ljava/lang/CharSequence;

    .line 73
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 74
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    .line 72
    invoke-virtual {v2, v3}, Landroid/support/v7/preference/DropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 77
    :cond_4
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;->mLockscreen:Landroid/support/v7/preference/DropDownPreference;

    new-array v3, v5, [Ljava/lang/CharSequence;

    .line 78
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 79
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    .line 77
    invoke-virtual {v2, v3}, Landroid/support/v7/preference/DropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 108
    :cond_5
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;->mLockscreen:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v2, v6}, Landroid/support/v7/preference/DropDownPreference;->setEnabled(Z)V

    goto :goto_2
.end method

.method private isSecureNotificationsDisabled()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 113
    const-string/jumbo v2, "device_policy"

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 114
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;)I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 114
    :cond_0
    return v1
.end method

.method private isUnredactedNotificationsDisabled()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 119
    const-string/jumbo v2, "device_policy"

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 120
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;)I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 120
    :cond_0
    return v1
.end method

.method private refreshNotificationListeners()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 148
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;->mNotificationAccess:Landroid/support/v7/preference/Preference;

    if-eqz v1, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 149
    invoke-static {v1}, Lcom/android/settings_ex/notification/NotificationAccessSettings;->getEnabledListenersCount(Landroid/content/Context;)I

    move-result v0

    .line 151
    .local v0, "n":I
    if-nez v0, :cond_1

    .line 152
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;->mNotificationAccess:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 153
    const v3, 0x7f0e0e83

    .line 152
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 147
    .end local v0    # "n":I
    :cond_0
    :goto_0
    return-void

    .line 155
    .restart local v0    # "n":I
    :cond_1
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;->mNotificationAccess:Landroid/support/v7/preference/Preference;

    .line 157
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 160
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    .line 159
    const v4, 0x7f130018

    .line 157
    invoke-virtual {v2, v4, v0, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 156
    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 155
    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateLockscreenNotifications()V
    .locals 3

    .prologue
    .line 125
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;->mLockscreen:Landroid/support/v7/preference/DropDownPreference;

    if-nez v2, :cond_0

    .line 126
    return-void

    .line 128
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;->getLockscreenNotificationsEnabled()Z

    move-result v1

    .line 129
    .local v1, "enabled":Z
    iget-boolean v2, p0, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;->mSecure:Z

    if-eqz v2, :cond_1

    .line 130
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;->getLockscreenAllowPrivateNotifications()Z

    move-result v0

    .line 131
    :goto_0
    if-nez v1, :cond_2

    const v2, 0x7f0e0e6d

    :goto_1
    iput v2, p0, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;->mLockscreenSelectedValue:I

    .line 124
    return-void

    .line 129
    :cond_1
    const/4 v0, 0x1

    .local v0, "allowPrivate":Z
    goto :goto_0

    .line 132
    .end local v0    # "allowPrivate":Z
    :cond_2
    if-eqz v0, :cond_3

    const v2, 0x7f0e0e6b

    goto :goto_1

    .line 133
    :cond_3
    const v2, 0x7f0e0e6c

    goto :goto_1
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 48
    const/16 v0, 0x270f

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const v0, 0x7f08004f

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;->addPreferencesFromResource(I)V

    .line 55
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;->mSecure:Z

    .line 57
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;->initLockscreenNotifications()V

    .line 58
    const-string/jumbo v0, "manage_notification_access"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;->mNotificationAccess:Landroid/support/v7/preference/Preference;

    .line 52
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;->mSettingsObserver:Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings$SettingsObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings$SettingsObserver;->register(Z)V

    .line 175
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 173
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 167
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 168
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;->refreshNotificationListeners()V

    .line 169
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;->mSettingsObserver:Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings$SettingsObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings$SettingsObserver;->register(Z)V

    .line 166
    return-void
.end method
