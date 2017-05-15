.class public Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "OPNotificationAdvancedSettings.java"

# interfaces
.implements Lcom/android/settings_ex/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings$SettingsObserver;
    }
.end annotation


# static fields
.field private static final KEY_LOCK_SCREEN_NOTIFICATIONS:Ljava/lang/String; = "lock_screen_notifications"

.field private static final KEY_NOTIFICATION_ACCESS:Ljava/lang/String; = "manage_notification_access"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/BaseSearchIndexProvider;

.field private static final TAG:Ljava/lang/String; = "OPNotificationAdvancedSettings"


# instance fields
.field private mLockscreen:Lcom/android/settings_ex/DropDownPreference;

.field private mLockscreenSelectedValue:I

.field private mNotificationAccess:Landroid/preference/Preference;

.field private mSecure:Z

.field private final mSettingsObserver:Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings$SettingsObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 205
    new-instance v0, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings$2;

    invoke-direct {v0}, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings$2;-><init>()V

    sput-object v0, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 40
    new-instance v0, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings$SettingsObserver;-><init>(Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;)V

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;->mSettingsObserver:Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings$SettingsObserver;

    .line 173
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;

    .prologue
    .line 30
    iget v0, p0, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;->mLockscreenSelectedValue:I

    return v0
.end method

.method static synthetic access$002(Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;
    .param p1, "x1"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;->mLockscreenSelectedValue:I

    return p1
.end method

.method static synthetic access$100(Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;->updateLockscreenNotifications()V

    return-void
.end method

.method private getLockscreenAllowPrivateNotifications()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 138
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_allow_private_notifications"

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

    .line 133
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_show_notifications"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private initLockscreenNotifications()V
    .locals 7

    .prologue
    const v6, 0x7f0c0c44

    const v5, 0x7f0c0c43

    const v4, 0x7f0c0c42

    .line 58
    const-string v2, "lock_screen_notifications"

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/DropDownPreference;

    iput-object v2, p0, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;->mLockscreen:Lcom/android/settings_ex/DropDownPreference;

    .line 59
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;->mLockscreen:Lcom/android/settings_ex/DropDownPreference;

    if-nez v2, :cond_0

    .line 60
    const-string v2, "OPNotificationAdvancedSettings"

    const-string v3, "Preference not found: lock_screen_notifications"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :goto_0
    return-void

    .line 64
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;->isSecureNotificationsDisabled()Z

    move-result v0

    .line 65
    .local v0, "isSecureNotificationsDisabled":Z
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;->isUnredactedNotificationsDisabled()Z

    move-result v1

    .line 66
    .local v1, "isUnredactedNotificationsDisabled":Z
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    .line 68
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;->mLockscreen:Lcom/android/settings_ex/DropDownPreference;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/android/settings_ex/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 72
    :cond_1
    iget-boolean v2, p0, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;->mSecure:Z

    if-eqz v2, :cond_2

    if-nez v0, :cond_2

    .line 73
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;->mLockscreen:Lcom/android/settings_ex/DropDownPreference;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Lcom/android/settings_ex/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 77
    :cond_2
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;->mLockscreen:Lcom/android/settings_ex/DropDownPreference;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Lcom/android/settings_ex/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 79
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;->updateLockscreenNotifications()V

    .line 80
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;->mLockscreen:Lcom/android/settings_ex/DropDownPreference;

    invoke-virtual {v2}, Lcom/android/settings_ex/DropDownPreference;->getItemCount()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    .line 81
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;->mLockscreen:Lcom/android/settings_ex/DropDownPreference;

    new-instance v3, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings$1;

    invoke-direct {v3, p0}, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings$1;-><init>(Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;)V

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/DropDownPreference;->setCallback(Lcom/android/settings_ex/DropDownPreference$Callback;)V

    goto :goto_0

    .line 103
    :cond_3
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;->mLockscreen:Lcom/android/settings_ex/DropDownPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/DropDownPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private isSecureNotificationsDisabled()Z
    .locals 2

    .prologue
    .line 108
    const-string v1, "device_policy"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 109
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;)I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isUnredactedNotificationsDisabled()Z
    .locals 2

    .prologue
    .line 114
    const-string v1, "device_policy"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 115
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;)I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private refreshNotificationListeners()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 143
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;->mNotificationAccess:Landroid/preference/Preference;

    if-eqz v1, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/notification/NotificationAccessSettings;->getEnabledListenersCount(Landroid/content/Context;)I

    move-result v0

    .line 146
    .local v0, "n":I
    if-nez v0, :cond_1

    .line 147
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;->mNotificationAccess:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0c56

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 158
    .end local v0    # "n":I
    :cond_0
    :goto_0
    return-void

    .line 150
    .restart local v0    # "n":I
    :cond_1
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;->mNotificationAccess:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f13000b

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateLockscreenNotifications()V
    .locals 4

    .prologue
    .line 120
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;->mLockscreen:Lcom/android/settings_ex/DropDownPreference;

    if-nez v2, :cond_0

    .line 130
    :goto_0
    return-void

    .line 123
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;->getLockscreenNotificationsEnabled()Z

    move-result v1

    .line 124
    .local v1, "enabled":Z
    iget-boolean v2, p0, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;->mSecure:Z

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;->getLockscreenAllowPrivateNotifications()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 126
    .local v0, "allowPrivate":Z
    :goto_1
    if-nez v1, :cond_3

    const v2, 0x7f0c0c44

    :goto_2
    iput v2, p0, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;->mLockscreenSelectedValue:I

    .line 129
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;->mLockscreen:Lcom/android/settings_ex/DropDownPreference;

    iget v3, p0, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;->mLockscreenSelectedValue:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/DropDownPreference;->setSelectedValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 124
    .end local v0    # "allowPrivate":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 126
    .restart local v0    # "allowPrivate":Z
    :cond_3
    if-eqz v0, :cond_4

    const v2, 0x7f0c0c42

    goto :goto_2

    :cond_4
    const v2, 0x7f0c0c43

    goto :goto_2
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 44
    const/16 v0, 0x85

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const v0, 0x7f08003b

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;->addPreferencesFromResource(I)V

    .line 51
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;->mSecure:Z

    .line 53
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;->initLockscreenNotifications()V

    .line 54
    const-string v0, "manage_notification_access"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;->mNotificationAccess:Landroid/preference/Preference;

    .line 55
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;->mSettingsObserver:Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings$SettingsObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings$SettingsObserver;->register(Z)V

    .line 170
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 171
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 162
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 163
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;->refreshNotificationListeners()V

    .line 164
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;->mSettingsObserver:Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings$SettingsObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings$SettingsObserver;->register(Z)V

    .line 165
    return-void
.end method
